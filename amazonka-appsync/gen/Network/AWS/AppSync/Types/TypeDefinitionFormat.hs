{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        JSON,
        Sdl
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TypeDefinitionFormat
  = TypeDefinitionFormat'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern JSON :: TypeDefinitionFormat
pattern JSON = TypeDefinitionFormat' "JSON"

pattern Sdl :: TypeDefinitionFormat
pattern Sdl = TypeDefinitionFormat' "SDL"

{-# COMPLETE
  JSON,
  Sdl,
  TypeDefinitionFormat'
  #-}

instance FromText TypeDefinitionFormat where
  parser = (TypeDefinitionFormat' . mk) <$> takeText

instance ToText TypeDefinitionFormat where
  toText (TypeDefinitionFormat' ci) = original ci

instance Hashable TypeDefinitionFormat

instance NFData TypeDefinitionFormat

instance ToByteString TypeDefinitionFormat

instance ToQuery TypeDefinitionFormat

instance ToHeader TypeDefinitionFormat

instance ToJSON TypeDefinitionFormat where
  toJSON = toJSONText

instance FromJSON TypeDefinitionFormat where
  parseJSON = parseJSONText "TypeDefinitionFormat"
