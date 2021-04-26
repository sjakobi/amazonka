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
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowTaskType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.MaintenanceWindowTaskType
  ( MaintenanceWindowTaskType
      ( ..,
        MaintenanceWindowTaskTypeAUTOMATION,
        MaintenanceWindowTaskTypeLAMBDA,
        MaintenanceWindowTaskTypeRUNCOMMAND,
        MaintenanceWindowTaskTypeSTEPFUNCTIONS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MaintenanceWindowTaskType = MaintenanceWindowTaskType'
  { fromMaintenanceWindowTaskType ::
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

pattern MaintenanceWindowTaskTypeAUTOMATION :: MaintenanceWindowTaskType
pattern MaintenanceWindowTaskTypeAUTOMATION = MaintenanceWindowTaskType' "AUTOMATION"

pattern MaintenanceWindowTaskTypeLAMBDA :: MaintenanceWindowTaskType
pattern MaintenanceWindowTaskTypeLAMBDA = MaintenanceWindowTaskType' "LAMBDA"

pattern MaintenanceWindowTaskTypeRUNCOMMAND :: MaintenanceWindowTaskType
pattern MaintenanceWindowTaskTypeRUNCOMMAND = MaintenanceWindowTaskType' "RUN_COMMAND"

pattern MaintenanceWindowTaskTypeSTEPFUNCTIONS :: MaintenanceWindowTaskType
pattern MaintenanceWindowTaskTypeSTEPFUNCTIONS = MaintenanceWindowTaskType' "STEP_FUNCTIONS"

{-# COMPLETE
  MaintenanceWindowTaskTypeAUTOMATION,
  MaintenanceWindowTaskTypeLAMBDA,
  MaintenanceWindowTaskTypeRUNCOMMAND,
  MaintenanceWindowTaskTypeSTEPFUNCTIONS,
  MaintenanceWindowTaskType'
  #-}

instance Prelude.FromText MaintenanceWindowTaskType where
  parser = MaintenanceWindowTaskType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MaintenanceWindowTaskType where
  toText (MaintenanceWindowTaskType' x) = x

instance Prelude.Hashable MaintenanceWindowTaskType

instance Prelude.NFData MaintenanceWindowTaskType

instance Prelude.ToByteString MaintenanceWindowTaskType

instance Prelude.ToQuery MaintenanceWindowTaskType

instance Prelude.ToHeader MaintenanceWindowTaskType

instance Prelude.ToJSON MaintenanceWindowTaskType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MaintenanceWindowTaskType where
  parseJSON = Prelude.parseJSONText "MaintenanceWindowTaskType"
