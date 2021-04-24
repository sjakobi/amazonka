{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.CacheEngineVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CacheEngineVersion where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides all of the details about a particular cache engine version.
--
--
--
-- /See:/ 'cacheEngineVersion' smart constructor.
data CacheEngineVersion = CacheEngineVersion'
  { _cevCacheEngineDescription ::
      !(Maybe Text),
    _cevCacheEngineVersionDescription ::
      !(Maybe Text),
    _cevEngineVersion ::
      !(Maybe Text),
    _cevCacheParameterGroupFamily ::
      !(Maybe Text),
    _cevEngine :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CacheEngineVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cevCacheEngineDescription' - The description of the cache engine.
--
-- * 'cevCacheEngineVersionDescription' - The description of the cache engine version.
--
-- * 'cevEngineVersion' - The version number of the cache engine.
--
-- * 'cevCacheParameterGroupFamily' - The name of the cache parameter group family associated with this cache engine. Valid values are: @memcached1.4@ | @memcached1.5@ | @memcached1.6@ | @redis2.6@ | @redis2.8@ | @redis3.2@ | @redis4.0@ | @redis5.0@ | @redis6.x@ |
--
-- * 'cevEngine' - The name of the cache engine.
cacheEngineVersion ::
  CacheEngineVersion
cacheEngineVersion =
  CacheEngineVersion'
    { _cevCacheEngineDescription =
        Nothing,
      _cevCacheEngineVersionDescription = Nothing,
      _cevEngineVersion = Nothing,
      _cevCacheParameterGroupFamily = Nothing,
      _cevEngine = Nothing
    }

-- | The description of the cache engine.
cevCacheEngineDescription :: Lens' CacheEngineVersion (Maybe Text)
cevCacheEngineDescription = lens _cevCacheEngineDescription (\s a -> s {_cevCacheEngineDescription = a})

-- | The description of the cache engine version.
cevCacheEngineVersionDescription :: Lens' CacheEngineVersion (Maybe Text)
cevCacheEngineVersionDescription = lens _cevCacheEngineVersionDescription (\s a -> s {_cevCacheEngineVersionDescription = a})

-- | The version number of the cache engine.
cevEngineVersion :: Lens' CacheEngineVersion (Maybe Text)
cevEngineVersion = lens _cevEngineVersion (\s a -> s {_cevEngineVersion = a})

-- | The name of the cache parameter group family associated with this cache engine. Valid values are: @memcached1.4@ | @memcached1.5@ | @memcached1.6@ | @redis2.6@ | @redis2.8@ | @redis3.2@ | @redis4.0@ | @redis5.0@ | @redis6.x@ |
cevCacheParameterGroupFamily :: Lens' CacheEngineVersion (Maybe Text)
cevCacheParameterGroupFamily = lens _cevCacheParameterGroupFamily (\s a -> s {_cevCacheParameterGroupFamily = a})

-- | The name of the cache engine.
cevEngine :: Lens' CacheEngineVersion (Maybe Text)
cevEngine = lens _cevEngine (\s a -> s {_cevEngine = a})

instance FromXML CacheEngineVersion where
  parseXML x =
    CacheEngineVersion'
      <$> (x .@? "CacheEngineDescription")
      <*> (x .@? "CacheEngineVersionDescription")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "CacheParameterGroupFamily")
      <*> (x .@? "Engine")

instance Hashable CacheEngineVersion

instance NFData CacheEngineVersion
