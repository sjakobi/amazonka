{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.KeyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.KeyType
  ( KeyType
      ( ..,
        Hash,
        Range
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data KeyType = KeyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Hash :: KeyType
pattern Hash = KeyType' "HASH"

pattern Range :: KeyType
pattern Range = KeyType' "RANGE"

{-# COMPLETE
  Hash,
  Range,
  KeyType'
  #-}

instance FromText KeyType where
  parser = (KeyType' . mk) <$> takeText

instance ToText KeyType where
  toText (KeyType' ci) = original ci

instance Hashable KeyType

instance NFData KeyType

instance ToByteString KeyType

instance ToQuery KeyType

instance ToHeader KeyType

instance ToJSON KeyType where
  toJSON = toJSONText

instance FromJSON KeyType where
  parseJSON = parseJSONText "KeyType"
