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
-- Module      : Network.AWS.AppSync.Types.TypeDefinitionFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.TypeDefinitionFormat
  ( TypeDefinitionFormat
      ( ..,
        TypeDefinitionFormatJSON,
        TypeDefinitionFormatSDL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TypeDefinitionFormat = TypeDefinitionFormat'
  { fromTypeDefinitionFormat ::
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

pattern TypeDefinitionFormatJSON :: TypeDefinitionFormat
pattern TypeDefinitionFormatJSON = TypeDefinitionFormat' "JSON"

pattern TypeDefinitionFormatSDL :: TypeDefinitionFormat
pattern TypeDefinitionFormatSDL = TypeDefinitionFormat' "SDL"

{-# COMPLETE
  TypeDefinitionFormatJSON,
  TypeDefinitionFormatSDL,
  TypeDefinitionFormat'
  #-}

instance Prelude.FromText TypeDefinitionFormat where
  parser = TypeDefinitionFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText TypeDefinitionFormat where
  toText (TypeDefinitionFormat' x) = x

instance Prelude.Hashable TypeDefinitionFormat

instance Prelude.NFData TypeDefinitionFormat

instance Prelude.ToByteString TypeDefinitionFormat

instance Prelude.ToQuery TypeDefinitionFormat

instance Prelude.ToHeader TypeDefinitionFormat

instance Prelude.ToJSON TypeDefinitionFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TypeDefinitionFormat where
  parseJSON = Prelude.parseJSONText "TypeDefinitionFormat"
