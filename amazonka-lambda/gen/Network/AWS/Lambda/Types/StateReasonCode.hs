{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.StateReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.StateReasonCode
  ( StateReasonCode
      ( ..,
        SRCCreating,
        SRCEniLimitExceeded,
        SRCIdle,
        SRCImageAccessDenied,
        SRCImageDeleted,
        SRCInsufficientRolePermissions,
        SRCInternalError,
        SRCInvalidConfiguration,
        SRCInvalidImage,
        SRCInvalidSecurityGroup,
        SRCInvalidSubnet,
        SRCRestoring,
        SRCSubnetOutOfIPAddresses
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StateReasonCode = StateReasonCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SRCCreating :: StateReasonCode
pattern SRCCreating = StateReasonCode' "Creating"

pattern SRCEniLimitExceeded :: StateReasonCode
pattern SRCEniLimitExceeded = StateReasonCode' "EniLimitExceeded"

pattern SRCIdle :: StateReasonCode
pattern SRCIdle = StateReasonCode' "Idle"

pattern SRCImageAccessDenied :: StateReasonCode
pattern SRCImageAccessDenied = StateReasonCode' "ImageAccessDenied"

pattern SRCImageDeleted :: StateReasonCode
pattern SRCImageDeleted = StateReasonCode' "ImageDeleted"

pattern SRCInsufficientRolePermissions :: StateReasonCode
pattern SRCInsufficientRolePermissions = StateReasonCode' "InsufficientRolePermissions"

pattern SRCInternalError :: StateReasonCode
pattern SRCInternalError = StateReasonCode' "InternalError"

pattern SRCInvalidConfiguration :: StateReasonCode
pattern SRCInvalidConfiguration = StateReasonCode' "InvalidConfiguration"

pattern SRCInvalidImage :: StateReasonCode
pattern SRCInvalidImage = StateReasonCode' "InvalidImage"

pattern SRCInvalidSecurityGroup :: StateReasonCode
pattern SRCInvalidSecurityGroup = StateReasonCode' "InvalidSecurityGroup"

pattern SRCInvalidSubnet :: StateReasonCode
pattern SRCInvalidSubnet = StateReasonCode' "InvalidSubnet"

pattern SRCRestoring :: StateReasonCode
pattern SRCRestoring = StateReasonCode' "Restoring"

pattern SRCSubnetOutOfIPAddresses :: StateReasonCode
pattern SRCSubnetOutOfIPAddresses = StateReasonCode' "SubnetOutOfIPAddresses"

{-# COMPLETE
  SRCCreating,
  SRCEniLimitExceeded,
  SRCIdle,
  SRCImageAccessDenied,
  SRCImageDeleted,
  SRCInsufficientRolePermissions,
  SRCInternalError,
  SRCInvalidConfiguration,
  SRCInvalidImage,
  SRCInvalidSecurityGroup,
  SRCInvalidSubnet,
  SRCRestoring,
  SRCSubnetOutOfIPAddresses,
  StateReasonCode'
  #-}

instance FromText StateReasonCode where
  parser = (StateReasonCode' . mk) <$> takeText

instance ToText StateReasonCode where
  toText (StateReasonCode' ci) = original ci

instance Hashable StateReasonCode

instance NFData StateReasonCode

instance ToByteString StateReasonCode

instance ToQuery StateReasonCode

instance ToHeader StateReasonCode

instance FromJSON StateReasonCode where
  parseJSON = parseJSONText "StateReasonCode"
