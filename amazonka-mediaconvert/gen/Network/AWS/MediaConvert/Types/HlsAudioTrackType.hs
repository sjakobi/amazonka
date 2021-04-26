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
-- Module      : Network.AWS.MediaConvert.Types.HlsAudioTrackType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsAudioTrackType
  ( HlsAudioTrackType
      ( ..,
        HlsAudioTrackTypeALTERNATEAUDIOAUTOSELECT,
        HlsAudioTrackTypeALTERNATEAUDIOAUTOSELECTDEFAULT,
        HlsAudioTrackTypeALTERNATEAUDIONOTAUTOSELECT,
        HlsAudioTrackTypeAUDIOONLYVARIANTSTREAM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Four types of audio-only tracks are supported: Audio-Only Variant Stream
-- The client can play back this audio-only stream instead of video in
-- low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS
-- manifest. Alternate Audio, Auto Select, Default Alternate rendition that
-- the client should try to play back by default. Represented as an
-- EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES
-- Alternate Audio, Auto Select, Not Default Alternate rendition that the
-- client may try to play back by default. Represented as an EXT-X-MEDIA in
-- the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not
-- Auto Select Alternate rendition that the client will not try to play
-- back by default. Represented as an EXT-X-MEDIA in the HLS manifest with
-- DEFAULT=NO, AUTOSELECT=NO
newtype HlsAudioTrackType = HlsAudioTrackType'
  { fromHlsAudioTrackType ::
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

pattern HlsAudioTrackTypeALTERNATEAUDIOAUTOSELECT :: HlsAudioTrackType
pattern HlsAudioTrackTypeALTERNATEAUDIOAUTOSELECT = HlsAudioTrackType' "ALTERNATE_AUDIO_AUTO_SELECT"

pattern HlsAudioTrackTypeALTERNATEAUDIOAUTOSELECTDEFAULT :: HlsAudioTrackType
pattern HlsAudioTrackTypeALTERNATEAUDIOAUTOSELECTDEFAULT = HlsAudioTrackType' "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT"

pattern HlsAudioTrackTypeALTERNATEAUDIONOTAUTOSELECT :: HlsAudioTrackType
pattern HlsAudioTrackTypeALTERNATEAUDIONOTAUTOSELECT = HlsAudioTrackType' "ALTERNATE_AUDIO_NOT_AUTO_SELECT"

pattern HlsAudioTrackTypeAUDIOONLYVARIANTSTREAM :: HlsAudioTrackType
pattern HlsAudioTrackTypeAUDIOONLYVARIANTSTREAM = HlsAudioTrackType' "AUDIO_ONLY_VARIANT_STREAM"

{-# COMPLETE
  HlsAudioTrackTypeALTERNATEAUDIOAUTOSELECT,
  HlsAudioTrackTypeALTERNATEAUDIOAUTOSELECTDEFAULT,
  HlsAudioTrackTypeALTERNATEAUDIONOTAUTOSELECT,
  HlsAudioTrackTypeAUDIOONLYVARIANTSTREAM,
  HlsAudioTrackType'
  #-}

instance Prelude.FromText HlsAudioTrackType where
  parser = HlsAudioTrackType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsAudioTrackType where
  toText (HlsAudioTrackType' x) = x

instance Prelude.Hashable HlsAudioTrackType

instance Prelude.NFData HlsAudioTrackType

instance Prelude.ToByteString HlsAudioTrackType

instance Prelude.ToQuery HlsAudioTrackType

instance Prelude.ToHeader HlsAudioTrackType

instance Prelude.ToJSON HlsAudioTrackType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsAudioTrackType where
  parseJSON = Prelude.parseJSONText "HlsAudioTrackType"
