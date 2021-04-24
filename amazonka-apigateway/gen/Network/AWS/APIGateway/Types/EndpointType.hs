{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.EndpointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.EndpointType
  ( EndpointType
      ( ..,
        Edge,
        Private,
        Regional
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The endpoint type. The valid values are @EDGE@ for edge-optimized API setup, most suitable for mobile applications; @REGIONAL@ for regional API endpoint setup, most suitable for calling from AWS Region; and @PRIVATE@ for private APIs.
data EndpointType = EndpointType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Edge :: EndpointType
pattern Edge = EndpointType' "EDGE"

pattern Private :: EndpointType
pattern Private = EndpointType' "PRIVATE"

pattern Regional :: EndpointType
pattern Regional = EndpointType' "REGIONAL"

{-# COMPLETE
  Edge,
  Private,
  Regional,
  EndpointType'
  #-}

instance FromText EndpointType where
  parser = (EndpointType' . mk) <$> takeText

instance ToText EndpointType where
  toText (EndpointType' ci) = original ci

instance Hashable EndpointType

instance NFData EndpointType

instance ToByteString EndpointType

instance ToQuery EndpointType

instance ToHeader EndpointType

instance ToJSON EndpointType where
  toJSON = toJSONText

instance FromJSON EndpointType where
  parseJSON = parseJSONText "EndpointType"
