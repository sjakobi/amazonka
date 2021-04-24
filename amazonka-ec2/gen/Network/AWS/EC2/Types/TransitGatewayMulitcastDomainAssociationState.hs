{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulitcastDomainAssociationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayMulitcastDomainAssociationState
  ( TransitGatewayMulitcastDomainAssociationState
      ( ..,
        TGMDASAssociated,
        TGMDASAssociating,
        TGMDASDisassociated,
        TGMDASDisassociating,
        TGMDASFailed,
        TGMDASPendingAcceptance,
        TGMDASRejected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayMulitcastDomainAssociationState
  = TransitGatewayMulitcastDomainAssociationState'
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

pattern TGMDASAssociated :: TransitGatewayMulitcastDomainAssociationState
pattern TGMDASAssociated = TransitGatewayMulitcastDomainAssociationState' "associated"

pattern TGMDASAssociating :: TransitGatewayMulitcastDomainAssociationState
pattern TGMDASAssociating = TransitGatewayMulitcastDomainAssociationState' "associating"

pattern TGMDASDisassociated :: TransitGatewayMulitcastDomainAssociationState
pattern TGMDASDisassociated = TransitGatewayMulitcastDomainAssociationState' "disassociated"

pattern TGMDASDisassociating :: TransitGatewayMulitcastDomainAssociationState
pattern TGMDASDisassociating = TransitGatewayMulitcastDomainAssociationState' "disassociating"

pattern TGMDASFailed :: TransitGatewayMulitcastDomainAssociationState
pattern TGMDASFailed = TransitGatewayMulitcastDomainAssociationState' "failed"

pattern TGMDASPendingAcceptance :: TransitGatewayMulitcastDomainAssociationState
pattern TGMDASPendingAcceptance = TransitGatewayMulitcastDomainAssociationState' "pendingAcceptance"

pattern TGMDASRejected :: TransitGatewayMulitcastDomainAssociationState
pattern TGMDASRejected = TransitGatewayMulitcastDomainAssociationState' "rejected"

{-# COMPLETE
  TGMDASAssociated,
  TGMDASAssociating,
  TGMDASDisassociated,
  TGMDASDisassociating,
  TGMDASFailed,
  TGMDASPendingAcceptance,
  TGMDASRejected,
  TransitGatewayMulitcastDomainAssociationState'
  #-}

instance FromText TransitGatewayMulitcastDomainAssociationState where
  parser = (TransitGatewayMulitcastDomainAssociationState' . mk) <$> takeText

instance ToText TransitGatewayMulitcastDomainAssociationState where
  toText (TransitGatewayMulitcastDomainAssociationState' ci) = original ci

instance Hashable TransitGatewayMulitcastDomainAssociationState

instance NFData TransitGatewayMulitcastDomainAssociationState

instance ToByteString TransitGatewayMulitcastDomainAssociationState

instance ToQuery TransitGatewayMulitcastDomainAssociationState

instance ToHeader TransitGatewayMulitcastDomainAssociationState

instance FromXML TransitGatewayMulitcastDomainAssociationState where
  parseXML = parseXMLText "TransitGatewayMulitcastDomainAssociationState"
