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
-- Module      : Network.AWS.CloudSearch.Types.IndexFieldType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.IndexFieldType
  ( IndexFieldType
      ( ..,
        IndexFieldTypeDate,
        IndexFieldTypeDateArray,
        IndexFieldTypeDouble,
        IndexFieldTypeDoubleArray,
        IndexFieldTypeInt,
        IndexFieldTypeIntArray,
        IndexFieldTypeLatlon,
        IndexFieldTypeLiteral,
        IndexFieldTypeLiteralArray,
        IndexFieldTypeText,
        IndexFieldTypeTextArray
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of field. The valid options for a field depend on the field
-- type. For more information about the supported field types, see
-- <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html Configuring Index Fields>
-- in the /Amazon CloudSearch Developer Guide/.
newtype IndexFieldType = IndexFieldType'
  { fromIndexFieldType ::
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

pattern IndexFieldTypeDate :: IndexFieldType
pattern IndexFieldTypeDate = IndexFieldType' "date"

pattern IndexFieldTypeDateArray :: IndexFieldType
pattern IndexFieldTypeDateArray = IndexFieldType' "date-array"

pattern IndexFieldTypeDouble :: IndexFieldType
pattern IndexFieldTypeDouble = IndexFieldType' "double"

pattern IndexFieldTypeDoubleArray :: IndexFieldType
pattern IndexFieldTypeDoubleArray = IndexFieldType' "double-array"

pattern IndexFieldTypeInt :: IndexFieldType
pattern IndexFieldTypeInt = IndexFieldType' "int"

pattern IndexFieldTypeIntArray :: IndexFieldType
pattern IndexFieldTypeIntArray = IndexFieldType' "int-array"

pattern IndexFieldTypeLatlon :: IndexFieldType
pattern IndexFieldTypeLatlon = IndexFieldType' "latlon"

pattern IndexFieldTypeLiteral :: IndexFieldType
pattern IndexFieldTypeLiteral = IndexFieldType' "literal"

pattern IndexFieldTypeLiteralArray :: IndexFieldType
pattern IndexFieldTypeLiteralArray = IndexFieldType' "literal-array"

pattern IndexFieldTypeText :: IndexFieldType
pattern IndexFieldTypeText = IndexFieldType' "text"

pattern IndexFieldTypeTextArray :: IndexFieldType
pattern IndexFieldTypeTextArray = IndexFieldType' "text-array"

{-# COMPLETE
  IndexFieldTypeDate,
  IndexFieldTypeDateArray,
  IndexFieldTypeDouble,
  IndexFieldTypeDoubleArray,
  IndexFieldTypeInt,
  IndexFieldTypeIntArray,
  IndexFieldTypeLatlon,
  IndexFieldTypeLiteral,
  IndexFieldTypeLiteralArray,
  IndexFieldTypeText,
  IndexFieldTypeTextArray,
  IndexFieldType'
  #-}

instance Prelude.FromText IndexFieldType where
  parser = IndexFieldType' Prelude.<$> Prelude.takeText

instance Prelude.ToText IndexFieldType where
  toText (IndexFieldType' x) = x

instance Prelude.Hashable IndexFieldType

instance Prelude.NFData IndexFieldType

instance Prelude.ToByteString IndexFieldType

instance Prelude.ToQuery IndexFieldType

instance Prelude.ToHeader IndexFieldType

instance Prelude.FromXML IndexFieldType where
  parseXML = Prelude.parseXMLText "IndexFieldType"
