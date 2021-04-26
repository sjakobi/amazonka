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
-- Module      : Network.AWS.SSM.Types.DocumentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentType
  ( DocumentType
      ( ..,
        DocumentTypeApplicationConfiguration,
        DocumentTypeApplicationConfigurationSchema,
        DocumentTypeAutomation,
        DocumentTypeAutomation_ChangeTemplate,
        DocumentTypeChangeCalendar,
        DocumentTypeCommand,
        DocumentTypeDeploymentStrategy,
        DocumentTypePackage,
        DocumentTypePolicy,
        DocumentTypeSession
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentType = DocumentType'
  { fromDocumentType ::
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

pattern DocumentTypeApplicationConfiguration :: DocumentType
pattern DocumentTypeApplicationConfiguration = DocumentType' "ApplicationConfiguration"

pattern DocumentTypeApplicationConfigurationSchema :: DocumentType
pattern DocumentTypeApplicationConfigurationSchema = DocumentType' "ApplicationConfigurationSchema"

pattern DocumentTypeAutomation :: DocumentType
pattern DocumentTypeAutomation = DocumentType' "Automation"

pattern DocumentTypeAutomation_ChangeTemplate :: DocumentType
pattern DocumentTypeAutomation_ChangeTemplate = DocumentType' "Automation.ChangeTemplate"

pattern DocumentTypeChangeCalendar :: DocumentType
pattern DocumentTypeChangeCalendar = DocumentType' "ChangeCalendar"

pattern DocumentTypeCommand :: DocumentType
pattern DocumentTypeCommand = DocumentType' "Command"

pattern DocumentTypeDeploymentStrategy :: DocumentType
pattern DocumentTypeDeploymentStrategy = DocumentType' "DeploymentStrategy"

pattern DocumentTypePackage :: DocumentType
pattern DocumentTypePackage = DocumentType' "Package"

pattern DocumentTypePolicy :: DocumentType
pattern DocumentTypePolicy = DocumentType' "Policy"

pattern DocumentTypeSession :: DocumentType
pattern DocumentTypeSession = DocumentType' "Session"

{-# COMPLETE
  DocumentTypeApplicationConfiguration,
  DocumentTypeApplicationConfigurationSchema,
  DocumentTypeAutomation,
  DocumentTypeAutomation_ChangeTemplate,
  DocumentTypeChangeCalendar,
  DocumentTypeCommand,
  DocumentTypeDeploymentStrategy,
  DocumentTypePackage,
  DocumentTypePolicy,
  DocumentTypeSession,
  DocumentType'
  #-}

instance Prelude.FromText DocumentType where
  parser = DocumentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentType where
  toText (DocumentType' x) = x

instance Prelude.Hashable DocumentType

instance Prelude.NFData DocumentType

instance Prelude.ToByteString DocumentType

instance Prelude.ToQuery DocumentType

instance Prelude.ToHeader DocumentType

instance Prelude.ToJSON DocumentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DocumentType where
  parseJSON = Prelude.parseJSONText "DocumentType"
