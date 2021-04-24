{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.SccDestinationFramerate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.SccDestinationFramerate
  ( SccDestinationFramerate
      ( ..,
        Framerate2397,
        Framerate24,
        Framerate25,
        Framerate2997Dropframe,
        Framerate2997NonDropframe
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Set Framerate (SccDestinationFramerate) to make sure that the captions and the video are synchronized in the output. Specify a frame rate that matches the frame rate of the associated video. If the video frame rate is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME).
data SccDestinationFramerate
  = SccDestinationFramerate'
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

pattern Framerate2397 :: SccDestinationFramerate
pattern Framerate2397 = SccDestinationFramerate' "FRAMERATE_23_97"

pattern Framerate24 :: SccDestinationFramerate
pattern Framerate24 = SccDestinationFramerate' "FRAMERATE_24"

pattern Framerate25 :: SccDestinationFramerate
pattern Framerate25 = SccDestinationFramerate' "FRAMERATE_25"

pattern Framerate2997Dropframe :: SccDestinationFramerate
pattern Framerate2997Dropframe = SccDestinationFramerate' "FRAMERATE_29_97_DROPFRAME"

pattern Framerate2997NonDropframe :: SccDestinationFramerate
pattern Framerate2997NonDropframe = SccDestinationFramerate' "FRAMERATE_29_97_NON_DROPFRAME"

{-# COMPLETE
  Framerate2397,
  Framerate24,
  Framerate25,
  Framerate2997Dropframe,
  Framerate2997NonDropframe,
  SccDestinationFramerate'
  #-}

instance FromText SccDestinationFramerate where
  parser = (SccDestinationFramerate' . mk) <$> takeText

instance ToText SccDestinationFramerate where
  toText (SccDestinationFramerate' ci) = original ci

instance Hashable SccDestinationFramerate

instance NFData SccDestinationFramerate

instance ToByteString SccDestinationFramerate

instance ToQuery SccDestinationFramerate

instance ToHeader SccDestinationFramerate

instance ToJSON SccDestinationFramerate where
  toJSON = toJSONText

instance FromJSON SccDestinationFramerate where
  parseJSON = parseJSONText "SccDestinationFramerate"
