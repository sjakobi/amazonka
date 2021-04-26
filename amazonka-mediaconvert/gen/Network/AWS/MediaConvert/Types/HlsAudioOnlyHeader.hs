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
-- Module      : Network.AWS.MediaConvert.Types.HlsAudioOnlyHeader
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsAudioOnlyHeader
  ( HlsAudioOnlyHeader
      ( ..,
        HlsAudioOnlyHeaderEXCLUDE,
        HlsAudioOnlyHeaderINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ignore this setting unless you are using FairPlay DRM with Verimatrix
-- and you encounter playback issues. Keep the default value, Include
-- (INCLUDE), to output audio-only headers. Choose Exclude (EXCLUDE) to
-- remove the audio-only headers from your audio segments.
newtype HlsAudioOnlyHeader = HlsAudioOnlyHeader'
  { fromHlsAudioOnlyHeader ::
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

pattern HlsAudioOnlyHeaderEXCLUDE :: HlsAudioOnlyHeader
pattern HlsAudioOnlyHeaderEXCLUDE = HlsAudioOnlyHeader' "EXCLUDE"

pattern HlsAudioOnlyHeaderINCLUDE :: HlsAudioOnlyHeader
pattern HlsAudioOnlyHeaderINCLUDE = HlsAudioOnlyHeader' "INCLUDE"

{-# COMPLETE
  HlsAudioOnlyHeaderEXCLUDE,
  HlsAudioOnlyHeaderINCLUDE,
  HlsAudioOnlyHeader'
  #-}

instance Prelude.FromText HlsAudioOnlyHeader where
  parser = HlsAudioOnlyHeader' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsAudioOnlyHeader where
  toText (HlsAudioOnlyHeader' x) = x

instance Prelude.Hashable HlsAudioOnlyHeader

instance Prelude.NFData HlsAudioOnlyHeader

instance Prelude.ToByteString HlsAudioOnlyHeader

instance Prelude.ToQuery HlsAudioOnlyHeader

instance Prelude.ToHeader HlsAudioOnlyHeader

instance Prelude.ToJSON HlsAudioOnlyHeader where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsAudioOnlyHeader where
  parseJSON = Prelude.parseJSONText "HlsAudioOnlyHeader"
