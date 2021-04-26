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
-- Module      : Network.AWS.ECS.Types.TaskDefinitionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskDefinitionStatus
  ( TaskDefinitionStatus
      ( ..,
        TaskDefinitionStatusACTIVE,
        TaskDefinitionStatusINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskDefinitionStatus = TaskDefinitionStatus'
  { fromTaskDefinitionStatus ::
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

pattern TaskDefinitionStatusACTIVE :: TaskDefinitionStatus
pattern TaskDefinitionStatusACTIVE = TaskDefinitionStatus' "ACTIVE"

pattern TaskDefinitionStatusINACTIVE :: TaskDefinitionStatus
pattern TaskDefinitionStatusINACTIVE = TaskDefinitionStatus' "INACTIVE"

{-# COMPLETE
  TaskDefinitionStatusACTIVE,
  TaskDefinitionStatusINACTIVE,
  TaskDefinitionStatus'
  #-}

instance Prelude.FromText TaskDefinitionStatus where
  parser = TaskDefinitionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskDefinitionStatus where
  toText (TaskDefinitionStatus' x) = x

instance Prelude.Hashable TaskDefinitionStatus

instance Prelude.NFData TaskDefinitionStatus

instance Prelude.ToByteString TaskDefinitionStatus

instance Prelude.ToQuery TaskDefinitionStatus

instance Prelude.ToHeader TaskDefinitionStatus

instance Prelude.ToJSON TaskDefinitionStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TaskDefinitionStatus where
  parseJSON = Prelude.parseJSONText "TaskDefinitionStatus"
