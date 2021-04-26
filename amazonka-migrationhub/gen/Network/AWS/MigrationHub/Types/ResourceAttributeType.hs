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
-- Module      : Network.AWS.MigrationHub.Types.ResourceAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Types.ResourceAttributeType
  ( ResourceAttributeType
      ( ..,
        ResourceAttributeTypeBIOSID,
        ResourceAttributeTypeFQDN,
        ResourceAttributeTypeIPV4ADDRESS,
        ResourceAttributeTypeIPV6ADDRESS,
        ResourceAttributeTypeMACADDRESS,
        ResourceAttributeTypeMOTHERBOARDSERIALNUMBER,
        ResourceAttributeTypeVMMANAGEDOBJECTREFERENCE,
        ResourceAttributeTypeVMMANAGERID,
        ResourceAttributeTypeVMNAME,
        ResourceAttributeTypeVMPATH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceAttributeType = ResourceAttributeType'
  { fromResourceAttributeType ::
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

pattern ResourceAttributeTypeBIOSID :: ResourceAttributeType
pattern ResourceAttributeTypeBIOSID = ResourceAttributeType' "BIOS_ID"

pattern ResourceAttributeTypeFQDN :: ResourceAttributeType
pattern ResourceAttributeTypeFQDN = ResourceAttributeType' "FQDN"

pattern ResourceAttributeTypeIPV4ADDRESS :: ResourceAttributeType
pattern ResourceAttributeTypeIPV4ADDRESS = ResourceAttributeType' "IPV4_ADDRESS"

pattern ResourceAttributeTypeIPV6ADDRESS :: ResourceAttributeType
pattern ResourceAttributeTypeIPV6ADDRESS = ResourceAttributeType' "IPV6_ADDRESS"

pattern ResourceAttributeTypeMACADDRESS :: ResourceAttributeType
pattern ResourceAttributeTypeMACADDRESS = ResourceAttributeType' "MAC_ADDRESS"

pattern ResourceAttributeTypeMOTHERBOARDSERIALNUMBER :: ResourceAttributeType
pattern ResourceAttributeTypeMOTHERBOARDSERIALNUMBER = ResourceAttributeType' "MOTHERBOARD_SERIAL_NUMBER"

pattern ResourceAttributeTypeVMMANAGEDOBJECTREFERENCE :: ResourceAttributeType
pattern ResourceAttributeTypeVMMANAGEDOBJECTREFERENCE = ResourceAttributeType' "VM_MANAGED_OBJECT_REFERENCE"

pattern ResourceAttributeTypeVMMANAGERID :: ResourceAttributeType
pattern ResourceAttributeTypeVMMANAGERID = ResourceAttributeType' "VM_MANAGER_ID"

pattern ResourceAttributeTypeVMNAME :: ResourceAttributeType
pattern ResourceAttributeTypeVMNAME = ResourceAttributeType' "VM_NAME"

pattern ResourceAttributeTypeVMPATH :: ResourceAttributeType
pattern ResourceAttributeTypeVMPATH = ResourceAttributeType' "VM_PATH"

{-# COMPLETE
  ResourceAttributeTypeBIOSID,
  ResourceAttributeTypeFQDN,
  ResourceAttributeTypeIPV4ADDRESS,
  ResourceAttributeTypeIPV6ADDRESS,
  ResourceAttributeTypeMACADDRESS,
  ResourceAttributeTypeMOTHERBOARDSERIALNUMBER,
  ResourceAttributeTypeVMMANAGEDOBJECTREFERENCE,
  ResourceAttributeTypeVMMANAGERID,
  ResourceAttributeTypeVMNAME,
  ResourceAttributeTypeVMPATH,
  ResourceAttributeType'
  #-}

instance Prelude.FromText ResourceAttributeType where
  parser = ResourceAttributeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceAttributeType where
  toText (ResourceAttributeType' x) = x

instance Prelude.Hashable ResourceAttributeType

instance Prelude.NFData ResourceAttributeType

instance Prelude.ToByteString ResourceAttributeType

instance Prelude.ToQuery ResourceAttributeType

instance Prelude.ToHeader ResourceAttributeType

instance Prelude.ToJSON ResourceAttributeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ResourceAttributeType where
  parseJSON = Prelude.parseJSONText "ResourceAttributeType"
