{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioChannelTag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioChannelTag
  ( AudioChannelTag
      ( ..,
        ACTC,
        ACTCS,
        ACTL,
        ACTLC,
        ACTLS,
        ACTLfe,
        ACTLsd,
        ACTR,
        ACTRC,
        ACTRS,
        ACTRsd,
        ACTTcs,
        ACTVhc,
        ACTVhl,
        ACTVhr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | You can add a tag for this mono-channel audio track to mimic its placement in a multi-channel layout.  For example, if this track is the left surround channel, choose Left surround (LS).
data AudioChannelTag = AudioChannelTag' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ACTC :: AudioChannelTag
pattern ACTC = AudioChannelTag' "C"

pattern ACTCS :: AudioChannelTag
pattern ACTCS = AudioChannelTag' "CS"

pattern ACTL :: AudioChannelTag
pattern ACTL = AudioChannelTag' "L"

pattern ACTLC :: AudioChannelTag
pattern ACTLC = AudioChannelTag' "LC"

pattern ACTLS :: AudioChannelTag
pattern ACTLS = AudioChannelTag' "LS"

pattern ACTLfe :: AudioChannelTag
pattern ACTLfe = AudioChannelTag' "LFE"

pattern ACTLsd :: AudioChannelTag
pattern ACTLsd = AudioChannelTag' "LSD"

pattern ACTR :: AudioChannelTag
pattern ACTR = AudioChannelTag' "R"

pattern ACTRC :: AudioChannelTag
pattern ACTRC = AudioChannelTag' "RC"

pattern ACTRS :: AudioChannelTag
pattern ACTRS = AudioChannelTag' "RS"

pattern ACTRsd :: AudioChannelTag
pattern ACTRsd = AudioChannelTag' "RSD"

pattern ACTTcs :: AudioChannelTag
pattern ACTTcs = AudioChannelTag' "TCS"

pattern ACTVhc :: AudioChannelTag
pattern ACTVhc = AudioChannelTag' "VHC"

pattern ACTVhl :: AudioChannelTag
pattern ACTVhl = AudioChannelTag' "VHL"

pattern ACTVhr :: AudioChannelTag
pattern ACTVhr = AudioChannelTag' "VHR"

{-# COMPLETE
  ACTC,
  ACTCS,
  ACTL,
  ACTLC,
  ACTLS,
  ACTLfe,
  ACTLsd,
  ACTR,
  ACTRC,
  ACTRS,
  ACTRsd,
  ACTTcs,
  ACTVhc,
  ACTVhl,
  ACTVhr,
  AudioChannelTag'
  #-}

instance FromText AudioChannelTag where
  parser = (AudioChannelTag' . mk) <$> takeText

instance ToText AudioChannelTag where
  toText (AudioChannelTag' ci) = original ci

instance Hashable AudioChannelTag

instance NFData AudioChannelTag

instance ToByteString AudioChannelTag

instance ToQuery AudioChannelTag

instance ToHeader AudioChannelTag

instance ToJSON AudioChannelTag where
  toJSON = toJSONText

instance FromJSON AudioChannelTag where
  parseJSON = parseJSONText "AudioChannelTag"
