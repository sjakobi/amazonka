{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentType
  ( DocumentType
      ( ..,
        DTApplicationConfiguration,
        DTApplicationConfigurationSchema,
        DTAutomation,
        DTAutomation_ChangeTemplate,
        DTChangeCalendar,
        DTCommand,
        DTDeploymentStrategy,
        DTPackage,
        DTPolicy,
        DTSession
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentType = DocumentType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DTApplicationConfiguration :: DocumentType
pattern DTApplicationConfiguration = DocumentType' "ApplicationConfiguration"

pattern DTApplicationConfigurationSchema :: DocumentType
pattern DTApplicationConfigurationSchema = DocumentType' "ApplicationConfigurationSchema"

pattern DTAutomation :: DocumentType
pattern DTAutomation = DocumentType' "Automation"

pattern DTAutomation_ChangeTemplate :: DocumentType
pattern DTAutomation_ChangeTemplate = DocumentType' "Automation.ChangeTemplate"

pattern DTChangeCalendar :: DocumentType
pattern DTChangeCalendar = DocumentType' "ChangeCalendar"

pattern DTCommand :: DocumentType
pattern DTCommand = DocumentType' "Command"

pattern DTDeploymentStrategy :: DocumentType
pattern DTDeploymentStrategy = DocumentType' "DeploymentStrategy"

pattern DTPackage :: DocumentType
pattern DTPackage = DocumentType' "Package"

pattern DTPolicy :: DocumentType
pattern DTPolicy = DocumentType' "Policy"

pattern DTSession :: DocumentType
pattern DTSession = DocumentType' "Session"

{-# COMPLETE
  DTApplicationConfiguration,
  DTApplicationConfigurationSchema,
  DTAutomation,
  DTAutomation_ChangeTemplate,
  DTChangeCalendar,
  DTCommand,
  DTDeploymentStrategy,
  DTPackage,
  DTPolicy,
  DTSession,
  DocumentType'
  #-}

instance FromText DocumentType where
  parser = (DocumentType' . mk) <$> takeText

instance ToText DocumentType where
  toText (DocumentType' ci) = original ci

instance Hashable DocumentType

instance NFData DocumentType

instance ToByteString DocumentType

instance ToQuery DocumentType

instance ToHeader DocumentType

instance ToJSON DocumentType where
  toJSON = toJSONText

instance FromJSON DocumentType where
  parseJSON = parseJSONText "DocumentType"
