{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        OIDTSearchableString,
        OIDTString
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OpsItemDataType = OpsItemDataType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OIDTSearchableString :: OpsItemDataType
pattern OIDTSearchableString = OpsItemDataType' "SearchableString"

pattern OIDTString :: OpsItemDataType
pattern OIDTString = OpsItemDataType' "String"

{-# COMPLETE
  OIDTSearchableString,
  OIDTString,
  OpsItemDataType'
  #-}

instance FromText OpsItemDataType where
  parser = (OpsItemDataType' . mk) <$> takeText

instance ToText OpsItemDataType where
  toText (OpsItemDataType' ci) = original ci

instance Hashable OpsItemDataType

instance NFData OpsItemDataType

instance ToByteString OpsItemDataType

instance ToQuery OpsItemDataType

instance ToHeader OpsItemDataType

instance ToJSON OpsItemDataType where
  toJSON = toJSONText

instance FromJSON OpsItemDataType where
  parseJSON = parseJSONText "OpsItemDataType"
