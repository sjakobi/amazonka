{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LocalGatewayRouteType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LocalGatewayRouteType
  ( LocalGatewayRouteType
      ( ..,
        LGRTPropagated,
        LGRTStatic
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data LocalGatewayRouteType
  = LocalGatewayRouteType'
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

pattern LGRTPropagated :: LocalGatewayRouteType
pattern LGRTPropagated = LocalGatewayRouteType' "propagated"

pattern LGRTStatic :: LocalGatewayRouteType
pattern LGRTStatic = LocalGatewayRouteType' "static"

{-# COMPLETE
  LGRTPropagated,
  LGRTStatic,
  LocalGatewayRouteType'
  #-}

instance FromText LocalGatewayRouteType where
  parser = (LocalGatewayRouteType' . mk) <$> takeText

instance ToText LocalGatewayRouteType where
  toText (LocalGatewayRouteType' ci) = original ci

instance Hashable LocalGatewayRouteType

instance NFData LocalGatewayRouteType

instance ToByteString LocalGatewayRouteType

instance ToQuery LocalGatewayRouteType

instance ToHeader LocalGatewayRouteType

instance FromXML LocalGatewayRouteType where
  parseXML = parseXMLText "LocalGatewayRouteType"
