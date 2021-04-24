{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.CacheType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.CacheType
  ( CacheType
      ( ..,
        CTLocal,
        CTNoCache,
        CTS3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CacheType = CacheType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CTLocal :: CacheType
pattern CTLocal = CacheType' "LOCAL"

pattern CTNoCache :: CacheType
pattern CTNoCache = CacheType' "NO_CACHE"

pattern CTS3 :: CacheType
pattern CTS3 = CacheType' "S3"

{-# COMPLETE
  CTLocal,
  CTNoCache,
  CTS3,
  CacheType'
  #-}

instance FromText CacheType where
  parser = (CacheType' . mk) <$> takeText

instance ToText CacheType where
  toText (CacheType' ci) = original ci

instance Hashable CacheType

instance NFData CacheType

instance ToByteString CacheType

instance ToQuery CacheType

instance ToHeader CacheType

instance ToJSON CacheType where
  toJSON = toJSONText

instance FromJSON CacheType where
  parseJSON = parseJSONText "CacheType"
