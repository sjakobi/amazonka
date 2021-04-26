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
-- Module      : Network.AWS.Comprehend.Types.LanguageCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.LanguageCode
  ( LanguageCode
      ( ..,
        LanguageCodeAR,
        LanguageCodeDE,
        LanguageCodeEN,
        LanguageCodeES,
        LanguageCodeFR,
        LanguageCodeHI,
        LanguageCodeIT,
        LanguageCodeJA,
        LanguageCodeKO,
        LanguageCodePT,
        LanguageCodeZH,
        LanguageCodeZhTW
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

pattern LanguageCodeAR :: LanguageCode
pattern LanguageCodeAR = LanguageCode' "ar"

pattern LanguageCodeDE :: LanguageCode
pattern LanguageCodeDE = LanguageCode' "de"

pattern LanguageCodeEN :: LanguageCode
pattern LanguageCodeEN = LanguageCode' "en"

pattern LanguageCodeES :: LanguageCode
pattern LanguageCodeES = LanguageCode' "es"

pattern LanguageCodeFR :: LanguageCode
pattern LanguageCodeFR = LanguageCode' "fr"

pattern LanguageCodeHI :: LanguageCode
pattern LanguageCodeHI = LanguageCode' "hi"

pattern LanguageCodeIT :: LanguageCode
pattern LanguageCodeIT = LanguageCode' "it"

pattern LanguageCodeJA :: LanguageCode
pattern LanguageCodeJA = LanguageCode' "ja"

pattern LanguageCodeKO :: LanguageCode
pattern LanguageCodeKO = LanguageCode' "ko"

pattern LanguageCodePT :: LanguageCode
pattern LanguageCodePT = LanguageCode' "pt"

pattern LanguageCodeZH :: LanguageCode
pattern LanguageCodeZH = LanguageCode' "zh"

pattern LanguageCodeZhTW :: LanguageCode
pattern LanguageCodeZhTW = LanguageCode' "zh-TW"

{-# COMPLETE
  LanguageCodeAR,
  LanguageCodeDE,
  LanguageCodeEN,
  LanguageCodeES,
  LanguageCodeFR,
  LanguageCodeHI,
  LanguageCodeIT,
  LanguageCodeJA,
  LanguageCodeKO,
  LanguageCodePT,
  LanguageCodeZH,
  LanguageCodeZhTW,
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
