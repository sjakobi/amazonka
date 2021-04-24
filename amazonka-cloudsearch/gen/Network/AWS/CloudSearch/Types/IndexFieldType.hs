{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.IndexFieldType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.IndexFieldType
  ( IndexFieldType
      ( ..,
        Date,
        DateArray,
        Double,
        DoubleArray,
        Int,
        IntArray,
        Latlon,
        Literal,
        LiteralArray,
        Text,
        TextArray
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of field. The valid options for a field depend on the field type. For more information about the supported field types, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html Configuring Index Fields> in the /Amazon CloudSearch Developer Guide/ .
data IndexFieldType = IndexFieldType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Date :: IndexFieldType
pattern Date = IndexFieldType' "date"

pattern DateArray :: IndexFieldType
pattern DateArray = IndexFieldType' "date-array"

pattern Double :: IndexFieldType
pattern Double = IndexFieldType' "double"

pattern DoubleArray :: IndexFieldType
pattern DoubleArray = IndexFieldType' "double-array"

pattern Int :: IndexFieldType
pattern Int = IndexFieldType' "int"

pattern IntArray :: IndexFieldType
pattern IntArray = IndexFieldType' "int-array"

pattern Latlon :: IndexFieldType
pattern Latlon = IndexFieldType' "latlon"

pattern Literal :: IndexFieldType
pattern Literal = IndexFieldType' "literal"

pattern LiteralArray :: IndexFieldType
pattern LiteralArray = IndexFieldType' "literal-array"

pattern Text :: IndexFieldType
pattern Text = IndexFieldType' "text"

pattern TextArray :: IndexFieldType
pattern TextArray = IndexFieldType' "text-array"

{-# COMPLETE
  Date,
  DateArray,
  Double,
  DoubleArray,
  Int,
  IntArray,
  Latlon,
  Literal,
  LiteralArray,
  Text,
  TextArray,
  IndexFieldType'
  #-}

instance FromText IndexFieldType where
  parser = (IndexFieldType' . mk) <$> takeText

instance ToText IndexFieldType where
  toText (IndexFieldType' ci) = original ci

instance Hashable IndexFieldType

instance NFData IndexFieldType

instance ToByteString IndexFieldType

instance ToQuery IndexFieldType

instance ToHeader IndexFieldType

instance FromXML IndexFieldType where
  parseXML = parseXMLText "IndexFieldType"
