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
-- Module      : Network.AWS.SSM.Types.OpsItemDataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemDataType
  ( OpsItemDataType
      ( ..,
        OpsItemDataTypeSearchableString,
        OpsItemDataTypeString
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OpsItemDataType = OpsItemDataType'
  { fromOpsItemDataType ::
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

pattern OpsItemDataTypeSearchableString :: OpsItemDataType
pattern OpsItemDataTypeSearchableString = OpsItemDataType' "SearchableString"

pattern OpsItemDataTypeString :: OpsItemDataType
pattern OpsItemDataTypeString = OpsItemDataType' "String"

{-# COMPLETE
  OpsItemDataTypeSearchableString,
  OpsItemDataTypeString,
  OpsItemDataType'
  #-}

instance Prelude.FromText OpsItemDataType where
  parser = OpsItemDataType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OpsItemDataType where
  toText (OpsItemDataType' x) = x

instance Prelude.Hashable OpsItemDataType

instance Prelude.NFData OpsItemDataType

instance Prelude.ToByteString OpsItemDataType

instance Prelude.ToQuery OpsItemDataType

instance Prelude.ToHeader OpsItemDataType

instance Prelude.ToJSON OpsItemDataType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OpsItemDataType where
  parseJSON = Prelude.parseJSONText "OpsItemDataType"
