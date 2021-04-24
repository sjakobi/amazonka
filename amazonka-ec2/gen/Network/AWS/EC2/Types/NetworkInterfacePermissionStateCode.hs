{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        NIPSCGranted,
        NIPSCPending,
        NIPSCRevoked,
        NIPSCRevoking
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data NetworkInterfacePermissionStateCode
  = NetworkInterfacePermissionStateCode'
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

pattern NIPSCGranted :: NetworkInterfacePermissionStateCode
pattern NIPSCGranted = NetworkInterfacePermissionStateCode' "granted"

pattern NIPSCPending :: NetworkInterfacePermissionStateCode
pattern NIPSCPending = NetworkInterfacePermissionStateCode' "pending"

pattern NIPSCRevoked :: NetworkInterfacePermissionStateCode
pattern NIPSCRevoked = NetworkInterfacePermissionStateCode' "revoked"

pattern NIPSCRevoking :: NetworkInterfacePermissionStateCode
pattern NIPSCRevoking = NetworkInterfacePermissionStateCode' "revoking"

{-# COMPLETE
  NIPSCGranted,
  NIPSCPending,
  NIPSCRevoked,
  NIPSCRevoking,
  NetworkInterfacePermissionStateCode'
  #-}

instance FromText NetworkInterfacePermissionStateCode where
  parser = (NetworkInterfacePermissionStateCode' . mk) <$> takeText

instance ToText NetworkInterfacePermissionStateCode where
  toText (NetworkInterfacePermissionStateCode' ci) = original ci

instance Hashable NetworkInterfacePermissionStateCode

instance NFData NetworkInterfacePermissionStateCode

instance ToByteString NetworkInterfacePermissionStateCode

instance ToQuery NetworkInterfacePermissionStateCode

instance ToHeader NetworkInterfacePermissionStateCode

instance FromXML NetworkInterfacePermissionStateCode where
  parseXML = parseXMLText "NetworkInterfacePermissionStateCode"
