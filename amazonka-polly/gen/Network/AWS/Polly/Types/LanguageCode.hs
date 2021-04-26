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
-- Module      : Network.AWS.Polly.Types.LanguageCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.LanguageCode
  ( LanguageCode
      ( ..,
        LanguageCodeArb,
        LanguageCodeCmnCN,
        LanguageCodeCyGB,
        LanguageCodeDaDK,
        LanguageCodeDeDE,
        LanguageCodeEnAU,
        LanguageCodeEnGB,
        LanguageCodeEnGBWLS,
        LanguageCodeEnIN,
        LanguageCodeEnUS,
        LanguageCodeEsES,
        LanguageCodeEsMX,
        LanguageCodeEsUS,
        LanguageCodeFrCA,
        LanguageCodeFrFR,
        LanguageCodeHiIN,
        LanguageCodeIsIS,
        LanguageCodeItIT,
        LanguageCodeJaJP,
        LanguageCodeKoKR,
        LanguageCodeNbNO,
        LanguageCodeNlNL,
        LanguageCodePlPL,
        LanguageCodePtBR,
        LanguageCodePtPT,
        LanguageCodeRoRO,
        LanguageCodeRuRU,
        LanguageCodeSvSE,
        LanguageCodeTrTR
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

pattern LanguageCodeArb :: LanguageCode
pattern LanguageCodeArb = LanguageCode' "arb"

pattern LanguageCodeCmnCN :: LanguageCode
pattern LanguageCodeCmnCN = LanguageCode' "cmn-CN"

pattern LanguageCodeCyGB :: LanguageCode
pattern LanguageCodeCyGB = LanguageCode' "cy-GB"

pattern LanguageCodeDaDK :: LanguageCode
pattern LanguageCodeDaDK = LanguageCode' "da-DK"

pattern LanguageCodeDeDE :: LanguageCode
pattern LanguageCodeDeDE = LanguageCode' "de-DE"

pattern LanguageCodeEnAU :: LanguageCode
pattern LanguageCodeEnAU = LanguageCode' "en-AU"

pattern LanguageCodeEnGB :: LanguageCode
pattern LanguageCodeEnGB = LanguageCode' "en-GB"

pattern LanguageCodeEnGBWLS :: LanguageCode
pattern LanguageCodeEnGBWLS = LanguageCode' "en-GB-WLS"

pattern LanguageCodeEnIN :: LanguageCode
pattern LanguageCodeEnIN = LanguageCode' "en-IN"

pattern LanguageCodeEnUS :: LanguageCode
pattern LanguageCodeEnUS = LanguageCode' "en-US"

pattern LanguageCodeEsES :: LanguageCode
pattern LanguageCodeEsES = LanguageCode' "es-ES"

pattern LanguageCodeEsMX :: LanguageCode
pattern LanguageCodeEsMX = LanguageCode' "es-MX"

pattern LanguageCodeEsUS :: LanguageCode
pattern LanguageCodeEsUS = LanguageCode' "es-US"

pattern LanguageCodeFrCA :: LanguageCode
pattern LanguageCodeFrCA = LanguageCode' "fr-CA"

pattern LanguageCodeFrFR :: LanguageCode
pattern LanguageCodeFrFR = LanguageCode' "fr-FR"

pattern LanguageCodeHiIN :: LanguageCode
pattern LanguageCodeHiIN = LanguageCode' "hi-IN"

pattern LanguageCodeIsIS :: LanguageCode
pattern LanguageCodeIsIS = LanguageCode' "is-IS"

pattern LanguageCodeItIT :: LanguageCode
pattern LanguageCodeItIT = LanguageCode' "it-IT"

pattern LanguageCodeJaJP :: LanguageCode
pattern LanguageCodeJaJP = LanguageCode' "ja-JP"

pattern LanguageCodeKoKR :: LanguageCode
pattern LanguageCodeKoKR = LanguageCode' "ko-KR"

pattern LanguageCodeNbNO :: LanguageCode
pattern LanguageCodeNbNO = LanguageCode' "nb-NO"

pattern LanguageCodeNlNL :: LanguageCode
pattern LanguageCodeNlNL = LanguageCode' "nl-NL"

pattern LanguageCodePlPL :: LanguageCode
pattern LanguageCodePlPL = LanguageCode' "pl-PL"

pattern LanguageCodePtBR :: LanguageCode
pattern LanguageCodePtBR = LanguageCode' "pt-BR"

pattern LanguageCodePtPT :: LanguageCode
pattern LanguageCodePtPT = LanguageCode' "pt-PT"

pattern LanguageCodeRoRO :: LanguageCode
pattern LanguageCodeRoRO = LanguageCode' "ro-RO"

pattern LanguageCodeRuRU :: LanguageCode
pattern LanguageCodeRuRU = LanguageCode' "ru-RU"

pattern LanguageCodeSvSE :: LanguageCode
pattern LanguageCodeSvSE = LanguageCode' "sv-SE"

pattern LanguageCodeTrTR :: LanguageCode
pattern LanguageCodeTrTR = LanguageCode' "tr-TR"

{-# COMPLETE
  LanguageCodeArb,
  LanguageCodeCmnCN,
  LanguageCodeCyGB,
  LanguageCodeDaDK,
  LanguageCodeDeDE,
  LanguageCodeEnAU,
  LanguageCodeEnGB,
  LanguageCodeEnGBWLS,
  LanguageCodeEnIN,
  LanguageCodeEnUS,
  LanguageCodeEsES,
  LanguageCodeEsMX,
  LanguageCodeEsUS,
  LanguageCodeFrCA,
  LanguageCodeFrFR,
  LanguageCodeHiIN,
  LanguageCodeIsIS,
  LanguageCodeItIT,
  LanguageCodeJaJP,
  LanguageCodeKoKR,
  LanguageCodeNbNO,
  LanguageCodeNlNL,
  LanguageCodePlPL,
  LanguageCodePtBR,
  LanguageCodePtPT,
  LanguageCodeRoRO,
  LanguageCodeRuRU,
  LanguageCodeSvSE,
  LanguageCodeTrTR,
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
