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
-- Module      : Network.AWS.EC2.Types.VpcPeeringConnectionStateReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpcPeeringConnectionStateReasonCode
  ( VpcPeeringConnectionStateReasonCode
      ( ..,
        VpcPeeringConnectionStateReasonCodeActive,
        VpcPeeringConnectionStateReasonCodeDeleted,
        VpcPeeringConnectionStateReasonCodeDeleting,
        VpcPeeringConnectionStateReasonCodeExpired,
        VpcPeeringConnectionStateReasonCodeFailed,
        VpcPeeringConnectionStateReasonCodeInitiatingRequest,
        VpcPeeringConnectionStateReasonCodePendingAcceptance,
        VpcPeeringConnectionStateReasonCodeProvisioning,
        VpcPeeringConnectionStateReasonCodeRejected
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpcPeeringConnectionStateReasonCode = VpcPeeringConnectionStateReasonCode'
  { fromVpcPeeringConnectionStateReasonCode ::
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

pattern VpcPeeringConnectionStateReasonCodeActive :: VpcPeeringConnectionStateReasonCode
pattern VpcPeeringConnectionStateReasonCodeActive = VpcPeeringConnectionStateReasonCode' "active"

pattern VpcPeeringConnectionStateReasonCodeDeleted :: VpcPeeringConnectionStateReasonCode
pattern VpcPeeringConnectionStateReasonCodeDeleted = VpcPeeringConnectionStateReasonCode' "deleted"

pattern VpcPeeringConnectionStateReasonCodeDeleting :: VpcPeeringConnectionStateReasonCode
pattern VpcPeeringConnectionStateReasonCodeDeleting = VpcPeeringConnectionStateReasonCode' "deleting"

pattern VpcPeeringConnectionStateReasonCodeExpired :: VpcPeeringConnectionStateReasonCode
pattern VpcPeeringConnectionStateReasonCodeExpired = VpcPeeringConnectionStateReasonCode' "expired"

pattern VpcPeeringConnectionStateReasonCodeFailed :: VpcPeeringConnectionStateReasonCode
pattern VpcPeeringConnectionStateReasonCodeFailed = VpcPeeringConnectionStateReasonCode' "failed"

pattern VpcPeeringConnectionStateReasonCodeInitiatingRequest :: VpcPeeringConnectionStateReasonCode
pattern VpcPeeringConnectionStateReasonCodeInitiatingRequest = VpcPeeringConnectionStateReasonCode' "initiating-request"

pattern VpcPeeringConnectionStateReasonCodePendingAcceptance :: VpcPeeringConnectionStateReasonCode
pattern VpcPeeringConnectionStateReasonCodePendingAcceptance = VpcPeeringConnectionStateReasonCode' "pending-acceptance"

pattern VpcPeeringConnectionStateReasonCodeProvisioning :: VpcPeeringConnectionStateReasonCode
pattern VpcPeeringConnectionStateReasonCodeProvisioning = VpcPeeringConnectionStateReasonCode' "provisioning"

pattern VpcPeeringConnectionStateReasonCodeRejected :: VpcPeeringConnectionStateReasonCode
pattern VpcPeeringConnectionStateReasonCodeRejected = VpcPeeringConnectionStateReasonCode' "rejected"

{-# COMPLETE
  VpcPeeringConnectionStateReasonCodeActive,
  VpcPeeringConnectionStateReasonCodeDeleted,
  VpcPeeringConnectionStateReasonCodeDeleting,
  VpcPeeringConnectionStateReasonCodeExpired,
  VpcPeeringConnectionStateReasonCodeFailed,
  VpcPeeringConnectionStateReasonCodeInitiatingRequest,
  VpcPeeringConnectionStateReasonCodePendingAcceptance,
  VpcPeeringConnectionStateReasonCodeProvisioning,
  VpcPeeringConnectionStateReasonCodeRejected,
  VpcPeeringConnectionStateReasonCode'
  #-}

instance Prelude.FromText VpcPeeringConnectionStateReasonCode where
  parser = VpcPeeringConnectionStateReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpcPeeringConnectionStateReasonCode where
  toText (VpcPeeringConnectionStateReasonCode' x) = x

instance Prelude.Hashable VpcPeeringConnectionStateReasonCode

instance Prelude.NFData VpcPeeringConnectionStateReasonCode

instance Prelude.ToByteString VpcPeeringConnectionStateReasonCode

instance Prelude.ToQuery VpcPeeringConnectionStateReasonCode

instance Prelude.ToHeader VpcPeeringConnectionStateReasonCode

instance Prelude.FromXML VpcPeeringConnectionStateReasonCode where
  parseXML = Prelude.parseXMLText "VpcPeeringConnectionStateReasonCode"
