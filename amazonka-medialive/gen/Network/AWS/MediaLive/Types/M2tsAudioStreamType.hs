{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsAudioStreamType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAudioStreamType
  ( M2tsAudioStreamType
      ( ..,
        MASTAtsc,
        MASTDvb
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Audio Stream Type
data M2tsAudioStreamType
  = M2tsAudioStreamType'
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

pattern MASTAtsc :: M2tsAudioStreamType
pattern MASTAtsc = M2tsAudioStreamType' "ATSC"

pattern MASTDvb :: M2tsAudioStreamType
pattern MASTDvb = M2tsAudioStreamType' "DVB"

{-# COMPLETE
  MASTAtsc,
  MASTDvb,
  M2tsAudioStreamType'
  #-}

instance FromText M2tsAudioStreamType where
  parser = (M2tsAudioStreamType' . mk) <$> takeText

instance ToText M2tsAudioStreamType where
  toText (M2tsAudioStreamType' ci) = original ci

instance Hashable M2tsAudioStreamType

instance NFData M2tsAudioStreamType

instance ToByteString M2tsAudioStreamType

instance ToQuery M2tsAudioStreamType

instance ToHeader M2tsAudioStreamType

instance ToJSON M2tsAudioStreamType where
  toJSON = toJSONText

instance FromJSON M2tsAudioStreamType where
  parseJSON = parseJSONText "M2tsAudioStreamType"
