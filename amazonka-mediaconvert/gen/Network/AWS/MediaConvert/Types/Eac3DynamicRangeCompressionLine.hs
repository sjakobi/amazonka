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
-- Module      : Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionLine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionLine
  ( Eac3DynamicRangeCompressionLine
      ( ..,
        Eac3DynamicRangeCompressionLineFILMLIGHT,
        Eac3DynamicRangeCompressionLineFILMSTANDARD,
        Eac3DynamicRangeCompressionLineMUSICLIGHT,
        Eac3DynamicRangeCompressionLineMUSICSTANDARD,
        Eac3DynamicRangeCompressionLineNONE,
        Eac3DynamicRangeCompressionLineSPEECH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the absolute peak level for a signal with dynamic range
-- compression.
newtype Eac3DynamicRangeCompressionLine = Eac3DynamicRangeCompressionLine'
  { fromEac3DynamicRangeCompressionLine ::
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

pattern Eac3DynamicRangeCompressionLineFILMLIGHT :: Eac3DynamicRangeCompressionLine
pattern Eac3DynamicRangeCompressionLineFILMLIGHT = Eac3DynamicRangeCompressionLine' "FILM_LIGHT"

pattern Eac3DynamicRangeCompressionLineFILMSTANDARD :: Eac3DynamicRangeCompressionLine
pattern Eac3DynamicRangeCompressionLineFILMSTANDARD = Eac3DynamicRangeCompressionLine' "FILM_STANDARD"

pattern Eac3DynamicRangeCompressionLineMUSICLIGHT :: Eac3DynamicRangeCompressionLine
pattern Eac3DynamicRangeCompressionLineMUSICLIGHT = Eac3DynamicRangeCompressionLine' "MUSIC_LIGHT"

pattern Eac3DynamicRangeCompressionLineMUSICSTANDARD :: Eac3DynamicRangeCompressionLine
pattern Eac3DynamicRangeCompressionLineMUSICSTANDARD = Eac3DynamicRangeCompressionLine' "MUSIC_STANDARD"

pattern Eac3DynamicRangeCompressionLineNONE :: Eac3DynamicRangeCompressionLine
pattern Eac3DynamicRangeCompressionLineNONE = Eac3DynamicRangeCompressionLine' "NONE"

pattern Eac3DynamicRangeCompressionLineSPEECH :: Eac3DynamicRangeCompressionLine
pattern Eac3DynamicRangeCompressionLineSPEECH = Eac3DynamicRangeCompressionLine' "SPEECH"

{-# COMPLETE
  Eac3DynamicRangeCompressionLineFILMLIGHT,
  Eac3DynamicRangeCompressionLineFILMSTANDARD,
  Eac3DynamicRangeCompressionLineMUSICLIGHT,
  Eac3DynamicRangeCompressionLineMUSICSTANDARD,
  Eac3DynamicRangeCompressionLineNONE,
  Eac3DynamicRangeCompressionLineSPEECH,
  Eac3DynamicRangeCompressionLine'
  #-}

instance Prelude.FromText Eac3DynamicRangeCompressionLine where
  parser = Eac3DynamicRangeCompressionLine' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3DynamicRangeCompressionLine where
  toText (Eac3DynamicRangeCompressionLine' x) = x

instance Prelude.Hashable Eac3DynamicRangeCompressionLine

instance Prelude.NFData Eac3DynamicRangeCompressionLine

instance Prelude.ToByteString Eac3DynamicRangeCompressionLine

instance Prelude.ToQuery Eac3DynamicRangeCompressionLine

instance Prelude.ToHeader Eac3DynamicRangeCompressionLine

instance Prelude.ToJSON Eac3DynamicRangeCompressionLine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3DynamicRangeCompressionLine where
  parseJSON = Prelude.parseJSONText "Eac3DynamicRangeCompressionLine"
