{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.LastUpdateStatusReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.LastUpdateStatusReasonCode
  ( LastUpdateStatusReasonCode
      ( ..,
        EniLimitExceeded,
        ImageAccessDenied,
        ImageDeleted,
        InsufficientRolePermissions,
        InternalError,
        InvalidConfiguration,
        InvalidImage,
        InvalidSecurityGroup,
        InvalidSubnet,
        SubnetOutOfIPAddresses
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LastUpdateStatusReasonCode
  = LastUpdateStatusReasonCode'
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

pattern EniLimitExceeded :: LastUpdateStatusReasonCode
pattern EniLimitExceeded = LastUpdateStatusReasonCode' "EniLimitExceeded"

pattern ImageAccessDenied :: LastUpdateStatusReasonCode
pattern ImageAccessDenied = LastUpdateStatusReasonCode' "ImageAccessDenied"

pattern ImageDeleted :: LastUpdateStatusReasonCode
pattern ImageDeleted = LastUpdateStatusReasonCode' "ImageDeleted"

pattern InsufficientRolePermissions :: LastUpdateStatusReasonCode
pattern InsufficientRolePermissions = LastUpdateStatusReasonCode' "InsufficientRolePermissions"

pattern InternalError :: LastUpdateStatusReasonCode
pattern InternalError = LastUpdateStatusReasonCode' "InternalError"

pattern InvalidConfiguration :: LastUpdateStatusReasonCode
pattern InvalidConfiguration = LastUpdateStatusReasonCode' "InvalidConfiguration"

pattern InvalidImage :: LastUpdateStatusReasonCode
pattern InvalidImage = LastUpdateStatusReasonCode' "InvalidImage"

pattern InvalidSecurityGroup :: LastUpdateStatusReasonCode
pattern InvalidSecurityGroup = LastUpdateStatusReasonCode' "InvalidSecurityGroup"

pattern InvalidSubnet :: LastUpdateStatusReasonCode
pattern InvalidSubnet = LastUpdateStatusReasonCode' "InvalidSubnet"

pattern SubnetOutOfIPAddresses :: LastUpdateStatusReasonCode
pattern SubnetOutOfIPAddresses = LastUpdateStatusReasonCode' "SubnetOutOfIPAddresses"

{-# COMPLETE
  EniLimitExceeded,
  ImageAccessDenied,
  ImageDeleted,
  InsufficientRolePermissions,
  InternalError,
  InvalidConfiguration,
  InvalidImage,
  InvalidSecurityGroup,
  InvalidSubnet,
  SubnetOutOfIPAddresses,
  LastUpdateStatusReasonCode'
  #-}

instance FromText LastUpdateStatusReasonCode where
  parser = (LastUpdateStatusReasonCode' . mk) <$> takeText

instance ToText LastUpdateStatusReasonCode where
  toText (LastUpdateStatusReasonCode' ci) = original ci

instance Hashable LastUpdateStatusReasonCode

instance NFData LastUpdateStatusReasonCode

instance ToByteString LastUpdateStatusReasonCode

instance ToQuery LastUpdateStatusReasonCode

instance ToHeader LastUpdateStatusReasonCode

instance FromJSON LastUpdateStatusReasonCode where
  parseJSON = parseJSONText "LastUpdateStatusReasonCode"
