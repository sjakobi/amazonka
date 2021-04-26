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
-- Module      : Network.AWS.Lambda.Types.StateReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.StateReasonCode
  ( StateReasonCode
      ( ..,
        StateReasonCodeCreating,
        StateReasonCodeEniLimitExceeded,
        StateReasonCodeIdle,
        StateReasonCodeImageAccessDenied,
        StateReasonCodeImageDeleted,
        StateReasonCodeInsufficientRolePermissions,
        StateReasonCodeInternalError,
        StateReasonCodeInvalidConfiguration,
        StateReasonCodeInvalidImage,
        StateReasonCodeInvalidSecurityGroup,
        StateReasonCodeInvalidSubnet,
        StateReasonCodeRestoring,
        StateReasonCodeSubnetOutOfIPAddresses
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StateReasonCode = StateReasonCode'
  { fromStateReasonCode ::
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

pattern StateReasonCodeCreating :: StateReasonCode
pattern StateReasonCodeCreating = StateReasonCode' "Creating"

pattern StateReasonCodeEniLimitExceeded :: StateReasonCode
pattern StateReasonCodeEniLimitExceeded = StateReasonCode' "EniLimitExceeded"

pattern StateReasonCodeIdle :: StateReasonCode
pattern StateReasonCodeIdle = StateReasonCode' "Idle"

pattern StateReasonCodeImageAccessDenied :: StateReasonCode
pattern StateReasonCodeImageAccessDenied = StateReasonCode' "ImageAccessDenied"

pattern StateReasonCodeImageDeleted :: StateReasonCode
pattern StateReasonCodeImageDeleted = StateReasonCode' "ImageDeleted"

pattern StateReasonCodeInsufficientRolePermissions :: StateReasonCode
pattern StateReasonCodeInsufficientRolePermissions = StateReasonCode' "InsufficientRolePermissions"

pattern StateReasonCodeInternalError :: StateReasonCode
pattern StateReasonCodeInternalError = StateReasonCode' "InternalError"

pattern StateReasonCodeInvalidConfiguration :: StateReasonCode
pattern StateReasonCodeInvalidConfiguration = StateReasonCode' "InvalidConfiguration"

pattern StateReasonCodeInvalidImage :: StateReasonCode
pattern StateReasonCodeInvalidImage = StateReasonCode' "InvalidImage"

pattern StateReasonCodeInvalidSecurityGroup :: StateReasonCode
pattern StateReasonCodeInvalidSecurityGroup = StateReasonCode' "InvalidSecurityGroup"

pattern StateReasonCodeInvalidSubnet :: StateReasonCode
pattern StateReasonCodeInvalidSubnet = StateReasonCode' "InvalidSubnet"

pattern StateReasonCodeRestoring :: StateReasonCode
pattern StateReasonCodeRestoring = StateReasonCode' "Restoring"

pattern StateReasonCodeSubnetOutOfIPAddresses :: StateReasonCode
pattern StateReasonCodeSubnetOutOfIPAddresses = StateReasonCode' "SubnetOutOfIPAddresses"

{-# COMPLETE
  StateReasonCodeCreating,
  StateReasonCodeEniLimitExceeded,
  StateReasonCodeIdle,
  StateReasonCodeImageAccessDenied,
  StateReasonCodeImageDeleted,
  StateReasonCodeInsufficientRolePermissions,
  StateReasonCodeInternalError,
  StateReasonCodeInvalidConfiguration,
  StateReasonCodeInvalidImage,
  StateReasonCodeInvalidSecurityGroup,
  StateReasonCodeInvalidSubnet,
  StateReasonCodeRestoring,
  StateReasonCodeSubnetOutOfIPAddresses,
  StateReasonCode'
  #-}

instance Prelude.FromText StateReasonCode where
  parser = StateReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText StateReasonCode where
  toText (StateReasonCode' x) = x

instance Prelude.Hashable StateReasonCode

instance Prelude.NFData StateReasonCode

instance Prelude.ToByteString StateReasonCode

instance Prelude.ToQuery StateReasonCode

instance Prelude.ToHeader StateReasonCode

instance Prelude.FromJSON StateReasonCode where
  parseJSON = Prelude.parseJSONText "StateReasonCode"
