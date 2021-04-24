{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPCPeeringConnectionStateReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPCPeeringConnectionStateReasonCode
  ( VPCPeeringConnectionStateReasonCode
      ( ..,
        VPCSRCActive,
        VPCSRCDeleted,
        VPCSRCDeleting,
        VPCSRCExpired,
        VPCSRCFailed,
        VPCSRCInitiatingRequest,
        VPCSRCPendingAcceptance,
        VPCSRCProvisioning,
        VPCSRCRejected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VPCPeeringConnectionStateReasonCode
  = VPCPeeringConnectionStateReasonCode'
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

pattern VPCSRCActive :: VPCPeeringConnectionStateReasonCode
pattern VPCSRCActive = VPCPeeringConnectionStateReasonCode' "active"

pattern VPCSRCDeleted :: VPCPeeringConnectionStateReasonCode
pattern VPCSRCDeleted = VPCPeeringConnectionStateReasonCode' "deleted"

pattern VPCSRCDeleting :: VPCPeeringConnectionStateReasonCode
pattern VPCSRCDeleting = VPCPeeringConnectionStateReasonCode' "deleting"

pattern VPCSRCExpired :: VPCPeeringConnectionStateReasonCode
pattern VPCSRCExpired = VPCPeeringConnectionStateReasonCode' "expired"

pattern VPCSRCFailed :: VPCPeeringConnectionStateReasonCode
pattern VPCSRCFailed = VPCPeeringConnectionStateReasonCode' "failed"

pattern VPCSRCInitiatingRequest :: VPCPeeringConnectionStateReasonCode
pattern VPCSRCInitiatingRequest = VPCPeeringConnectionStateReasonCode' "initiating-request"

pattern VPCSRCPendingAcceptance :: VPCPeeringConnectionStateReasonCode
pattern VPCSRCPendingAcceptance = VPCPeeringConnectionStateReasonCode' "pending-acceptance"

pattern VPCSRCProvisioning :: VPCPeeringConnectionStateReasonCode
pattern VPCSRCProvisioning = VPCPeeringConnectionStateReasonCode' "provisioning"

pattern VPCSRCRejected :: VPCPeeringConnectionStateReasonCode
pattern VPCSRCRejected = VPCPeeringConnectionStateReasonCode' "rejected"

{-# COMPLETE
  VPCSRCActive,
  VPCSRCDeleted,
  VPCSRCDeleting,
  VPCSRCExpired,
  VPCSRCFailed,
  VPCSRCInitiatingRequest,
  VPCSRCPendingAcceptance,
  VPCSRCProvisioning,
  VPCSRCRejected,
  VPCPeeringConnectionStateReasonCode'
  #-}

instance FromText VPCPeeringConnectionStateReasonCode where
  parser = (VPCPeeringConnectionStateReasonCode' . mk) <$> takeText

instance ToText VPCPeeringConnectionStateReasonCode where
  toText (VPCPeeringConnectionStateReasonCode' ci) = original ci

instance Hashable VPCPeeringConnectionStateReasonCode

instance NFData VPCPeeringConnectionStateReasonCode

instance ToByteString VPCPeeringConnectionStateReasonCode

instance ToQuery VPCPeeringConnectionStateReasonCode

instance ToHeader VPCPeeringConnectionStateReasonCode

instance FromXML VPCPeeringConnectionStateReasonCode where
  parseXML = parseXMLText "VPCPeeringConnectionStateReasonCode"
