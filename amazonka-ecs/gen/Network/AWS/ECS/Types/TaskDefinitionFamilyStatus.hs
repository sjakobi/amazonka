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
-- Module      : Network.AWS.ECS.Types.TaskDefinitionFamilyStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskDefinitionFamilyStatus
  ( TaskDefinitionFamilyStatus
      ( ..,
        TaskDefinitionFamilyStatusACTIVE,
        TaskDefinitionFamilyStatusALL,
        TaskDefinitionFamilyStatusINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskDefinitionFamilyStatus = TaskDefinitionFamilyStatus'
  { fromTaskDefinitionFamilyStatus ::
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

pattern TaskDefinitionFamilyStatusACTIVE :: TaskDefinitionFamilyStatus
pattern TaskDefinitionFamilyStatusACTIVE = TaskDefinitionFamilyStatus' "ACTIVE"

pattern TaskDefinitionFamilyStatusALL :: TaskDefinitionFamilyStatus
pattern TaskDefinitionFamilyStatusALL = TaskDefinitionFamilyStatus' "ALL"

pattern TaskDefinitionFamilyStatusINACTIVE :: TaskDefinitionFamilyStatus
pattern TaskDefinitionFamilyStatusINACTIVE = TaskDefinitionFamilyStatus' "INACTIVE"

{-# COMPLETE
  TaskDefinitionFamilyStatusACTIVE,
  TaskDefinitionFamilyStatusALL,
  TaskDefinitionFamilyStatusINACTIVE,
  TaskDefinitionFamilyStatus'
  #-}

instance Prelude.FromText TaskDefinitionFamilyStatus where
  parser = TaskDefinitionFamilyStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskDefinitionFamilyStatus where
  toText (TaskDefinitionFamilyStatus' x) = x

instance Prelude.Hashable TaskDefinitionFamilyStatus

instance Prelude.NFData TaskDefinitionFamilyStatus

instance Prelude.ToByteString TaskDefinitionFamilyStatus

instance Prelude.ToQuery TaskDefinitionFamilyStatus

instance Prelude.ToHeader TaskDefinitionFamilyStatus

instance Prelude.ToJSON TaskDefinitionFamilyStatus where
  toJSON = Prelude.toJSONText
