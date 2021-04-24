{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.Locale
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.Locale
  ( Locale
      ( ..,
        DeDe,
        EnAu,
        EnGb,
        EnUs,
        Es419,
        EsEs,
        EsUs,
        FrCa,
        FrFr,
        ItIt
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Locale = Locale' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DeDe :: Locale
pattern DeDe = Locale' "de-DE"

pattern EnAu :: Locale
pattern EnAu = Locale' "en-AU"

pattern EnGb :: Locale
pattern EnGb = Locale' "en-GB"

pattern EnUs :: Locale
pattern EnUs = Locale' "en-US"

pattern Es419 :: Locale
pattern Es419 = Locale' "es-419"

pattern EsEs :: Locale
pattern EsEs = Locale' "es-ES"

pattern EsUs :: Locale
pattern EsUs = Locale' "es-US"

pattern FrCa :: Locale
pattern FrCa = Locale' "fr-CA"

pattern FrFr :: Locale
pattern FrFr = Locale' "fr-FR"

pattern ItIt :: Locale
pattern ItIt = Locale' "it-IT"

{-# COMPLETE
  DeDe,
  EnAu,
  EnGb,
  EnUs,
  Es419,
  EsEs,
  EsUs,
  FrCa,
  FrFr,
  ItIt,
  Locale'
  #-}

instance FromText Locale where
  parser = (Locale' . mk) <$> takeText

instance ToText Locale where
  toText (Locale' ci) = original ci

instance Hashable Locale

instance NFData Locale

instance ToByteString Locale

instance ToQuery Locale

instance ToHeader Locale

instance ToJSON Locale where
  toJSON = toJSONText

instance FromJSON Locale where
  parseJSON = parseJSONText "Locale"
