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
-- Module      : Network.AWS.Lambda.Types.LastUpdateStatusReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.LastUpdateStatusReasonCode
  ( LastUpdateStatusReasonCode
      ( ..,
        LastUpdateStatusReasonCodeEniLimitExceeded,
        LastUpdateStatusReasonCodeImageAccessDenied,
        LastUpdateStatusReasonCodeImageDeleted,
        LastUpdateStatusReasonCodeInsufficientRolePermissions,
        LastUpdateStatusReasonCodeInternalError,
        LastUpdateStatusReasonCodeInvalidConfiguration,
        LastUpdateStatusReasonCodeInvalidImage,
        LastUpdateStatusReasonCodeInvalidSecurityGroup,
        LastUpdateStatusReasonCodeInvalidSubnet,
        LastUpdateStatusReasonCodeSubnetOutOfIPAddresses
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LastUpdateStatusReasonCode = LastUpdateStatusReasonCode'
  { fromLastUpdateStatusReasonCode ::
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

pattern LastUpdateStatusReasonCodeEniLimitExceeded :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeEniLimitExceeded = LastUpdateStatusReasonCode' "EniLimitExceeded"

pattern LastUpdateStatusReasonCodeImageAccessDenied :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeImageAccessDenied = LastUpdateStatusReasonCode' "ImageAccessDenied"

pattern LastUpdateStatusReasonCodeImageDeleted :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeImageDeleted = LastUpdateStatusReasonCode' "ImageDeleted"

pattern LastUpdateStatusReasonCodeInsufficientRolePermissions :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeInsufficientRolePermissions = LastUpdateStatusReasonCode' "InsufficientRolePermissions"

pattern LastUpdateStatusReasonCodeInternalError :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeInternalError = LastUpdateStatusReasonCode' "InternalError"

pattern LastUpdateStatusReasonCodeInvalidConfiguration :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeInvalidConfiguration = LastUpdateStatusReasonCode' "InvalidConfiguration"

pattern LastUpdateStatusReasonCodeInvalidImage :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeInvalidImage = LastUpdateStatusReasonCode' "InvalidImage"

pattern LastUpdateStatusReasonCodeInvalidSecurityGroup :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeInvalidSecurityGroup = LastUpdateStatusReasonCode' "InvalidSecurityGroup"

pattern LastUpdateStatusReasonCodeInvalidSubnet :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeInvalidSubnet = LastUpdateStatusReasonCode' "InvalidSubnet"

pattern LastUpdateStatusReasonCodeSubnetOutOfIPAddresses :: LastUpdateStatusReasonCode
pattern LastUpdateStatusReasonCodeSubnetOutOfIPAddresses = LastUpdateStatusReasonCode' "SubnetOutOfIPAddresses"

{-# COMPLETE
  LastUpdateStatusReasonCodeEniLimitExceeded,
  LastUpdateStatusReasonCodeImageAccessDenied,
  LastUpdateStatusReasonCodeImageDeleted,
  LastUpdateStatusReasonCodeInsufficientRolePermissions,
  LastUpdateStatusReasonCodeInternalError,
  LastUpdateStatusReasonCodeInvalidConfiguration,
  LastUpdateStatusReasonCodeInvalidImage,
  LastUpdateStatusReasonCodeInvalidSecurityGroup,
  LastUpdateStatusReasonCodeInvalidSubnet,
  LastUpdateStatusReasonCodeSubnetOutOfIPAddresses,
  LastUpdateStatusReasonCode'
  #-}

instance Prelude.FromText LastUpdateStatusReasonCode where
  parser = LastUpdateStatusReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText LastUpdateStatusReasonCode where
  toText (LastUpdateStatusReasonCode' x) = x

instance Prelude.Hashable LastUpdateStatusReasonCode

instance Prelude.NFData LastUpdateStatusReasonCode

instance Prelude.ToByteString LastUpdateStatusReasonCode

instance Prelude.ToQuery LastUpdateStatusReasonCode

instance Prelude.ToHeader LastUpdateStatusReasonCode

instance Prelude.FromJSON LastUpdateStatusReasonCode where
  parseJSON = Prelude.parseJSONText "LastUpdateStatusReasonCode"
