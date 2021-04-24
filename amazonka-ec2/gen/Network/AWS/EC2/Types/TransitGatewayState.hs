{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayState
  ( TransitGatewayState
      ( ..,
        Available,
        Deleted,
        Deleting,
        Modifying,
        Pending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TransitGatewayState
  = TransitGatewayState'
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

pattern Available :: TransitGatewayState
pattern Available = TransitGatewayState' "available"

pattern Deleted :: TransitGatewayState
pattern Deleted = TransitGatewayState' "deleted"

pattern Deleting :: TransitGatewayState
pattern Deleting = TransitGatewayState' "deleting"

pattern Modifying :: TransitGatewayState
pattern Modifying = TransitGatewayState' "modifying"

pattern Pending :: TransitGatewayState
pattern Pending = TransitGatewayState' "pending"

{-# COMPLETE
  Available,
  Deleted,
  Deleting,
  Modifying,
  Pending,
  TransitGatewayState'
  #-}

instance FromText TransitGatewayState where
  parser = (TransitGatewayState' . mk) <$> takeText

instance ToText TransitGatewayState where
  toText (TransitGatewayState' ci) = original ci

instance Hashable TransitGatewayState

instance NFData TransitGatewayState

instance ToByteString TransitGatewayState

instance ToQuery TransitGatewayState

instance ToHeader TransitGatewayState

instance FromXML TransitGatewayState where
  parseXML = parseXMLText "TransitGatewayState"
