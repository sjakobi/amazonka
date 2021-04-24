{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.CacheMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.CacheMode
  ( CacheMode
      ( ..,
        LocalCustomCache,
        LocalDockerLayerCache,
        LocalSourceCache
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CacheMode = CacheMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LocalCustomCache :: CacheMode
pattern LocalCustomCache = CacheMode' "LOCAL_CUSTOM_CACHE"

pattern LocalDockerLayerCache :: CacheMode
pattern LocalDockerLayerCache = CacheMode' "LOCAL_DOCKER_LAYER_CACHE"

pattern LocalSourceCache :: CacheMode
pattern LocalSourceCache = CacheMode' "LOCAL_SOURCE_CACHE"

{-# COMPLETE
  LocalCustomCache,
  LocalDockerLayerCache,
  LocalSourceCache,
  CacheMode'
  #-}

instance FromText CacheMode where
  parser = (CacheMode' . mk) <$> takeText

instance ToText CacheMode where
  toText (CacheMode' ci) = original ci

instance Hashable CacheMode

instance NFData CacheMode

instance ToByteString CacheMode

instance ToQuery CacheMode

instance ToHeader CacheMode

instance ToJSON CacheMode where
  toJSON = toJSONText

instance FromJSON CacheMode where
  parseJSON = parseJSONText "CacheMode"
