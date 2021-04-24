{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.AnalysisSchemeLanguage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.AnalysisSchemeLanguage
  ( AnalysisSchemeLanguage
      ( ..,
        AR,
        BG,
        CA,
        CS,
        DA,
        DE,
        EL,
        EN,
        ES,
        EU,
        FA,
        FI,
        FR,
        GA,
        GL,
        HE,
        HI,
        HU,
        HY,
        IT,
        Id,
        JA,
        KO,
        LV,
        Mul,
        NL,
        NO,
        PT,
        RO,
        RU,
        SV,
        TH,
        TR,
        ZhHans,
        ZhHant
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | An <http://tools.ietf.org/html/rfc4646 IETF RFC 4646> language code or @mul@ for multiple languages.
data AnalysisSchemeLanguage
  = AnalysisSchemeLanguage'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AR :: AnalysisSchemeLanguage
pattern AR = AnalysisSchemeLanguage' "ar"

pattern BG :: AnalysisSchemeLanguage
pattern BG = AnalysisSchemeLanguage' "bg"

pattern CA :: AnalysisSchemeLanguage
pattern CA = AnalysisSchemeLanguage' "ca"

pattern CS :: AnalysisSchemeLanguage
pattern CS = AnalysisSchemeLanguage' "cs"

pattern DA :: AnalysisSchemeLanguage
pattern DA = AnalysisSchemeLanguage' "da"

pattern DE :: AnalysisSchemeLanguage
pattern DE = AnalysisSchemeLanguage' "de"

pattern EL :: AnalysisSchemeLanguage
pattern EL = AnalysisSchemeLanguage' "el"

pattern EN :: AnalysisSchemeLanguage
pattern EN = AnalysisSchemeLanguage' "en"

pattern ES :: AnalysisSchemeLanguage
pattern ES = AnalysisSchemeLanguage' "es"

pattern EU :: AnalysisSchemeLanguage
pattern EU = AnalysisSchemeLanguage' "eu"

pattern FA :: AnalysisSchemeLanguage
pattern FA = AnalysisSchemeLanguage' "fa"

pattern FI :: AnalysisSchemeLanguage
pattern FI = AnalysisSchemeLanguage' "fi"

pattern FR :: AnalysisSchemeLanguage
pattern FR = AnalysisSchemeLanguage' "fr"

pattern GA :: AnalysisSchemeLanguage
pattern GA = AnalysisSchemeLanguage' "ga"

pattern GL :: AnalysisSchemeLanguage
pattern GL = AnalysisSchemeLanguage' "gl"

pattern HE :: AnalysisSchemeLanguage
pattern HE = AnalysisSchemeLanguage' "he"

pattern HI :: AnalysisSchemeLanguage
pattern HI = AnalysisSchemeLanguage' "hi"

pattern HU :: AnalysisSchemeLanguage
pattern HU = AnalysisSchemeLanguage' "hu"

pattern HY :: AnalysisSchemeLanguage
pattern HY = AnalysisSchemeLanguage' "hy"

pattern IT :: AnalysisSchemeLanguage
pattern IT = AnalysisSchemeLanguage' "it"

pattern Id :: AnalysisSchemeLanguage
pattern Id = AnalysisSchemeLanguage' "id"

pattern JA :: AnalysisSchemeLanguage
pattern JA = AnalysisSchemeLanguage' "ja"

pattern KO :: AnalysisSchemeLanguage
pattern KO = AnalysisSchemeLanguage' "ko"

pattern LV :: AnalysisSchemeLanguage
pattern LV = AnalysisSchemeLanguage' "lv"

pattern Mul :: AnalysisSchemeLanguage
pattern Mul = AnalysisSchemeLanguage' "mul"

pattern NL :: AnalysisSchemeLanguage
pattern NL = AnalysisSchemeLanguage' "nl"

pattern NO :: AnalysisSchemeLanguage
pattern NO = AnalysisSchemeLanguage' "no"

pattern PT :: AnalysisSchemeLanguage
pattern PT = AnalysisSchemeLanguage' "pt"

pattern RO :: AnalysisSchemeLanguage
pattern RO = AnalysisSchemeLanguage' "ro"

pattern RU :: AnalysisSchemeLanguage
pattern RU = AnalysisSchemeLanguage' "ru"

pattern SV :: AnalysisSchemeLanguage
pattern SV = AnalysisSchemeLanguage' "sv"

pattern TH :: AnalysisSchemeLanguage
pattern TH = AnalysisSchemeLanguage' "th"

pattern TR :: AnalysisSchemeLanguage
pattern TR = AnalysisSchemeLanguage' "tr"

pattern ZhHans :: AnalysisSchemeLanguage
pattern ZhHans = AnalysisSchemeLanguage' "zh-Hans"

pattern ZhHant :: AnalysisSchemeLanguage
pattern ZhHant = AnalysisSchemeLanguage' "zh-Hant"

{-# COMPLETE
  AR,
  BG,
  CA,
  CS,
  DA,
  DE,
  EL,
  EN,
  ES,
  EU,
  FA,
  FI,
  FR,
  GA,
  GL,
  HE,
  HI,
  HU,
  HY,
  IT,
  Id,
  JA,
  KO,
  LV,
  Mul,
  NL,
  NO,
  PT,
  RO,
  RU,
  SV,
  TH,
  TR,
  ZhHans,
  ZhHant,
  AnalysisSchemeLanguage'
  #-}

instance FromText AnalysisSchemeLanguage where
  parser = (AnalysisSchemeLanguage' . mk) <$> takeText

instance ToText AnalysisSchemeLanguage where
  toText (AnalysisSchemeLanguage' ci) = original ci

instance Hashable AnalysisSchemeLanguage

instance NFData AnalysisSchemeLanguage

instance ToByteString AnalysisSchemeLanguage

instance ToQuery AnalysisSchemeLanguage

instance ToHeader AnalysisSchemeLanguage

instance FromXML AnalysisSchemeLanguage where
  parseXML = parseXMLText "AnalysisSchemeLanguage"
