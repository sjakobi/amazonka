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
-- Module      : Network.AWS.EC2.Types.NetworkInterfacePermissionStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfacePermissionStateCode
  ( NetworkInterfacePermissionStateCode
      ( ..,
        NetworkInterfacePermissionStateCodeGranted,
        NetworkInterfacePermissionStateCodePending,
        NetworkInterfacePermissionStateCodeRevoked,
        NetworkInterfacePermissionStateCodeRevoking
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype NetworkInterfacePermissionStateCode = NetworkInterfacePermissionStateCode'
  { fromNetworkInterfacePermissionStateCode ::
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

pattern NetworkInterfacePermissionStateCodeGranted :: NetworkInterfacePermissionStateCode
pattern NetworkInterfacePermissionStateCodeGranted = NetworkInterfacePermissionStateCode' "granted"

pattern NetworkInterfacePermissionStateCodePending :: NetworkInterfacePermissionStateCode
pattern NetworkInterfacePermissionStateCodePending = NetworkInterfacePermissionStateCode' "pending"

pattern NetworkInterfacePermissionStateCodeRevoked :: NetworkInterfacePermissionStateCode
pattern NetworkInterfacePermissionStateCodeRevoked = NetworkInterfacePermissionStateCode' "revoked"

pattern NetworkInterfacePermissionStateCodeRevoking :: NetworkInterfacePermissionStateCode
pattern NetworkInterfacePermissionStateCodeRevoking = NetworkInterfacePermissionStateCode' "revoking"

{-# COMPLETE
  NetworkInterfacePermissionStateCodeGranted,
  NetworkInterfacePermissionStateCodePending,
  NetworkInterfacePermissionStateCodeRevoked,
  NetworkInterfacePermissionStateCodeRevoking,
  NetworkInterfacePermissionStateCode'
  #-}

instance Prelude.FromText NetworkInterfacePermissionStateCode where
  parser = NetworkInterfacePermissionStateCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkInterfacePermissionStateCode where
  toText (NetworkInterfacePermissionStateCode' x) = x

instance Prelude.Hashable NetworkInterfacePermissionStateCode

instance Prelude.NFData NetworkInterfacePermissionStateCode

instance Prelude.ToByteString NetworkInterfacePermissionStateCode

instance Prelude.ToQuery NetworkInterfacePermissionStateCode

instance Prelude.ToHeader NetworkInterfacePermissionStateCode

instance Prelude.FromXML NetworkInterfacePermissionStateCode where
  parseXML = Prelude.parseXMLText "NetworkInterfacePermissionStateCode"
