{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.VoiceRecordingTrack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.VoiceRecordingTrack
  ( VoiceRecordingTrack
      ( ..,
        All,
        FromAgent,
        ToAgent
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VoiceRecordingTrack
  = VoiceRecordingTrack'
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

pattern All :: VoiceRecordingTrack
pattern All = VoiceRecordingTrack' "ALL"

pattern FromAgent :: VoiceRecordingTrack
pattern FromAgent = VoiceRecordingTrack' "FROM_AGENT"

pattern ToAgent :: VoiceRecordingTrack
pattern ToAgent = VoiceRecordingTrack' "TO_AGENT"

{-# COMPLETE
  All,
  FromAgent,
  ToAgent,
  VoiceRecordingTrack'
  #-}

instance FromText VoiceRecordingTrack where
  parser = (VoiceRecordingTrack' . mk) <$> takeText

instance ToText VoiceRecordingTrack where
  toText (VoiceRecordingTrack' ci) = original ci

instance Hashable VoiceRecordingTrack

instance NFData VoiceRecordingTrack

instance ToByteString VoiceRecordingTrack

instance ToQuery VoiceRecordingTrack

instance ToHeader VoiceRecordingTrack

instance ToJSON VoiceRecordingTrack where
  toJSON = toJSONText
