{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.WavCodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.WavCodingMode
  ( WavCodingMode
      ( ..,
        WCMCodingMode10,
        WCMCodingMode20,
        WCMCodingMode40,
        WCMCodingMode80
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Wav Coding Mode
data WavCodingMode = WavCodingMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern WCMCodingMode10 :: WavCodingMode
pattern WCMCodingMode10 = WavCodingMode' "CODING_MODE_1_0"

pattern WCMCodingMode20 :: WavCodingMode
pattern WCMCodingMode20 = WavCodingMode' "CODING_MODE_2_0"

pattern WCMCodingMode40 :: WavCodingMode
pattern WCMCodingMode40 = WavCodingMode' "CODING_MODE_4_0"

pattern WCMCodingMode80 :: WavCodingMode
pattern WCMCodingMode80 = WavCodingMode' "CODING_MODE_8_0"

{-# COMPLETE
  WCMCodingMode10,
  WCMCodingMode20,
  WCMCodingMode40,
  WCMCodingMode80,
  WavCodingMode'
  #-}

instance FromText WavCodingMode where
  parser = (WavCodingMode' . mk) <$> takeText

instance ToText WavCodingMode where
  toText (WavCodingMode' ci) = original ci

instance Hashable WavCodingMode

instance NFData WavCodingMode

instance ToByteString WavCodingMode

instance ToQuery WavCodingMode

instance ToHeader WavCodingMode

instance ToJSON WavCodingMode where
  toJSON = toJSONText

instance FromJSON WavCodingMode where
  parseJSON = parseJSONText "WavCodingMode"
