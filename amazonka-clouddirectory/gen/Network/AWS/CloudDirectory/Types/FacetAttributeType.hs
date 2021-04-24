{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.FacetAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.FacetAttributeType
  ( FacetAttributeType
      ( ..,
        Binary,
        Boolean,
        Datetime,
        Number,
        String,
        Variant
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FacetAttributeType
  = FacetAttributeType'
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

pattern Binary :: FacetAttributeType
pattern Binary = FacetAttributeType' "BINARY"

pattern Boolean :: FacetAttributeType
pattern Boolean = FacetAttributeType' "BOOLEAN"

pattern Datetime :: FacetAttributeType
pattern Datetime = FacetAttributeType' "DATETIME"

pattern Number :: FacetAttributeType
pattern Number = FacetAttributeType' "NUMBER"

pattern String :: FacetAttributeType
pattern String = FacetAttributeType' "STRING"

pattern Variant :: FacetAttributeType
pattern Variant = FacetAttributeType' "VARIANT"

{-# COMPLETE
  Binary,
  Boolean,
  Datetime,
  Number,
  String,
  Variant,
  FacetAttributeType'
  #-}

instance FromText FacetAttributeType where
  parser = (FacetAttributeType' . mk) <$> takeText

instance ToText FacetAttributeType where
  toText (FacetAttributeType' ci) = original ci

instance Hashable FacetAttributeType

instance NFData FacetAttributeType

instance ToByteString FacetAttributeType

instance ToQuery FacetAttributeType

instance ToHeader FacetAttributeType

instance ToJSON FacetAttributeType where
  toJSON = toJSONText

instance FromJSON FacetAttributeType where
  parseJSON = parseJSONText "FacetAttributeType"
