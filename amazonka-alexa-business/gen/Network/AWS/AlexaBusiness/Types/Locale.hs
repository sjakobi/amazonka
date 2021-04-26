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
-- Module      : Network.AWS.AlexaBusiness.Types.Locale
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Locale
  ( Locale
      ( ..,
        LocaleEnUS
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

pattern LocaleEnUS :: Locale
pattern LocaleEnUS = Locale' "en-US"

{-# COMPLETE
  LocaleEnUS,
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
