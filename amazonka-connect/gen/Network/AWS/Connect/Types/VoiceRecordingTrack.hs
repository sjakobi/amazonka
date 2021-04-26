{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        VoiceRecordingTrackALL,
        VoiceRecordingTrackFROMAGENT,
        VoiceRecordingTrackTOAGENT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VoiceRecordingTrack = VoiceRecordingTrack'
  { fromVoiceRecordingTrack ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern VoiceRecordingTrackALL :: VoiceRecordingTrack
pattern VoiceRecordingTrackALL = VoiceRecordingTrack' "ALL"

pattern VoiceRecordingTrackFROMAGENT :: VoiceRecordingTrack
pattern VoiceRecordingTrackFROMAGENT = VoiceRecordingTrack' "FROM_AGENT"

pattern VoiceRecordingTrackTOAGENT :: VoiceRecordingTrack
pattern VoiceRecordingTrackTOAGENT = VoiceRecordingTrack' "TO_AGENT"

{-# COMPLETE
  VoiceRecordingTrackALL,
  VoiceRecordingTrackFROMAGENT,
  VoiceRecordingTrackTOAGENT,
  VoiceRecordingTrack'
  #-}

instance Prelude.FromText VoiceRecordingTrack where
  parser = VoiceRecordingTrack' Prelude.<$> Prelude.takeText

instance Prelude.ToText VoiceRecordingTrack where
  toText (VoiceRecordingTrack' x) = x

instance Prelude.Hashable VoiceRecordingTrack

instance Prelude.NFData VoiceRecordingTrack

instance Prelude.ToByteString VoiceRecordingTrack

instance Prelude.ToQuery VoiceRecordingTrack

instance Prelude.ToHeader VoiceRecordingTrack

instance Prelude.ToJSON VoiceRecordingTrack where
  toJSON = Prelude.toJSONText
