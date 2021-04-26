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
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionRf
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionRf
  ( Eac3AtmosDynamicRangeCompressionRf
      ( ..,
        Eac3AtmosDynamicRangeCompressionRfFILMLIGHT,
        Eac3AtmosDynamicRangeCompressionRfFILMSTANDARD,
        Eac3AtmosDynamicRangeCompressionRfMUSICLIGHT,
        Eac3AtmosDynamicRangeCompressionRfMUSICSTANDARD,
        Eac3AtmosDynamicRangeCompressionRfNONE,
        Eac3AtmosDynamicRangeCompressionRfSPEECH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify how the service limits the audio dynamic range when compressing
-- the audio.
newtype Eac3AtmosDynamicRangeCompressionRf = Eac3AtmosDynamicRangeCompressionRf'
  { fromEac3AtmosDynamicRangeCompressionRf ::
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

pattern Eac3AtmosDynamicRangeCompressionRfFILMLIGHT :: Eac3AtmosDynamicRangeCompressionRf
pattern Eac3AtmosDynamicRangeCompressionRfFILMLIGHT = Eac3AtmosDynamicRangeCompressionRf' "FILM_LIGHT"

pattern Eac3AtmosDynamicRangeCompressionRfFILMSTANDARD :: Eac3AtmosDynamicRangeCompressionRf
pattern Eac3AtmosDynamicRangeCompressionRfFILMSTANDARD = Eac3AtmosDynamicRangeCompressionRf' "FILM_STANDARD"

pattern Eac3AtmosDynamicRangeCompressionRfMUSICLIGHT :: Eac3AtmosDynamicRangeCompressionRf
pattern Eac3AtmosDynamicRangeCompressionRfMUSICLIGHT = Eac3AtmosDynamicRangeCompressionRf' "MUSIC_LIGHT"

pattern Eac3AtmosDynamicRangeCompressionRfMUSICSTANDARD :: Eac3AtmosDynamicRangeCompressionRf
pattern Eac3AtmosDynamicRangeCompressionRfMUSICSTANDARD = Eac3AtmosDynamicRangeCompressionRf' "MUSIC_STANDARD"

pattern Eac3AtmosDynamicRangeCompressionRfNONE :: Eac3AtmosDynamicRangeCompressionRf
pattern Eac3AtmosDynamicRangeCompressionRfNONE = Eac3AtmosDynamicRangeCompressionRf' "NONE"

pattern Eac3AtmosDynamicRangeCompressionRfSPEECH :: Eac3AtmosDynamicRangeCompressionRf
pattern Eac3AtmosDynamicRangeCompressionRfSPEECH = Eac3AtmosDynamicRangeCompressionRf' "SPEECH"

{-# COMPLETE
  Eac3AtmosDynamicRangeCompressionRfFILMLIGHT,
  Eac3AtmosDynamicRangeCompressionRfFILMSTANDARD,
  Eac3AtmosDynamicRangeCompressionRfMUSICLIGHT,
  Eac3AtmosDynamicRangeCompressionRfMUSICSTANDARD,
  Eac3AtmosDynamicRangeCompressionRfNONE,
  Eac3AtmosDynamicRangeCompressionRfSPEECH,
  Eac3AtmosDynamicRangeCompressionRf'
  #-}

instance Prelude.FromText Eac3AtmosDynamicRangeCompressionRf where
  parser = Eac3AtmosDynamicRangeCompressionRf' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3AtmosDynamicRangeCompressionRf where
  toText (Eac3AtmosDynamicRangeCompressionRf' x) = x

instance Prelude.Hashable Eac3AtmosDynamicRangeCompressionRf

instance Prelude.NFData Eac3AtmosDynamicRangeCompressionRf

instance Prelude.ToByteString Eac3AtmosDynamicRangeCompressionRf

instance Prelude.ToQuery Eac3AtmosDynamicRangeCompressionRf

instance Prelude.ToHeader Eac3AtmosDynamicRangeCompressionRf

instance Prelude.ToJSON Eac3AtmosDynamicRangeCompressionRf where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3AtmosDynamicRangeCompressionRf where
  parseJSON = Prelude.parseJSONText "Eac3AtmosDynamicRangeCompressionRf"
