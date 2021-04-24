{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264EntropyEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264EntropyEncoding
  ( H264EntropyEncoding
      ( ..,
        Cabac,
        Cavlc
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Entropy Encoding
data H264EntropyEncoding
  = H264EntropyEncoding'
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

pattern Cabac :: H264EntropyEncoding
pattern Cabac = H264EntropyEncoding' "CABAC"

pattern Cavlc :: H264EntropyEncoding
pattern Cavlc = H264EntropyEncoding' "CAVLC"

{-# COMPLETE
  Cabac,
  Cavlc,
  H264EntropyEncoding'
  #-}

instance FromText H264EntropyEncoding where
  parser = (H264EntropyEncoding' . mk) <$> takeText

instance ToText H264EntropyEncoding where
  toText (H264EntropyEncoding' ci) = original ci

instance Hashable H264EntropyEncoding

instance NFData H264EntropyEncoding

instance ToByteString H264EntropyEncoding

instance ToQuery H264EntropyEncoding

instance ToHeader H264EntropyEncoding

instance ToJSON H264EntropyEncoding where
  toJSON = toJSONText

instance FromJSON H264EntropyEncoding where
  parseJSON = parseJSONText "H264EntropyEncoding"
