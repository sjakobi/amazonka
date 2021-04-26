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
-- Module      : Network.AWS.Transcribe.Types.LanguageCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.LanguageCode
  ( LanguageCode
      ( ..,
        LanguageCodeAfZA,
        LanguageCodeArAE,
        LanguageCodeArSA,
        LanguageCodeCyGB,
        LanguageCodeDaDK,
        LanguageCodeDeCH,
        LanguageCodeDeDE,
        LanguageCodeEnAB,
        LanguageCodeEnAU,
        LanguageCodeEnGB,
        LanguageCodeEnIE,
        LanguageCodeEnIN,
        LanguageCodeEnUS,
        LanguageCodeEnWL,
        LanguageCodeEsES,
        LanguageCodeEsUS,
        LanguageCodeFaIR,
        LanguageCodeFrCA,
        LanguageCodeFrFR,
        LanguageCodeGaIE,
        LanguageCodeGdGB,
        LanguageCodeHeIL,
        LanguageCodeHiIN,
        LanguageCodeIdID,
        LanguageCodeItIT,
        LanguageCodeJaJP,
        LanguageCodeKoKR,
        LanguageCodeMsMY,
        LanguageCodeNlNL,
        LanguageCodePtBR,
        LanguageCodePtPT,
        LanguageCodeRuRU,
        LanguageCodeTaIN,
        LanguageCodeTeIN,
        LanguageCodeTrTR,
        LanguageCodeZhCN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LanguageCode = LanguageCode'
  { fromLanguageCode ::
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

pattern LanguageCodeAfZA :: LanguageCode
pattern LanguageCodeAfZA = LanguageCode' "af-ZA"

pattern LanguageCodeArAE :: LanguageCode
pattern LanguageCodeArAE = LanguageCode' "ar-AE"

pattern LanguageCodeArSA :: LanguageCode
pattern LanguageCodeArSA = LanguageCode' "ar-SA"

pattern LanguageCodeCyGB :: LanguageCode
pattern LanguageCodeCyGB = LanguageCode' "cy-GB"

pattern LanguageCodeDaDK :: LanguageCode
pattern LanguageCodeDaDK = LanguageCode' "da-DK"

pattern LanguageCodeDeCH :: LanguageCode
pattern LanguageCodeDeCH = LanguageCode' "de-CH"

pattern LanguageCodeDeDE :: LanguageCode
pattern LanguageCodeDeDE = LanguageCode' "de-DE"

pattern LanguageCodeEnAB :: LanguageCode
pattern LanguageCodeEnAB = LanguageCode' "en-AB"

pattern LanguageCodeEnAU :: LanguageCode
pattern LanguageCodeEnAU = LanguageCode' "en-AU"

pattern LanguageCodeEnGB :: LanguageCode
pattern LanguageCodeEnGB = LanguageCode' "en-GB"

pattern LanguageCodeEnIE :: LanguageCode
pattern LanguageCodeEnIE = LanguageCode' "en-IE"

pattern LanguageCodeEnIN :: LanguageCode
pattern LanguageCodeEnIN = LanguageCode' "en-IN"

pattern LanguageCodeEnUS :: LanguageCode
pattern LanguageCodeEnUS = LanguageCode' "en-US"

pattern LanguageCodeEnWL :: LanguageCode
pattern LanguageCodeEnWL = LanguageCode' "en-WL"

pattern LanguageCodeEsES :: LanguageCode
pattern LanguageCodeEsES = LanguageCode' "es-ES"

pattern LanguageCodeEsUS :: LanguageCode
pattern LanguageCodeEsUS = LanguageCode' "es-US"

pattern LanguageCodeFaIR :: LanguageCode
pattern LanguageCodeFaIR = LanguageCode' "fa-IR"

pattern LanguageCodeFrCA :: LanguageCode
pattern LanguageCodeFrCA = LanguageCode' "fr-CA"

pattern LanguageCodeFrFR :: LanguageCode
pattern LanguageCodeFrFR = LanguageCode' "fr-FR"

pattern LanguageCodeGaIE :: LanguageCode
pattern LanguageCodeGaIE = LanguageCode' "ga-IE"

pattern LanguageCodeGdGB :: LanguageCode
pattern LanguageCodeGdGB = LanguageCode' "gd-GB"

pattern LanguageCodeHeIL :: LanguageCode
pattern LanguageCodeHeIL = LanguageCode' "he-IL"

pattern LanguageCodeHiIN :: LanguageCode
pattern LanguageCodeHiIN = LanguageCode' "hi-IN"

pattern LanguageCodeIdID :: LanguageCode
pattern LanguageCodeIdID = LanguageCode' "id-ID"

pattern LanguageCodeItIT :: LanguageCode
pattern LanguageCodeItIT = LanguageCode' "it-IT"

pattern LanguageCodeJaJP :: LanguageCode
pattern LanguageCodeJaJP = LanguageCode' "ja-JP"

pattern LanguageCodeKoKR :: LanguageCode
pattern LanguageCodeKoKR = LanguageCode' "ko-KR"

pattern LanguageCodeMsMY :: LanguageCode
pattern LanguageCodeMsMY = LanguageCode' "ms-MY"

pattern LanguageCodeNlNL :: LanguageCode
pattern LanguageCodeNlNL = LanguageCode' "nl-NL"

pattern LanguageCodePtBR :: LanguageCode
pattern LanguageCodePtBR = LanguageCode' "pt-BR"

pattern LanguageCodePtPT :: LanguageCode
pattern LanguageCodePtPT = LanguageCode' "pt-PT"

pattern LanguageCodeRuRU :: LanguageCode
pattern LanguageCodeRuRU = LanguageCode' "ru-RU"

pattern LanguageCodeTaIN :: LanguageCode
pattern LanguageCodeTaIN = LanguageCode' "ta-IN"

pattern LanguageCodeTeIN :: LanguageCode
pattern LanguageCodeTeIN = LanguageCode' "te-IN"

pattern LanguageCodeTrTR :: LanguageCode
pattern LanguageCodeTrTR = LanguageCode' "tr-TR"

pattern LanguageCodeZhCN :: LanguageCode
pattern LanguageCodeZhCN = LanguageCode' "zh-CN"

{-# COMPLETE
  LanguageCodeAfZA,
  LanguageCodeArAE,
  LanguageCodeArSA,
  LanguageCodeCyGB,
  LanguageCodeDaDK,
  LanguageCodeDeCH,
  LanguageCodeDeDE,
  LanguageCodeEnAB,
  LanguageCodeEnAU,
  LanguageCodeEnGB,
  LanguageCodeEnIE,
  LanguageCodeEnIN,
  LanguageCodeEnUS,
  LanguageCodeEnWL,
  LanguageCodeEsES,
  LanguageCodeEsUS,
  LanguageCodeFaIR,
  LanguageCodeFrCA,
  LanguageCodeFrFR,
  LanguageCodeGaIE,
  LanguageCodeGdGB,
  LanguageCodeHeIL,
  LanguageCodeHiIN,
  LanguageCodeIdID,
  LanguageCodeItIT,
  LanguageCodeJaJP,
  LanguageCodeKoKR,
  LanguageCodeMsMY,
  LanguageCodeNlNL,
  LanguageCodePtBR,
  LanguageCodePtPT,
  LanguageCodeRuRU,
  LanguageCodeTaIN,
  LanguageCodeTeIN,
  LanguageCodeTrTR,
  LanguageCodeZhCN,
  LanguageCode'
  #-}

instance Prelude.FromText LanguageCode where
  parser = LanguageCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText LanguageCode where
  toText (LanguageCode' x) = x

instance Prelude.Hashable LanguageCode

instance Prelude.NFData LanguageCode

instance Prelude.ToByteString LanguageCode

instance Prelude.ToQuery LanguageCode

instance Prelude.ToHeader LanguageCode

instance Prelude.ToJSON LanguageCode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LanguageCode where
  parseJSON = Prelude.parseJSONText "LanguageCode"
