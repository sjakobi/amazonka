{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayPrefixListReferenceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayPrefixListReferenceState
  ( TransitGatewayPrefixListReferenceState
      ( ..,
        TGPLRSAvailable,
        TGPLRSDeleting,
        TGPLRSModifying,
        TGPLRSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayPrefixListReferenceState
  = TransitGatewayPrefixListReferenceState'
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

pattern TGPLRSAvailable :: TransitGatewayPrefixListReferenceState
pattern TGPLRSAvailable = TransitGatewayPrefixListReferenceState' "available"

pattern TGPLRSDeleting :: TransitGatewayPrefixListReferenceState
pattern TGPLRSDeleting = TransitGatewayPrefixListReferenceState' "deleting"

pattern TGPLRSModifying :: TransitGatewayPrefixListReferenceState
pattern TGPLRSModifying = TransitGatewayPrefixListReferenceState' "modifying"

pattern TGPLRSPending :: TransitGatewayPrefixListReferenceState
pattern TGPLRSPending = TransitGatewayPrefixListReferenceState' "pending"

{-# COMPLETE
  TGPLRSAvailable,
  TGPLRSDeleting,
  TGPLRSModifying,
  TGPLRSPending,
  TransitGatewayPrefixListReferenceState'
  #-}

instance FromText TransitGatewayPrefixListReferenceState where
  parser = (TransitGatewayPrefixListReferenceState' . mk) <$> takeText

instance ToText TransitGatewayPrefixListReferenceState where
  toText (TransitGatewayPrefixListReferenceState' ci) = original ci

instance Hashable TransitGatewayPrefixListReferenceState

instance NFData TransitGatewayPrefixListReferenceState

instance ToByteString TransitGatewayPrefixListReferenceState

instance ToQuery TransitGatewayPrefixListReferenceState

instance ToHeader TransitGatewayPrefixListReferenceState

instance FromXML TransitGatewayPrefixListReferenceState where
  parseXML = parseXMLText "TransitGatewayPrefixListReferenceState"
