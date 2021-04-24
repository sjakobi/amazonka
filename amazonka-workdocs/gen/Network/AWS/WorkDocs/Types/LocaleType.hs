{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.LocaleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.LocaleType
  ( LocaleType
      ( ..,
        DE,
        Default,
        EN,
        ES,
        FR,
        JA,
        KO,
        PtBr,
        RU,
        ZhCn,
        ZhTw
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LocaleType = LocaleType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DE :: LocaleType
pattern DE = LocaleType' "de"

pattern Default :: LocaleType
pattern Default = LocaleType' "default"

pattern EN :: LocaleType
pattern EN = LocaleType' "en"

pattern ES :: LocaleType
pattern ES = LocaleType' "es"

pattern FR :: LocaleType
pattern FR = LocaleType' "fr"

pattern JA :: LocaleType
pattern JA = LocaleType' "ja"

pattern KO :: LocaleType
pattern KO = LocaleType' "ko"

pattern PtBr :: LocaleType
pattern PtBr = LocaleType' "pt_BR"

pattern RU :: LocaleType
pattern RU = LocaleType' "ru"

pattern ZhCn :: LocaleType
pattern ZhCn = LocaleType' "zh_CN"

pattern ZhTw :: LocaleType
pattern ZhTw = LocaleType' "zh_TW"

{-# COMPLETE
  DE,
  Default,
  EN,
  ES,
  FR,
  JA,
  KO,
  PtBr,
  RU,
  ZhCn,
  ZhTw,
  LocaleType'
  #-}

instance FromText LocaleType where
  parser = (LocaleType' . mk) <$> takeText

instance ToText LocaleType where
  toText (LocaleType' ci) = original ci

instance Hashable LocaleType

instance NFData LocaleType

instance ToByteString LocaleType

instance ToQuery LocaleType

instance ToHeader LocaleType

instance ToJSON LocaleType where
  toJSON = toJSONText

instance FromJSON LocaleType where
  parseJSON = parseJSONText "LocaleType"
