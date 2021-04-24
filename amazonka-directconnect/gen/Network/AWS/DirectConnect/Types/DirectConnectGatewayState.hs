{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayState
  ( DirectConnectGatewayState
      ( ..,
        DCGSAvailable,
        DCGSDeleted,
        DCGSDeleting,
        DCGSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DirectConnectGatewayState
  = DirectConnectGatewayState'
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

pattern DCGSAvailable :: DirectConnectGatewayState
pattern DCGSAvailable = DirectConnectGatewayState' "available"

pattern DCGSDeleted :: DirectConnectGatewayState
pattern DCGSDeleted = DirectConnectGatewayState' "deleted"

pattern DCGSDeleting :: DirectConnectGatewayState
pattern DCGSDeleting = DirectConnectGatewayState' "deleting"

pattern DCGSPending :: DirectConnectGatewayState
pattern DCGSPending = DirectConnectGatewayState' "pending"

{-# COMPLETE
  DCGSAvailable,
  DCGSDeleted,
  DCGSDeleting,
  DCGSPending,
  DirectConnectGatewayState'
  #-}

instance FromText DirectConnectGatewayState where
  parser = (DirectConnectGatewayState' . mk) <$> takeText

instance ToText DirectConnectGatewayState where
  toText (DirectConnectGatewayState' ci) = original ci

instance Hashable DirectConnectGatewayState

instance NFData DirectConnectGatewayState

instance ToByteString DirectConnectGatewayState

instance ToQuery DirectConnectGatewayState

instance ToHeader DirectConnectGatewayState

instance FromJSON DirectConnectGatewayState where
  parseJSON = parseJSONText "DirectConnectGatewayState"
