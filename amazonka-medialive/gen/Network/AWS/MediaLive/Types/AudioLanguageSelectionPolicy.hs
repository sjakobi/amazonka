{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioLanguageSelectionPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioLanguageSelectionPolicy
  ( AudioLanguageSelectionPolicy
      ( ..,
        Loose,
        Strict
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Audio Language Selection Policy
data AudioLanguageSelectionPolicy
  = AudioLanguageSelectionPolicy'
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

pattern Loose :: AudioLanguageSelectionPolicy
pattern Loose = AudioLanguageSelectionPolicy' "LOOSE"

pattern Strict :: AudioLanguageSelectionPolicy
pattern Strict = AudioLanguageSelectionPolicy' "STRICT"

{-# COMPLETE
  Loose,
  Strict,
  AudioLanguageSelectionPolicy'
  #-}

instance FromText AudioLanguageSelectionPolicy where
  parser = (AudioLanguageSelectionPolicy' . mk) <$> takeText

instance ToText AudioLanguageSelectionPolicy where
  toText (AudioLanguageSelectionPolicy' ci) = original ci

instance Hashable AudioLanguageSelectionPolicy

instance NFData AudioLanguageSelectionPolicy

instance ToByteString AudioLanguageSelectionPolicy

instance ToQuery AudioLanguageSelectionPolicy

instance ToHeader AudioLanguageSelectionPolicy

instance ToJSON AudioLanguageSelectionPolicy where
  toJSON = toJSONText

instance FromJSON AudioLanguageSelectionPolicy where
  parseJSON = parseJSONText "AudioLanguageSelectionPolicy"
