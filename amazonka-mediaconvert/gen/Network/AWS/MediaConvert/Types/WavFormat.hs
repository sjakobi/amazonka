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
-- Module      : Network.AWS.MediaConvert.Types.WavFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.WavFormat
  ( WavFormat
      ( ..,
        WavFormatRF64,
        WavFormatRIFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The service defaults to using RIFF for WAV outputs. If your output audio
-- is likely to exceed 4 GB in file size, or if you otherwise need the
-- extended support of the RF64 format, set your output WAV file format to
-- RF64.
newtype WavFormat = WavFormat'
  { fromWavFormat ::
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

pattern WavFormatRF64 :: WavFormat
pattern WavFormatRF64 = WavFormat' "RF64"

pattern WavFormatRIFF :: WavFormat
pattern WavFormatRIFF = WavFormat' "RIFF"

{-# COMPLETE
  WavFormatRF64,
  WavFormatRIFF,
  WavFormat'
  #-}

instance Prelude.FromText WavFormat where
  parser = WavFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText WavFormat where
  toText (WavFormat' x) = x

instance Prelude.Hashable WavFormat

instance Prelude.NFData WavFormat

instance Prelude.ToByteString WavFormat

instance Prelude.ToQuery WavFormat

instance Prelude.ToHeader WavFormat

instance Prelude.ToJSON WavFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WavFormat where
  parseJSON = Prelude.parseJSONText "WavFormat"
