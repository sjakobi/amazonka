{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.AccessEndpointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.AccessEndpointType
  ( AccessEndpointType
      ( ..,
        Streaming
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccessEndpointType
  = AccessEndpointType'
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

pattern Streaming :: AccessEndpointType
pattern Streaming = AccessEndpointType' "STREAMING"

{-# COMPLETE
  Streaming,
  AccessEndpointType'
  #-}

instance FromText AccessEndpointType where
  parser = (AccessEndpointType' . mk) <$> takeText

instance ToText AccessEndpointType where
  toText (AccessEndpointType' ci) = original ci

instance Hashable AccessEndpointType

instance NFData AccessEndpointType

instance ToByteString AccessEndpointType

instance ToQuery AccessEndpointType

instance ToHeader AccessEndpointType

instance ToJSON AccessEndpointType where
  toJSON = toJSONText

instance FromJSON AccessEndpointType where
  parseJSON = parseJSONText "AccessEndpointType"
