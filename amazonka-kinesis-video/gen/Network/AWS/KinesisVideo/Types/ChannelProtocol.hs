{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.ChannelProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.ChannelProtocol
  ( ChannelProtocol
      ( ..,
        HTTPS,
        Wss
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChannelProtocol = ChannelProtocol' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HTTPS :: ChannelProtocol
pattern HTTPS = ChannelProtocol' "HTTPS"

pattern Wss :: ChannelProtocol
pattern Wss = ChannelProtocol' "WSS"

{-# COMPLETE
  HTTPS,
  Wss,
  ChannelProtocol'
  #-}

instance FromText ChannelProtocol where
  parser = (ChannelProtocol' . mk) <$> takeText

instance ToText ChannelProtocol where
  toText (ChannelProtocol' ci) = original ci

instance Hashable ChannelProtocol

instance NFData ChannelProtocol

instance ToByteString ChannelProtocol

instance ToQuery ChannelProtocol

instance ToHeader ChannelProtocol

instance ToJSON ChannelProtocol where
  toJSON = toJSONText

instance FromJSON ChannelProtocol where
  parseJSON = parseJSONText "ChannelProtocol"
