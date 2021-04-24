{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsAkamaiHTTPTransferMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsAkamaiHTTPTransferMode
  ( HlsAkamaiHTTPTransferMode
      ( ..,
        AkamaiChunked,
        AkamaiNonChunked
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Akamai Http Transfer Mode
data HlsAkamaiHTTPTransferMode
  = HlsAkamaiHTTPTransferMode'
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

pattern AkamaiChunked :: HlsAkamaiHTTPTransferMode
pattern AkamaiChunked = HlsAkamaiHTTPTransferMode' "CHUNKED"

pattern AkamaiNonChunked :: HlsAkamaiHTTPTransferMode
pattern AkamaiNonChunked = HlsAkamaiHTTPTransferMode' "NON_CHUNKED"

{-# COMPLETE
  AkamaiChunked,
  AkamaiNonChunked,
  HlsAkamaiHTTPTransferMode'
  #-}

instance FromText HlsAkamaiHTTPTransferMode where
  parser = (HlsAkamaiHTTPTransferMode' . mk) <$> takeText

instance ToText HlsAkamaiHTTPTransferMode where
  toText (HlsAkamaiHTTPTransferMode' ci) = original ci

instance Hashable HlsAkamaiHTTPTransferMode

instance NFData HlsAkamaiHTTPTransferMode

instance ToByteString HlsAkamaiHTTPTransferMode

instance ToQuery HlsAkamaiHTTPTransferMode

instance ToHeader HlsAkamaiHTTPTransferMode

instance ToJSON HlsAkamaiHTTPTransferMode where
  toJSON = toJSONText

instance FromJSON HlsAkamaiHTTPTransferMode where
  parseJSON = parseJSONText "HlsAkamaiHTTPTransferMode"
