{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        BiosId,
        Fqdn,
        IPV4Address,
        IPV6Address,
        MACAddress,
        MotherboardSerialNumber,
        VMManagedObjectReference,
        VMManagerId,
        VMName,
        VMPath
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceAttributeType
  = ResourceAttributeType'
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

pattern BiosId :: ResourceAttributeType
pattern BiosId = ResourceAttributeType' "BIOS_ID"

pattern Fqdn :: ResourceAttributeType
pattern Fqdn = ResourceAttributeType' "FQDN"

pattern IPV4Address :: ResourceAttributeType
pattern IPV4Address = ResourceAttributeType' "IPV4_ADDRESS"

pattern IPV6Address :: ResourceAttributeType
pattern IPV6Address = ResourceAttributeType' "IPV6_ADDRESS"

pattern MACAddress :: ResourceAttributeType
pattern MACAddress = ResourceAttributeType' "MAC_ADDRESS"

pattern MotherboardSerialNumber :: ResourceAttributeType
pattern MotherboardSerialNumber = ResourceAttributeType' "MOTHERBOARD_SERIAL_NUMBER"

pattern VMManagedObjectReference :: ResourceAttributeType
pattern VMManagedObjectReference = ResourceAttributeType' "VM_MANAGED_OBJECT_REFERENCE"

pattern VMManagerId :: ResourceAttributeType
pattern VMManagerId = ResourceAttributeType' "VM_MANAGER_ID"

pattern VMName :: ResourceAttributeType
pattern VMName = ResourceAttributeType' "VM_NAME"

pattern VMPath :: ResourceAttributeType
pattern VMPath = ResourceAttributeType' "VM_PATH"

{-# COMPLETE
  BiosId,
  Fqdn,
  IPV4Address,
  IPV6Address,
  MACAddress,
  MotherboardSerialNumber,
  VMManagedObjectReference,
  VMManagerId,
  VMName,
  VMPath,
  ResourceAttributeType'
  #-}

instance FromText ResourceAttributeType where
  parser = (ResourceAttributeType' . mk) <$> takeText

instance ToText ResourceAttributeType where
  toText (ResourceAttributeType' ci) = original ci

instance Hashable ResourceAttributeType

instance NFData ResourceAttributeType

instance ToByteString ResourceAttributeType

instance ToQuery ResourceAttributeType

instance ToHeader ResourceAttributeType

instance ToJSON ResourceAttributeType where
  toJSON = toJSONText

instance FromJSON ResourceAttributeType where
  parseJSON = parseJSONText "ResourceAttributeType"
