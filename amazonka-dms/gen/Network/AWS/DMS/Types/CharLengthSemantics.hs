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
-- Module      : Network.AWS.DMS.Types.CharLengthSemantics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.CharLengthSemantics
  ( CharLengthSemantics
      ( ..,
        CharLengthSemanticsByte,
        CharLengthSemanticsChar,
        CharLengthSemanticsDefault
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CharLengthSemantics = CharLengthSemantics'
  { fromCharLengthSemantics ::
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

pattern CharLengthSemanticsByte :: CharLengthSemantics
pattern CharLengthSemanticsByte = CharLengthSemantics' "byte"

pattern CharLengthSemanticsChar :: CharLengthSemantics
pattern CharLengthSemanticsChar = CharLengthSemantics' "char"

pattern CharLengthSemanticsDefault :: CharLengthSemantics
pattern CharLengthSemanticsDefault = CharLengthSemantics' "default"

{-# COMPLETE
  CharLengthSemanticsByte,
  CharLengthSemanticsChar,
  CharLengthSemanticsDefault,
  CharLengthSemantics'
  #-}

instance Prelude.FromText CharLengthSemantics where
  parser = CharLengthSemantics' Prelude.<$> Prelude.takeText

instance Prelude.ToText CharLengthSemantics where
  toText (CharLengthSemantics' x) = x

instance Prelude.Hashable CharLengthSemantics

instance Prelude.NFData CharLengthSemantics

instance Prelude.ToByteString CharLengthSemantics

instance Prelude.ToQuery CharLengthSemantics

instance Prelude.ToHeader CharLengthSemantics

instance Prelude.ToJSON CharLengthSemantics where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CharLengthSemantics where
  parseJSON = Prelude.parseJSONText "CharLengthSemantics"
