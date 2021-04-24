{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioDescriptionAudioTypeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioDescriptionAudioTypeControl
  ( AudioDescriptionAudioTypeControl
      ( ..,
        ADATCFollowInput,
        ADATCUseConfigured
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Audio Description Audio Type Control
data AudioDescriptionAudioTypeControl
  = AudioDescriptionAudioTypeControl'
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

pattern ADATCFollowInput :: AudioDescriptionAudioTypeControl
pattern ADATCFollowInput = AudioDescriptionAudioTypeControl' "FOLLOW_INPUT"

pattern ADATCUseConfigured :: AudioDescriptionAudioTypeControl
pattern ADATCUseConfigured = AudioDescriptionAudioTypeControl' "USE_CONFIGURED"

{-# COMPLETE
  ADATCFollowInput,
  ADATCUseConfigured,
  AudioDescriptionAudioTypeControl'
  #-}

instance FromText AudioDescriptionAudioTypeControl where
  parser = (AudioDescriptionAudioTypeControl' . mk) <$> takeText

instance ToText AudioDescriptionAudioTypeControl where
  toText (AudioDescriptionAudioTypeControl' ci) = original ci

instance Hashable AudioDescriptionAudioTypeControl

instance NFData AudioDescriptionAudioTypeControl

instance ToByteString AudioDescriptionAudioTypeControl

instance ToQuery AudioDescriptionAudioTypeControl

instance ToHeader AudioDescriptionAudioTypeControl

instance ToJSON AudioDescriptionAudioTypeControl where
  toJSON = toJSONText

instance FromJSON AudioDescriptionAudioTypeControl where
  parseJSON = parseJSONText "AudioDescriptionAudioTypeControl"
