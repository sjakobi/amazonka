{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2Telecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2Telecine
  ( Mpeg2Telecine
      ( ..,
        MTHard,
        MTNone,
        MTSoft
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
data Mpeg2Telecine = Mpeg2Telecine' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MTHard :: Mpeg2Telecine
pattern MTHard = Mpeg2Telecine' "HARD"

pattern MTNone :: Mpeg2Telecine
pattern MTNone = Mpeg2Telecine' "NONE"

pattern MTSoft :: Mpeg2Telecine
pattern MTSoft = Mpeg2Telecine' "SOFT"

{-# COMPLETE
  MTHard,
  MTNone,
  MTSoft,
  Mpeg2Telecine'
  #-}

instance FromText Mpeg2Telecine where
  parser = (Mpeg2Telecine' . mk) <$> takeText

instance ToText Mpeg2Telecine where
  toText (Mpeg2Telecine' ci) = original ci

instance Hashable Mpeg2Telecine

instance NFData Mpeg2Telecine

instance ToByteString Mpeg2Telecine

instance ToQuery Mpeg2Telecine

instance ToHeader Mpeg2Telecine

instance ToJSON Mpeg2Telecine where
  toJSON = toJSONText

instance FromJSON Mpeg2Telecine where
  parseJSON = parseJSONText "Mpeg2Telecine"
