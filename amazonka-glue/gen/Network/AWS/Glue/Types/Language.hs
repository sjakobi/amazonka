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
-- Module      : Network.AWS.Glue.Types.Language
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Language
  ( Language
      ( ..,
        LanguagePYTHON,
        LanguageSCALA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Language = Language'
  { fromLanguage ::
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

pattern LanguagePYTHON :: Language
pattern LanguagePYTHON = Language' "PYTHON"

pattern LanguageSCALA :: Language
pattern LanguageSCALA = Language' "SCALA"

{-# COMPLETE
  LanguagePYTHON,
  LanguageSCALA,
  Language'
  #-}

instance Prelude.FromText Language where
  parser = Language' Prelude.<$> Prelude.takeText

instance Prelude.ToText Language where
  toText (Language' x) = x

instance Prelude.Hashable Language

instance Prelude.NFData Language

instance Prelude.ToByteString Language

instance Prelude.ToQuery Language

instance Prelude.ToHeader Language

instance Prelude.ToJSON Language where
  toJSON = Prelude.toJSONText
