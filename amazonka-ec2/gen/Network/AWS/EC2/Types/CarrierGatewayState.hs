{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CarrierGatewayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CarrierGatewayState
  ( CarrierGatewayState
      ( ..,
        CGSAvailable,
        CGSDeleted,
        CGSDeleting,
        CGSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data CarrierGatewayState
  = CarrierGatewayState'
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

pattern CGSAvailable :: CarrierGatewayState
pattern CGSAvailable = CarrierGatewayState' "available"

pattern CGSDeleted :: CarrierGatewayState
pattern CGSDeleted = CarrierGatewayState' "deleted"

pattern CGSDeleting :: CarrierGatewayState
pattern CGSDeleting = CarrierGatewayState' "deleting"

pattern CGSPending :: CarrierGatewayState
pattern CGSPending = CarrierGatewayState' "pending"

{-# COMPLETE
  CGSAvailable,
  CGSDeleted,
  CGSDeleting,
  CGSPending,
  CarrierGatewayState'
  #-}

instance FromText CarrierGatewayState where
  parser = (CarrierGatewayState' . mk) <$> takeText

instance ToText CarrierGatewayState where
  toText (CarrierGatewayState' ci) = original ci

instance Hashable CarrierGatewayState

instance NFData CarrierGatewayState

instance ToByteString CarrierGatewayState

instance ToQuery CarrierGatewayState

instance ToHeader CarrierGatewayState

instance FromXML CarrierGatewayState where
  parseXML = parseXMLText "CarrierGatewayState"
