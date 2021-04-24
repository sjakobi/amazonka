{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.LanguageCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.LanguageCode
  ( LanguageCode
      ( ..,
        AR,
        DE,
        EN,
        ES,
        FR,
        HI,
        IT,
        JA,
        KO,
        PT,
        ZH,
        ZhTw
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LanguageCode = LanguageCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AR :: LanguageCode
pattern AR = LanguageCode' "ar"

pattern DE :: LanguageCode
pattern DE = LanguageCode' "de"

pattern EN :: LanguageCode
pattern EN = LanguageCode' "en"

pattern ES :: LanguageCode
pattern ES = LanguageCode' "es"

pattern FR :: LanguageCode
pattern FR = LanguageCode' "fr"

pattern HI :: LanguageCode
pattern HI = LanguageCode' "hi"

pattern IT :: LanguageCode
pattern IT = LanguageCode' "it"

pattern JA :: LanguageCode
pattern JA = LanguageCode' "ja"

pattern KO :: LanguageCode
pattern KO = LanguageCode' "ko"

pattern PT :: LanguageCode
pattern PT = LanguageCode' "pt"

pattern ZH :: LanguageCode
pattern ZH = LanguageCode' "zh"

pattern ZhTw :: LanguageCode
pattern ZhTw = LanguageCode' "zh-TW"

{-# COMPLETE
  AR,
  DE,
  EN,
  ES,
  FR,
  HI,
  IT,
  JA,
  KO,
  PT,
  ZH,
  ZhTw,
  LanguageCode'
  #-}

instance FromText LanguageCode where
  parser = (LanguageCode' . mk) <$> takeText

instance ToText LanguageCode where
  toText (LanguageCode' ci) = original ci

instance Hashable LanguageCode

instance NFData LanguageCode

instance ToByteString LanguageCode

instance ToQuery LanguageCode

instance ToHeader LanguageCode

instance ToJSON LanguageCode where
  toJSON = toJSONText

instance FromJSON LanguageCode where
  parseJSON = parseJSONText "LanguageCode"
