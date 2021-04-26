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
-- Module      : Network.AWS.LexModels.Types.Locale
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.Locale
  ( Locale
      ( ..,
        LocaleDeDE,
        LocaleEnAU,
        LocaleEnGB,
        LocaleEnUS,
        LocaleEs419,
        LocaleEsES,
        LocaleEsUS,
        LocaleFrCA,
        LocaleFrFR,
        LocaleItIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Locale = Locale' {fromLocale :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern LocaleDeDE :: Locale
pattern LocaleDeDE = Locale' "de-DE"

pattern LocaleEnAU :: Locale
pattern LocaleEnAU = Locale' "en-AU"

pattern LocaleEnGB :: Locale
pattern LocaleEnGB = Locale' "en-GB"

pattern LocaleEnUS :: Locale
pattern LocaleEnUS = Locale' "en-US"

pattern LocaleEs419 :: Locale
pattern LocaleEs419 = Locale' "es-419"

pattern LocaleEsES :: Locale
pattern LocaleEsES = Locale' "es-ES"

pattern LocaleEsUS :: Locale
pattern LocaleEsUS = Locale' "es-US"

pattern LocaleFrCA :: Locale
pattern LocaleFrCA = Locale' "fr-CA"

pattern LocaleFrFR :: Locale
pattern LocaleFrFR = Locale' "fr-FR"

pattern LocaleItIT :: Locale
pattern LocaleItIT = Locale' "it-IT"

{-# COMPLETE
  LocaleDeDE,
  LocaleEnAU,
  LocaleEnGB,
  LocaleEnUS,
  LocaleEs419,
  LocaleEsES,
  LocaleEsUS,
  LocaleFrCA,
  LocaleFrFR,
  LocaleItIT,
  Locale'
  #-}

instance Prelude.FromText Locale where
  parser = Locale' Prelude.<$> Prelude.takeText

instance Prelude.ToText Locale where
  toText (Locale' x) = x

instance Prelude.Hashable Locale

instance Prelude.NFData Locale

instance Prelude.ToByteString Locale

instance Prelude.ToQuery Locale

instance Prelude.ToHeader Locale

instance Prelude.ToJSON Locale where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Locale where
  parseJSON = Prelude.parseJSONText "Locale"
