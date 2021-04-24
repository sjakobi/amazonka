{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioDescriptionLanguageCodeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioDescriptionLanguageCodeControl
  ( AudioDescriptionLanguageCodeControl
      ( ..,
        ADLCCFollowInput,
        ADLCCUseConfigured
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Audio Description Language Code Control
data AudioDescriptionLanguageCodeControl
  = AudioDescriptionLanguageCodeControl'
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

pattern ADLCCFollowInput :: AudioDescriptionLanguageCodeControl
pattern ADLCCFollowInput = AudioDescriptionLanguageCodeControl' "FOLLOW_INPUT"

pattern ADLCCUseConfigured :: AudioDescriptionLanguageCodeControl
pattern ADLCCUseConfigured = AudioDescriptionLanguageCodeControl' "USE_CONFIGURED"

{-# COMPLETE
  ADLCCFollowInput,
  ADLCCUseConfigured,
  AudioDescriptionLanguageCodeControl'
  #-}

instance FromText AudioDescriptionLanguageCodeControl where
  parser = (AudioDescriptionLanguageCodeControl' . mk) <$> takeText

instance ToText AudioDescriptionLanguageCodeControl where
  toText (AudioDescriptionLanguageCodeControl' ci) = original ci

instance Hashable AudioDescriptionLanguageCodeControl

instance NFData AudioDescriptionLanguageCodeControl

instance ToByteString AudioDescriptionLanguageCodeControl

instance ToQuery AudioDescriptionLanguageCodeControl

instance ToHeader AudioDescriptionLanguageCodeControl

instance ToJSON AudioDescriptionLanguageCodeControl where
  toJSON = toJSONText

instance FromJSON AudioDescriptionLanguageCodeControl where
  parseJSON = parseJSONText "AudioDescriptionLanguageCodeControl"
