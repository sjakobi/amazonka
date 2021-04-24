{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DynamoKeyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DynamoKeyType
  ( DynamoKeyType
      ( ..,
        Number,
        String
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DynamoKeyType = DynamoKeyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Number :: DynamoKeyType
pattern Number = DynamoKeyType' "NUMBER"

pattern String :: DynamoKeyType
pattern String = DynamoKeyType' "STRING"

{-# COMPLETE
  Number,
  String,
  DynamoKeyType'
  #-}

instance FromText DynamoKeyType where
  parser = (DynamoKeyType' . mk) <$> takeText

instance ToText DynamoKeyType where
  toText (DynamoKeyType' ci) = original ci

instance Hashable DynamoKeyType

instance NFData DynamoKeyType

instance ToByteString DynamoKeyType

instance ToQuery DynamoKeyType

instance ToHeader DynamoKeyType

instance ToJSON DynamoKeyType where
  toJSON = toJSONText

instance FromJSON DynamoKeyType where
  parseJSON = parseJSONText "DynamoKeyType"
