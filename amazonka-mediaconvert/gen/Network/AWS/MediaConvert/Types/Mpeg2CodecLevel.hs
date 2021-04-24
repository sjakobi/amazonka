{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2CodecLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2CodecLevel
  ( Mpeg2CodecLevel
      ( ..,
        MCLAuto,
        MCLHIGH1440,
        MCLHigh,
        MCLLow,
        MCLMain
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.
data Mpeg2CodecLevel = Mpeg2CodecLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MCLAuto :: Mpeg2CodecLevel
pattern MCLAuto = Mpeg2CodecLevel' "AUTO"

pattern MCLHIGH1440 :: Mpeg2CodecLevel
pattern MCLHIGH1440 = Mpeg2CodecLevel' "HIGH1440"

pattern MCLHigh :: Mpeg2CodecLevel
pattern MCLHigh = Mpeg2CodecLevel' "HIGH"

pattern MCLLow :: Mpeg2CodecLevel
pattern MCLLow = Mpeg2CodecLevel' "LOW"

pattern MCLMain :: Mpeg2CodecLevel
pattern MCLMain = Mpeg2CodecLevel' "MAIN"

{-# COMPLETE
  MCLAuto,
  MCLHIGH1440,
  MCLHigh,
  MCLLow,
  MCLMain,
  Mpeg2CodecLevel'
  #-}

instance FromText Mpeg2CodecLevel where
  parser = (Mpeg2CodecLevel' . mk) <$> takeText

instance ToText Mpeg2CodecLevel where
  toText (Mpeg2CodecLevel' ci) = original ci

instance Hashable Mpeg2CodecLevel

instance NFData Mpeg2CodecLevel

instance ToByteString Mpeg2CodecLevel

instance ToQuery Mpeg2CodecLevel

instance ToHeader Mpeg2CodecLevel

instance ToJSON Mpeg2CodecLevel where
  toJSON = toJSONText

instance FromJSON Mpeg2CodecLevel where
  parseJSON = parseJSONText "Mpeg2CodecLevel"
