{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.ReplicationEndpointTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReplicationEndpointTypeValue
  ( ReplicationEndpointTypeValue
      ( ..,
        Source,
        Target
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReplicationEndpointTypeValue
  = ReplicationEndpointTypeValue'
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

pattern Source :: ReplicationEndpointTypeValue
pattern Source = ReplicationEndpointTypeValue' "source"

pattern Target :: ReplicationEndpointTypeValue
pattern Target = ReplicationEndpointTypeValue' "target"

{-# COMPLETE
  Source,
  Target,
  ReplicationEndpointTypeValue'
  #-}

instance FromText ReplicationEndpointTypeValue where
  parser = (ReplicationEndpointTypeValue' . mk) <$> takeText

instance ToText ReplicationEndpointTypeValue where
  toText (ReplicationEndpointTypeValue' ci) = original ci

instance Hashable ReplicationEndpointTypeValue

instance NFData ReplicationEndpointTypeValue

instance ToByteString ReplicationEndpointTypeValue

instance ToQuery ReplicationEndpointTypeValue

instance ToHeader ReplicationEndpointTypeValue

instance ToJSON ReplicationEndpointTypeValue where
  toJSON = toJSONText

instance FromJSON ReplicationEndpointTypeValue where
  parseJSON = parseJSONText "ReplicationEndpointTypeValue"
