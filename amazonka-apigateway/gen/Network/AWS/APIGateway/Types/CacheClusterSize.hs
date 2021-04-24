{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.CacheClusterSize
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.CacheClusterSize
  ( CacheClusterSize
      ( ..,
        D0_5,
        D118,
        D13_5,
        D1_6,
        D237,
        D28_4,
        D58_2,
        D6_1
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Returns the size of the __CacheCluster__ .
data CacheClusterSize = CacheClusterSize' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern D0_5 :: CacheClusterSize
pattern D0_5 = CacheClusterSize' "0.5"

pattern D118 :: CacheClusterSize
pattern D118 = CacheClusterSize' "118"

pattern D13_5 :: CacheClusterSize
pattern D13_5 = CacheClusterSize' "13.5"

pattern D1_6 :: CacheClusterSize
pattern D1_6 = CacheClusterSize' "1.6"

pattern D237 :: CacheClusterSize
pattern D237 = CacheClusterSize' "237"

pattern D28_4 :: CacheClusterSize
pattern D28_4 = CacheClusterSize' "28.4"

pattern D58_2 :: CacheClusterSize
pattern D58_2 = CacheClusterSize' "58.2"

pattern D6_1 :: CacheClusterSize
pattern D6_1 = CacheClusterSize' "6.1"

{-# COMPLETE
  D0_5,
  D118,
  D13_5,
  D1_6,
  D237,
  D28_4,
  D58_2,
  D6_1,
  CacheClusterSize'
  #-}

instance FromText CacheClusterSize where
  parser = (CacheClusterSize' . mk) <$> takeText

instance ToText CacheClusterSize where
  toText (CacheClusterSize' ci) = original ci

instance Hashable CacheClusterSize

instance NFData CacheClusterSize

instance ToByteString CacheClusterSize

instance ToQuery CacheClusterSize

instance ToHeader CacheClusterSize

instance ToJSON CacheClusterSize where
  toJSON = toJSONText

instance FromJSON CacheClusterSize where
  parseJSON = parseJSONText "CacheClusterSize"
