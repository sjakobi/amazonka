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
-- Module      : Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionRf
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionRf
  ( Eac3DynamicRangeCompressionRf
      ( ..,
        Eac3DynamicRangeCompressionRfFILMLIGHT,
        Eac3DynamicRangeCompressionRfFILMSTANDARD,
        Eac3DynamicRangeCompressionRfMUSICLIGHT,
        Eac3DynamicRangeCompressionRfMUSICSTANDARD,
        Eac3DynamicRangeCompressionRfNONE,
        Eac3DynamicRangeCompressionRfSPEECH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify how the service limits the audio dynamic range when compressing
-- the audio.
newtype Eac3DynamicRangeCompressionRf = Eac3DynamicRangeCompressionRf'
  { fromEac3DynamicRangeCompressionRf ::
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

pattern Eac3DynamicRangeCompressionRfFILMLIGHT :: Eac3DynamicRangeCompressionRf
pattern Eac3DynamicRangeCompressionRfFILMLIGHT = Eac3DynamicRangeCompressionRf' "FILM_LIGHT"

pattern Eac3DynamicRangeCompressionRfFILMSTANDARD :: Eac3DynamicRangeCompressionRf
pattern Eac3DynamicRangeCompressionRfFILMSTANDARD = Eac3DynamicRangeCompressionRf' "FILM_STANDARD"

pattern Eac3DynamicRangeCompressionRfMUSICLIGHT :: Eac3DynamicRangeCompressionRf
pattern Eac3DynamicRangeCompressionRfMUSICLIGHT = Eac3DynamicRangeCompressionRf' "MUSIC_LIGHT"

pattern Eac3DynamicRangeCompressionRfMUSICSTANDARD :: Eac3DynamicRangeCompressionRf
pattern Eac3DynamicRangeCompressionRfMUSICSTANDARD = Eac3DynamicRangeCompressionRf' "MUSIC_STANDARD"

pattern Eac3DynamicRangeCompressionRfNONE :: Eac3DynamicRangeCompressionRf
pattern Eac3DynamicRangeCompressionRfNONE = Eac3DynamicRangeCompressionRf' "NONE"

pattern Eac3DynamicRangeCompressionRfSPEECH :: Eac3DynamicRangeCompressionRf
pattern Eac3DynamicRangeCompressionRfSPEECH = Eac3DynamicRangeCompressionRf' "SPEECH"

{-# COMPLETE
  Eac3DynamicRangeCompressionRfFILMLIGHT,
  Eac3DynamicRangeCompressionRfFILMSTANDARD,
  Eac3DynamicRangeCompressionRfMUSICLIGHT,
  Eac3DynamicRangeCompressionRfMUSICSTANDARD,
  Eac3DynamicRangeCompressionRfNONE,
  Eac3DynamicRangeCompressionRfSPEECH,
  Eac3DynamicRangeCompressionRf'
  #-}

instance Prelude.FromText Eac3DynamicRangeCompressionRf where
  parser = Eac3DynamicRangeCompressionRf' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3DynamicRangeCompressionRf where
  toText (Eac3DynamicRangeCompressionRf' x) = x

instance Prelude.Hashable Eac3DynamicRangeCompressionRf

instance Prelude.NFData Eac3DynamicRangeCompressionRf

instance Prelude.ToByteString Eac3DynamicRangeCompressionRf

instance Prelude.ToQuery Eac3DynamicRangeCompressionRf

instance Prelude.ToHeader Eac3DynamicRangeCompressionRf

instance Prelude.ToJSON Eac3DynamicRangeCompressionRf where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3DynamicRangeCompressionRf where
  parseJSON = Prelude.parseJSONText "Eac3DynamicRangeCompressionRf"
