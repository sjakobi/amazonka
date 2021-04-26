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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisioningArtifactType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisioningArtifactType
  ( ProvisioningArtifactType
      ( ..,
        ProvisioningArtifactTypeCLOUDFORMATIONTEMPLATE,
        ProvisioningArtifactTypeMARKETPLACEAMI,
        ProvisioningArtifactTypeMARKETPLACECAR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisioningArtifactType = ProvisioningArtifactType'
  { fromProvisioningArtifactType ::
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

pattern ProvisioningArtifactTypeCLOUDFORMATIONTEMPLATE :: ProvisioningArtifactType
pattern ProvisioningArtifactTypeCLOUDFORMATIONTEMPLATE = ProvisioningArtifactType' "CLOUD_FORMATION_TEMPLATE"

pattern ProvisioningArtifactTypeMARKETPLACEAMI :: ProvisioningArtifactType
pattern ProvisioningArtifactTypeMARKETPLACEAMI = ProvisioningArtifactType' "MARKETPLACE_AMI"

pattern ProvisioningArtifactTypeMARKETPLACECAR :: ProvisioningArtifactType
pattern ProvisioningArtifactTypeMARKETPLACECAR = ProvisioningArtifactType' "MARKETPLACE_CAR"

{-# COMPLETE
  ProvisioningArtifactTypeCLOUDFORMATIONTEMPLATE,
  ProvisioningArtifactTypeMARKETPLACEAMI,
  ProvisioningArtifactTypeMARKETPLACECAR,
  ProvisioningArtifactType'
  #-}

instance Prelude.FromText ProvisioningArtifactType where
  parser = ProvisioningArtifactType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProvisioningArtifactType where
  toText (ProvisioningArtifactType' x) = x

instance Prelude.Hashable ProvisioningArtifactType

instance Prelude.NFData ProvisioningArtifactType

instance Prelude.ToByteString ProvisioningArtifactType

instance Prelude.ToQuery ProvisioningArtifactType

instance Prelude.ToHeader ProvisioningArtifactType

instance Prelude.ToJSON ProvisioningArtifactType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProvisioningArtifactType where
  parseJSON = Prelude.parseJSONText "ProvisioningArtifactType"
