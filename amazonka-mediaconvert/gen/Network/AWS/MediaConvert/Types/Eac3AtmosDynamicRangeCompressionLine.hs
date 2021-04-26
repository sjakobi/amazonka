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
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionLine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionLine
  ( Eac3AtmosDynamicRangeCompressionLine
      ( ..,
        Eac3AtmosDynamicRangeCompressionLineFILMLIGHT,
        Eac3AtmosDynamicRangeCompressionLineFILMSTANDARD,
        Eac3AtmosDynamicRangeCompressionLineMUSICLIGHT,
        Eac3AtmosDynamicRangeCompressionLineMUSICSTANDARD,
        Eac3AtmosDynamicRangeCompressionLineNONE,
        Eac3AtmosDynamicRangeCompressionLineSPEECH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the absolute peak level for a signal with dynamic range
-- compression.
newtype Eac3AtmosDynamicRangeCompressionLine = Eac3AtmosDynamicRangeCompressionLine'
  { fromEac3AtmosDynamicRangeCompressionLine ::
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

pattern Eac3AtmosDynamicRangeCompressionLineFILMLIGHT :: Eac3AtmosDynamicRangeCompressionLine
pattern Eac3AtmosDynamicRangeCompressionLineFILMLIGHT = Eac3AtmosDynamicRangeCompressionLine' "FILM_LIGHT"

pattern Eac3AtmosDynamicRangeCompressionLineFILMSTANDARD :: Eac3AtmosDynamicRangeCompressionLine
pattern Eac3AtmosDynamicRangeCompressionLineFILMSTANDARD = Eac3AtmosDynamicRangeCompressionLine' "FILM_STANDARD"

pattern Eac3AtmosDynamicRangeCompressionLineMUSICLIGHT :: Eac3AtmosDynamicRangeCompressionLine
pattern Eac3AtmosDynamicRangeCompressionLineMUSICLIGHT = Eac3AtmosDynamicRangeCompressionLine' "MUSIC_LIGHT"

pattern Eac3AtmosDynamicRangeCompressionLineMUSICSTANDARD :: Eac3AtmosDynamicRangeCompressionLine
pattern Eac3AtmosDynamicRangeCompressionLineMUSICSTANDARD = Eac3AtmosDynamicRangeCompressionLine' "MUSIC_STANDARD"

pattern Eac3AtmosDynamicRangeCompressionLineNONE :: Eac3AtmosDynamicRangeCompressionLine
pattern Eac3AtmosDynamicRangeCompressionLineNONE = Eac3AtmosDynamicRangeCompressionLine' "NONE"

pattern Eac3AtmosDynamicRangeCompressionLineSPEECH :: Eac3AtmosDynamicRangeCompressionLine
pattern Eac3AtmosDynamicRangeCompressionLineSPEECH = Eac3AtmosDynamicRangeCompressionLine' "SPEECH"

{-# COMPLETE
  Eac3AtmosDynamicRangeCompressionLineFILMLIGHT,
  Eac3AtmosDynamicRangeCompressionLineFILMSTANDARD,
  Eac3AtmosDynamicRangeCompressionLineMUSICLIGHT,
  Eac3AtmosDynamicRangeCompressionLineMUSICSTANDARD,
  Eac3AtmosDynamicRangeCompressionLineNONE,
  Eac3AtmosDynamicRangeCompressionLineSPEECH,
  Eac3AtmosDynamicRangeCompressionLine'
  #-}

instance Prelude.FromText Eac3AtmosDynamicRangeCompressionLine where
  parser = Eac3AtmosDynamicRangeCompressionLine' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3AtmosDynamicRangeCompressionLine where
  toText (Eac3AtmosDynamicRangeCompressionLine' x) = x

instance Prelude.Hashable Eac3AtmosDynamicRangeCompressionLine

instance Prelude.NFData Eac3AtmosDynamicRangeCompressionLine

instance Prelude.ToByteString Eac3AtmosDynamicRangeCompressionLine

instance Prelude.ToQuery Eac3AtmosDynamicRangeCompressionLine

instance Prelude.ToHeader Eac3AtmosDynamicRangeCompressionLine

instance Prelude.ToJSON Eac3AtmosDynamicRangeCompressionLine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3AtmosDynamicRangeCompressionLine where
  parseJSON = Prelude.parseJSONText "Eac3AtmosDynamicRangeCompressionLine"
