{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioSelectorType
  ( AudioSelectorType
      ( ..,
        LanguageCode,
        Pid,
        Track
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the type of the audio selector.
data AudioSelectorType = AudioSelectorType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LanguageCode :: AudioSelectorType
pattern LanguageCode = AudioSelectorType' "LANGUAGE_CODE"

pattern Pid :: AudioSelectorType
pattern Pid = AudioSelectorType' "PID"

pattern Track :: AudioSelectorType
pattern Track = AudioSelectorType' "TRACK"

{-# COMPLETE
  LanguageCode,
  Pid,
  Track,
  AudioSelectorType'
  #-}

instance FromText AudioSelectorType where
  parser = (AudioSelectorType' . mk) <$> takeText

instance ToText AudioSelectorType where
  toText (AudioSelectorType' ci) = original ci

instance Hashable AudioSelectorType

instance NFData AudioSelectorType

instance ToByteString AudioSelectorType

instance ToQuery AudioSelectorType

instance ToHeader AudioSelectorType

instance ToJSON AudioSelectorType where
  toJSON = toJSONText

instance FromJSON AudioSelectorType where
  parseJSON = parseJSONText "AudioSelectorType"
