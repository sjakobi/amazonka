{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NatGatewayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NatGatewayState
  ( NatGatewayState
      ( ..,
        NGSAvailable,
        NGSDeleted,
        NGSDeleting,
        NGSFailed,
        NGSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data NatGatewayState = NatGatewayState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NGSAvailable :: NatGatewayState
pattern NGSAvailable = NatGatewayState' "available"

pattern NGSDeleted :: NatGatewayState
pattern NGSDeleted = NatGatewayState' "deleted"

pattern NGSDeleting :: NatGatewayState
pattern NGSDeleting = NatGatewayState' "deleting"

pattern NGSFailed :: NatGatewayState
pattern NGSFailed = NatGatewayState' "failed"

pattern NGSPending :: NatGatewayState
pattern NGSPending = NatGatewayState' "pending"

{-# COMPLETE
  NGSAvailable,
  NGSDeleted,
  NGSDeleting,
  NGSFailed,
  NGSPending,
  NatGatewayState'
  #-}

instance FromText NatGatewayState where
  parser = (NatGatewayState' . mk) <$> takeText

instance ToText NatGatewayState where
  toText (NatGatewayState' ci) = original ci

instance Hashable NatGatewayState

instance NFData NatGatewayState

instance ToByteString NatGatewayState

instance ToQuery NatGatewayState

instance ToHeader NatGatewayState

instance FromXML NatGatewayState where
  parseXML = parseXMLText "NatGatewayState"
