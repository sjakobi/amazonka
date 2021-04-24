{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsAudioBufferModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsAudioBufferModel
  ( M2tsAudioBufferModel
      ( ..,
        Atsc,
        Dvb
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Selects between the DVB and ATSC buffer models for Dolby Digital audio.
data M2tsAudioBufferModel
  = M2tsAudioBufferModel'
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

pattern Atsc :: M2tsAudioBufferModel
pattern Atsc = M2tsAudioBufferModel' "ATSC"

pattern Dvb :: M2tsAudioBufferModel
pattern Dvb = M2tsAudioBufferModel' "DVB"

{-# COMPLETE
  Atsc,
  Dvb,
  M2tsAudioBufferModel'
  #-}

instance FromText M2tsAudioBufferModel where
  parser = (M2tsAudioBufferModel' . mk) <$> takeText

instance ToText M2tsAudioBufferModel where
  toText (M2tsAudioBufferModel' ci) = original ci

instance Hashable M2tsAudioBufferModel

instance NFData M2tsAudioBufferModel

instance ToByteString M2tsAudioBufferModel

instance ToQuery M2tsAudioBufferModel

instance ToHeader M2tsAudioBufferModel

instance ToJSON M2tsAudioBufferModel where
  toJSON = toJSONText

instance FromJSON M2tsAudioBufferModel where
  parseJSON = parseJSONText "M2tsAudioBufferModel"
