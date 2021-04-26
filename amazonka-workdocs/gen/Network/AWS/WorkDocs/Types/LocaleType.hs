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
-- Module      : Network.AWS.WorkDocs.Types.LocaleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.LocaleType
  ( LocaleType
      ( ..,
        LocaleTypeDE,
        LocaleTypeDefault,
        LocaleTypeEN,
        LocaleTypeES,
        LocaleTypeFR,
        LocaleTypeJA,
        LocaleTypeKO,
        LocaleTypePtBR,
        LocaleTypeRU,
        LocaleTypeZhCN,
        LocaleTypeZhTW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LocaleType = LocaleType'
  { fromLocaleType ::
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

pattern LocaleTypeDE :: LocaleType
pattern LocaleTypeDE = LocaleType' "de"

pattern LocaleTypeDefault :: LocaleType
pattern LocaleTypeDefault = LocaleType' "default"

pattern LocaleTypeEN :: LocaleType
pattern LocaleTypeEN = LocaleType' "en"

pattern LocaleTypeES :: LocaleType
pattern LocaleTypeES = LocaleType' "es"

pattern LocaleTypeFR :: LocaleType
pattern LocaleTypeFR = LocaleType' "fr"

pattern LocaleTypeJA :: LocaleType
pattern LocaleTypeJA = LocaleType' "ja"

pattern LocaleTypeKO :: LocaleType
pattern LocaleTypeKO = LocaleType' "ko"

pattern LocaleTypePtBR :: LocaleType
pattern LocaleTypePtBR = LocaleType' "pt_BR"

pattern LocaleTypeRU :: LocaleType
pattern LocaleTypeRU = LocaleType' "ru"

pattern LocaleTypeZhCN :: LocaleType
pattern LocaleTypeZhCN = LocaleType' "zh_CN"

pattern LocaleTypeZhTW :: LocaleType
pattern LocaleTypeZhTW = LocaleType' "zh_TW"

{-# COMPLETE
  LocaleTypeDE,
  LocaleTypeDefault,
  LocaleTypeEN,
  LocaleTypeES,
  LocaleTypeFR,
  LocaleTypeJA,
  LocaleTypeKO,
  LocaleTypePtBR,
  LocaleTypeRU,
  LocaleTypeZhCN,
  LocaleTypeZhTW,
  LocaleType'
  #-}

instance Prelude.FromText LocaleType where
  parser = LocaleType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LocaleType where
  toText (LocaleType' x) = x

instance Prelude.Hashable LocaleType

instance Prelude.NFData LocaleType

instance Prelude.ToByteString LocaleType

instance Prelude.ToQuery LocaleType

instance Prelude.ToHeader LocaleType

instance Prelude.ToJSON LocaleType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LocaleType where
  parseJSON = Prelude.parseJSONText "LocaleType"
