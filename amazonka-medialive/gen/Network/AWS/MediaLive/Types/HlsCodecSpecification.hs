{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsCodecSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsCodecSpecification
  ( HlsCodecSpecification
      ( ..,
        Rfc4281,
        Rfc6381
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Codec Specification
data HlsCodecSpecification
  = HlsCodecSpecification'
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

pattern Rfc4281 :: HlsCodecSpecification
pattern Rfc4281 = HlsCodecSpecification' "RFC_4281"

pattern Rfc6381 :: HlsCodecSpecification
pattern Rfc6381 = HlsCodecSpecification' "RFC_6381"

{-# COMPLETE
  Rfc4281,
  Rfc6381,
  HlsCodecSpecification'
  #-}

instance FromText HlsCodecSpecification where
  parser = (HlsCodecSpecification' . mk) <$> takeText

instance ToText HlsCodecSpecification where
  toText (HlsCodecSpecification' ci) = original ci

instance Hashable HlsCodecSpecification

instance NFData HlsCodecSpecification

instance ToByteString HlsCodecSpecification

instance ToQuery HlsCodecSpecification

instance ToHeader HlsCodecSpecification

instance ToJSON HlsCodecSpecification where
  toJSON = toJSONText

instance FromJSON HlsCodecSpecification where
  parseJSON = parseJSONText "HlsCodecSpecification"
