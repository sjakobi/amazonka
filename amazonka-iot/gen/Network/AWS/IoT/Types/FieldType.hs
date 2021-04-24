{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.FieldType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.FieldType
  ( FieldType
      ( ..,
        FTBoolean,
        FTNumber,
        FTString
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FieldType = FieldType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FTBoolean :: FieldType
pattern FTBoolean = FieldType' "Boolean"

pattern FTNumber :: FieldType
pattern FTNumber = FieldType' "Number"

pattern FTString :: FieldType
pattern FTString = FieldType' "String"

{-# COMPLETE
  FTBoolean,
  FTNumber,
  FTString,
  FieldType'
  #-}

instance FromText FieldType where
  parser = (FieldType' . mk) <$> takeText

instance ToText FieldType where
  toText (FieldType' ci) = original ci

instance Hashable FieldType

instance NFData FieldType

instance ToByteString FieldType

instance ToQuery FieldType

instance ToHeader FieldType

instance ToJSON FieldType where
  toJSON = toJSONText

instance FromJSON FieldType where
  parseJSON = parseJSONText "FieldType"
