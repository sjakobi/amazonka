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
-- Module      : Network.AWS.MediaLive.Types.AudioOnlyHlsTrackType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioOnlyHlsTrackType
  ( AudioOnlyHlsTrackType
      ( ..,
        AudioOnlyHlsTrackTypeALTERNATEAUDIOAUTOSELECT,
        AudioOnlyHlsTrackTypeALTERNATEAUDIOAUTOSELECTDEFAULT,
        AudioOnlyHlsTrackTypeALTERNATEAUDIONOTAUTOSELECT,
        AudioOnlyHlsTrackTypeAUDIOONLYVARIANTSTREAM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Audio Only Hls Track Type
newtype AudioOnlyHlsTrackType = AudioOnlyHlsTrackType'
  { fromAudioOnlyHlsTrackType ::
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

pattern AudioOnlyHlsTrackTypeALTERNATEAUDIOAUTOSELECT :: AudioOnlyHlsTrackType
pattern AudioOnlyHlsTrackTypeALTERNATEAUDIOAUTOSELECT = AudioOnlyHlsTrackType' "ALTERNATE_AUDIO_AUTO_SELECT"

pattern AudioOnlyHlsTrackTypeALTERNATEAUDIOAUTOSELECTDEFAULT :: AudioOnlyHlsTrackType
pattern AudioOnlyHlsTrackTypeALTERNATEAUDIOAUTOSELECTDEFAULT = AudioOnlyHlsTrackType' "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT"

pattern AudioOnlyHlsTrackTypeALTERNATEAUDIONOTAUTOSELECT :: AudioOnlyHlsTrackType
pattern AudioOnlyHlsTrackTypeALTERNATEAUDIONOTAUTOSELECT = AudioOnlyHlsTrackType' "ALTERNATE_AUDIO_NOT_AUTO_SELECT"

pattern AudioOnlyHlsTrackTypeAUDIOONLYVARIANTSTREAM :: AudioOnlyHlsTrackType
pattern AudioOnlyHlsTrackTypeAUDIOONLYVARIANTSTREAM = AudioOnlyHlsTrackType' "AUDIO_ONLY_VARIANT_STREAM"

{-# COMPLETE
  AudioOnlyHlsTrackTypeALTERNATEAUDIOAUTOSELECT,
  AudioOnlyHlsTrackTypeALTERNATEAUDIOAUTOSELECTDEFAULT,
  AudioOnlyHlsTrackTypeALTERNATEAUDIONOTAUTOSELECT,
  AudioOnlyHlsTrackTypeAUDIOONLYVARIANTSTREAM,
  AudioOnlyHlsTrackType'
  #-}

instance Prelude.FromText AudioOnlyHlsTrackType where
  parser = AudioOnlyHlsTrackType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioOnlyHlsTrackType where
  toText (AudioOnlyHlsTrackType' x) = x

instance Prelude.Hashable AudioOnlyHlsTrackType

instance Prelude.NFData AudioOnlyHlsTrackType

instance Prelude.ToByteString AudioOnlyHlsTrackType

instance Prelude.ToQuery AudioOnlyHlsTrackType

instance Prelude.ToHeader AudioOnlyHlsTrackType

instance Prelude.ToJSON AudioOnlyHlsTrackType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioOnlyHlsTrackType where
  parseJSON = Prelude.parseJSONText "AudioOnlyHlsTrackType"
