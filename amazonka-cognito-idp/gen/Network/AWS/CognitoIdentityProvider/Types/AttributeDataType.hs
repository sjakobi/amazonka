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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AttributeDataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AttributeDataType
  ( AttributeDataType
      ( ..,
        AttributeDataTypeBoolean,
        AttributeDataTypeDateTime,
        AttributeDataTypeNumber,
        AttributeDataTypeString
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AttributeDataType = AttributeDataType'
  { fromAttributeDataType ::
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

pattern AttributeDataTypeBoolean :: AttributeDataType
pattern AttributeDataTypeBoolean = AttributeDataType' "Boolean"

pattern AttributeDataTypeDateTime :: AttributeDataType
pattern AttributeDataTypeDateTime = AttributeDataType' "DateTime"

pattern AttributeDataTypeNumber :: AttributeDataType
pattern AttributeDataTypeNumber = AttributeDataType' "Number"

pattern AttributeDataTypeString :: AttributeDataType
pattern AttributeDataTypeString = AttributeDataType' "String"

{-# COMPLETE
  AttributeDataTypeBoolean,
  AttributeDataTypeDateTime,
  AttributeDataTypeNumber,
  AttributeDataTypeString,
  AttributeDataType'
  #-}

instance Prelude.FromText AttributeDataType where
  parser = AttributeDataType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AttributeDataType where
  toText (AttributeDataType' x) = x

instance Prelude.Hashable AttributeDataType

instance Prelude.NFData AttributeDataType

instance Prelude.ToByteString AttributeDataType

instance Prelude.ToQuery AttributeDataType

instance Prelude.ToHeader AttributeDataType

instance Prelude.ToJSON AttributeDataType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AttributeDataType where
  parseJSON = Prelude.parseJSONText "AttributeDataType"
