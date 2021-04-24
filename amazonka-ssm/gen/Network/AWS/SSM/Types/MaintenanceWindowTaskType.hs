{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Automation,
        Lambda,
        RunCommand,
        StepFunctions
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MaintenanceWindowTaskType
  = MaintenanceWindowTaskType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Automation :: MaintenanceWindowTaskType
pattern Automation = MaintenanceWindowTaskType' "AUTOMATION"

pattern Lambda :: MaintenanceWindowTaskType
pattern Lambda = MaintenanceWindowTaskType' "LAMBDA"

pattern RunCommand :: MaintenanceWindowTaskType
pattern RunCommand = MaintenanceWindowTaskType' "RUN_COMMAND"

pattern StepFunctions :: MaintenanceWindowTaskType
pattern StepFunctions = MaintenanceWindowTaskType' "STEP_FUNCTIONS"

{-# COMPLETE
  Automation,
  Lambda,
  RunCommand,
  StepFunctions,
  MaintenanceWindowTaskType'
  #-}

instance FromText MaintenanceWindowTaskType where
  parser = (MaintenanceWindowTaskType' . mk) <$> takeText

instance ToText MaintenanceWindowTaskType where
  toText (MaintenanceWindowTaskType' ci) = original ci

instance Hashable MaintenanceWindowTaskType

instance NFData MaintenanceWindowTaskType

instance ToByteString MaintenanceWindowTaskType

instance ToQuery MaintenanceWindowTaskType

instance ToHeader MaintenanceWindowTaskType

instance ToJSON MaintenanceWindowTaskType where
  toJSON = toJSONText

instance FromJSON MaintenanceWindowTaskType where
  parseJSON = parseJSONText "MaintenanceWindowTaskType"
