{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupAudioOnlyTimecodeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupAudioOnlyTimecodeControl
  ( SmoothGroupAudioOnlyTimecodeControl
      ( ..,
        Passthrough,
        UseConfiguredClock
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Smooth Group Audio Only Timecode Control
data SmoothGroupAudioOnlyTimecodeControl
  = SmoothGroupAudioOnlyTimecodeControl'
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

pattern Passthrough :: SmoothGroupAudioOnlyTimecodeControl
pattern Passthrough = SmoothGroupAudioOnlyTimecodeControl' "PASSTHROUGH"

pattern UseConfiguredClock :: SmoothGroupAudioOnlyTimecodeControl
pattern UseConfiguredClock = SmoothGroupAudioOnlyTimecodeControl' "USE_CONFIGURED_CLOCK"

{-# COMPLETE
  Passthrough,
  UseConfiguredClock,
  SmoothGroupAudioOnlyTimecodeControl'
  #-}

instance FromText SmoothGroupAudioOnlyTimecodeControl where
  parser = (SmoothGroupAudioOnlyTimecodeControl' . mk) <$> takeText

instance ToText SmoothGroupAudioOnlyTimecodeControl where
  toText (SmoothGroupAudioOnlyTimecodeControl' ci) = original ci

instance Hashable SmoothGroupAudioOnlyTimecodeControl

instance NFData SmoothGroupAudioOnlyTimecodeControl

instance ToByteString SmoothGroupAudioOnlyTimecodeControl

instance ToQuery SmoothGroupAudioOnlyTimecodeControl

instance ToHeader SmoothGroupAudioOnlyTimecodeControl

instance ToJSON SmoothGroupAudioOnlyTimecodeControl where
  toJSON = toJSONText

instance FromJSON SmoothGroupAudioOnlyTimecodeControl where
  parseJSON = parseJSONText "SmoothGroupAudioOnlyTimecodeControl"
