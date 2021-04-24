{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionDestinationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CaptionDestinationType
  ( CaptionDestinationType
      ( ..,
        BurnIn,
        DvbSub,
        Embedded,
        EmbeddedPlusSCTE20,
        Imsc,
        SCTE20PlusEmbedded,
        Scc,
        Smi,
        Srt,
        Teletext,
        Ttml,
        Webvtt
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Other options are embedded with SCTE-20, burn-in, DVB-sub, IMSC, SCC, SRT, teletext, TTML, and web-VTT. If you are using SCTE-20, choose SCTE-20 plus embedded (SCTE20_PLUS_EMBEDDED) to create an output that complies with the SCTE-43 spec. To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20 (EMBEDDED_PLUS_SCTE20).
data CaptionDestinationType
  = CaptionDestinationType'
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

pattern BurnIn :: CaptionDestinationType
pattern BurnIn = CaptionDestinationType' "BURN_IN"

pattern DvbSub :: CaptionDestinationType
pattern DvbSub = CaptionDestinationType' "DVB_SUB"

pattern Embedded :: CaptionDestinationType
pattern Embedded = CaptionDestinationType' "EMBEDDED"

pattern EmbeddedPlusSCTE20 :: CaptionDestinationType
pattern EmbeddedPlusSCTE20 = CaptionDestinationType' "EMBEDDED_PLUS_SCTE20"

pattern Imsc :: CaptionDestinationType
pattern Imsc = CaptionDestinationType' "IMSC"

pattern SCTE20PlusEmbedded :: CaptionDestinationType
pattern SCTE20PlusEmbedded = CaptionDestinationType' "SCTE20_PLUS_EMBEDDED"

pattern Scc :: CaptionDestinationType
pattern Scc = CaptionDestinationType' "SCC"

pattern Smi :: CaptionDestinationType
pattern Smi = CaptionDestinationType' "SMI"

pattern Srt :: CaptionDestinationType
pattern Srt = CaptionDestinationType' "SRT"

pattern Teletext :: CaptionDestinationType
pattern Teletext = CaptionDestinationType' "TELETEXT"

pattern Ttml :: CaptionDestinationType
pattern Ttml = CaptionDestinationType' "TTML"

pattern Webvtt :: CaptionDestinationType
pattern Webvtt = CaptionDestinationType' "WEBVTT"

{-# COMPLETE
  BurnIn,
  DvbSub,
  Embedded,
  EmbeddedPlusSCTE20,
  Imsc,
  SCTE20PlusEmbedded,
  Scc,
  Smi,
  Srt,
  Teletext,
  Ttml,
  Webvtt,
  CaptionDestinationType'
  #-}

instance FromText CaptionDestinationType where
  parser = (CaptionDestinationType' . mk) <$> takeText

instance ToText CaptionDestinationType where
  toText (CaptionDestinationType' ci) = original ci

instance Hashable CaptionDestinationType

instance NFData CaptionDestinationType

instance ToByteString CaptionDestinationType

instance ToQuery CaptionDestinationType

instance ToHeader CaptionDestinationType

instance ToJSON CaptionDestinationType where
  toJSON = toJSONText

instance FromJSON CaptionDestinationType where
  parseJSON = parseJSONText "CaptionDestinationType"
