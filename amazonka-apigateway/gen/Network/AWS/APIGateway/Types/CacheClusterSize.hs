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
-- Module      : Network.AWS.APIGateway.Types.CacheClusterSize
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.CacheClusterSize
  ( CacheClusterSize
      ( ..,
        CacheClusterSizeD0_5,
        CacheClusterSizeD118,
        CacheClusterSizeD13_5,
        CacheClusterSizeD1_6,
        CacheClusterSizeD237,
        CacheClusterSizeD28_4,
        CacheClusterSizeD58_2,
        CacheClusterSizeD6_1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Returns the size of the __CacheCluster__.
newtype CacheClusterSize = CacheClusterSize'
  { fromCacheClusterSize ::
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

pattern CacheClusterSizeD0_5 :: CacheClusterSize
pattern CacheClusterSizeD0_5 = CacheClusterSize' "0.5"

pattern CacheClusterSizeD118 :: CacheClusterSize
pattern CacheClusterSizeD118 = CacheClusterSize' "118"

pattern CacheClusterSizeD13_5 :: CacheClusterSize
pattern CacheClusterSizeD13_5 = CacheClusterSize' "13.5"

pattern CacheClusterSizeD1_6 :: CacheClusterSize
pattern CacheClusterSizeD1_6 = CacheClusterSize' "1.6"

pattern CacheClusterSizeD237 :: CacheClusterSize
pattern CacheClusterSizeD237 = CacheClusterSize' "237"

pattern CacheClusterSizeD28_4 :: CacheClusterSize
pattern CacheClusterSizeD28_4 = CacheClusterSize' "28.4"

pattern CacheClusterSizeD58_2 :: CacheClusterSize
pattern CacheClusterSizeD58_2 = CacheClusterSize' "58.2"

pattern CacheClusterSizeD6_1 :: CacheClusterSize
pattern CacheClusterSizeD6_1 = CacheClusterSize' "6.1"

{-# COMPLETE
  CacheClusterSizeD0_5,
  CacheClusterSizeD118,
  CacheClusterSizeD13_5,
  CacheClusterSizeD1_6,
  CacheClusterSizeD237,
  CacheClusterSizeD28_4,
  CacheClusterSizeD58_2,
  CacheClusterSizeD6_1,
  CacheClusterSize'
  #-}

instance Prelude.FromText CacheClusterSize where
  parser = CacheClusterSize' Prelude.<$> Prelude.takeText

instance Prelude.ToText CacheClusterSize where
  toText (CacheClusterSize' x) = x

instance Prelude.Hashable CacheClusterSize

instance Prelude.NFData CacheClusterSize

instance Prelude.ToByteString CacheClusterSize

instance Prelude.ToQuery CacheClusterSize

instance Prelude.ToHeader CacheClusterSize

instance Prelude.ToJSON CacheClusterSize where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CacheClusterSize where
  parseJSON = Prelude.parseJSONText "CacheClusterSize"
