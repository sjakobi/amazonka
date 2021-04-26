{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TaskDefinitionPlacementConstraintType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskDefinitionPlacementConstraintType
  ( TaskDefinitionPlacementConstraintType
      ( ..,
        TaskDefinitionPlacementConstraintTypeMemberOf
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskDefinitionPlacementConstraintType = TaskDefinitionPlacementConstraintType'
  { fromTaskDefinitionPlacementConstraintType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern TaskDefinitionPlacementConstraintTypeMemberOf :: TaskDefinitionPlacementConstraintType
pattern TaskDefinitionPlacementConstraintTypeMemberOf = TaskDefinitionPlacementConstraintType' "memberOf"

{-# COMPLETE
  TaskDefinitionPlacementConstraintTypeMemberOf,
  TaskDefinitionPlacementConstraintType'
  #-}

instance Prelude.FromText TaskDefinitionPlacementConstraintType where
  parser = TaskDefinitionPlacementConstraintType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskDefinitionPlacementConstraintType where
  toText (TaskDefinitionPlacementConstraintType' x) = x

instance Prelude.Hashable TaskDefinitionPlacementConstraintType

instance Prelude.NFData TaskDefinitionPlacementConstraintType

instance Prelude.ToByteString TaskDefinitionPlacementConstraintType

instance Prelude.ToQuery TaskDefinitionPlacementConstraintType

instance Prelude.ToHeader TaskDefinitionPlacementConstraintType

instance Prelude.ToJSON TaskDefinitionPlacementConstraintType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TaskDefinitionPlacementConstraintType where
  parseJSON = Prelude.parseJSONText "TaskDefinitionPlacementConstraintType"
