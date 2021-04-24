{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioType
  ( AudioType
      ( ..,
        CleanEffects,
        HearingImpaired,
        Undefined,
        VisualImpairedCommentary
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Audio Type
data AudioType = AudioType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CleanEffects :: AudioType
pattern CleanEffects = AudioType' "CLEAN_EFFECTS"

pattern HearingImpaired :: AudioType
pattern HearingImpaired = AudioType' "HEARING_IMPAIRED"

pattern Undefined :: AudioType
pattern Undefined = AudioType' "UNDEFINED"

pattern VisualImpairedCommentary :: AudioType
pattern VisualImpairedCommentary = AudioType' "VISUAL_IMPAIRED_COMMENTARY"

{-# COMPLETE
  CleanEffects,
  HearingImpaired,
  Undefined,
  VisualImpairedCommentary,
  AudioType'
  #-}

instance FromText AudioType where
  parser = (AudioType' . mk) <$> takeText

instance ToText AudioType where
  toText (AudioType' ci) = original ci

instance Hashable AudioType

instance NFData AudioType

instance ToByteString AudioType

instance ToQuery AudioType

instance ToHeader AudioType

instance ToJSON AudioType where
  toJSON = toJSONText

instance FromJSON AudioType where
  parseJSON = parseJSONText "AudioType"
