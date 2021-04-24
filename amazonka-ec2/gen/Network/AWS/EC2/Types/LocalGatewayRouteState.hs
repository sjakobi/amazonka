{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LocalGatewayRouteState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LocalGatewayRouteState
  ( LocalGatewayRouteState
      ( ..,
        LGRSActive,
        LGRSBlackhole,
        LGRSDeleted,
        LGRSDeleting,
        LGRSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data LocalGatewayRouteState
  = LocalGatewayRouteState'
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

pattern LGRSActive :: LocalGatewayRouteState
pattern LGRSActive = LocalGatewayRouteState' "active"

pattern LGRSBlackhole :: LocalGatewayRouteState
pattern LGRSBlackhole = LocalGatewayRouteState' "blackhole"

pattern LGRSDeleted :: LocalGatewayRouteState
pattern LGRSDeleted = LocalGatewayRouteState' "deleted"

pattern LGRSDeleting :: LocalGatewayRouteState
pattern LGRSDeleting = LocalGatewayRouteState' "deleting"

pattern LGRSPending :: LocalGatewayRouteState
pattern LGRSPending = LocalGatewayRouteState' "pending"

{-# COMPLETE
  LGRSActive,
  LGRSBlackhole,
  LGRSDeleted,
  LGRSDeleting,
  LGRSPending,
  LocalGatewayRouteState'
  #-}

instance FromText LocalGatewayRouteState where
  parser = (LocalGatewayRouteState' . mk) <$> takeText

instance ToText LocalGatewayRouteState where
  toText (LocalGatewayRouteState' ci) = original ci

instance Hashable LocalGatewayRouteState

instance NFData LocalGatewayRouteState

instance ToByteString LocalGatewayRouteState

instance ToQuery LocalGatewayRouteState

instance ToHeader LocalGatewayRouteState

instance FromXML LocalGatewayRouteState where
  parseXML = parseXMLText "LocalGatewayRouteState"
