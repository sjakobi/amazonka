{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.CacheParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CacheParameterGroup where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a @CreateCacheParameterGroup@ operation.
--
--
--
-- /See:/ 'cacheParameterGroup' smart constructor.
data CacheParameterGroup = CacheParameterGroup'
  { _cpgIsGlobal ::
      !(Maybe Bool),
    _cpgARN :: !(Maybe Text),
    _cpgCacheParameterGroupName ::
      !(Maybe Text),
    _cpgCacheParameterGroupFamily ::
      !(Maybe Text),
    _cpgDescription ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CacheParameterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpgIsGlobal' - Indicates whether the parameter group is associated with a Global Datastore
--
-- * 'cpgARN' - The ARN (Amazon Resource Name) of the cache parameter group.
--
-- * 'cpgCacheParameterGroupName' - The name of the cache parameter group.
--
-- * 'cpgCacheParameterGroupFamily' - The name of the cache parameter group family that this cache parameter group is compatible with. Valid values are: @memcached1.4@ | @memcached1.5@ | @memcached1.6@ | @redis2.6@ | @redis2.8@ | @redis3.2@ | @redis4.0@ | @redis5.0@ | @redis6.x@ |
--
-- * 'cpgDescription' - The description for this cache parameter group.
cacheParameterGroup ::
  CacheParameterGroup
cacheParameterGroup =
  CacheParameterGroup'
    { _cpgIsGlobal = Nothing,
      _cpgARN = Nothing,
      _cpgCacheParameterGroupName = Nothing,
      _cpgCacheParameterGroupFamily = Nothing,
      _cpgDescription = Nothing
    }

-- | Indicates whether the parameter group is associated with a Global Datastore
cpgIsGlobal :: Lens' CacheParameterGroup (Maybe Bool)
cpgIsGlobal = lens _cpgIsGlobal (\s a -> s {_cpgIsGlobal = a})

-- | The ARN (Amazon Resource Name) of the cache parameter group.
cpgARN :: Lens' CacheParameterGroup (Maybe Text)
cpgARN = lens _cpgARN (\s a -> s {_cpgARN = a})

-- | The name of the cache parameter group.
cpgCacheParameterGroupName :: Lens' CacheParameterGroup (Maybe Text)
cpgCacheParameterGroupName = lens _cpgCacheParameterGroupName (\s a -> s {_cpgCacheParameterGroupName = a})

-- | The name of the cache parameter group family that this cache parameter group is compatible with. Valid values are: @memcached1.4@ | @memcached1.5@ | @memcached1.6@ | @redis2.6@ | @redis2.8@ | @redis3.2@ | @redis4.0@ | @redis5.0@ | @redis6.x@ |
cpgCacheParameterGroupFamily :: Lens' CacheParameterGroup (Maybe Text)
cpgCacheParameterGroupFamily = lens _cpgCacheParameterGroupFamily (\s a -> s {_cpgCacheParameterGroupFamily = a})

-- | The description for this cache parameter group.
cpgDescription :: Lens' CacheParameterGroup (Maybe Text)
cpgDescription = lens _cpgDescription (\s a -> s {_cpgDescription = a})

instance FromXML CacheParameterGroup where
  parseXML x =
    CacheParameterGroup'
      <$> (x .@? "IsGlobal")
      <*> (x .@? "ARN")
      <*> (x .@? "CacheParameterGroupName")
      <*> (x .@? "CacheParameterGroupFamily")
      <*> (x .@? "Description")

instance Hashable CacheParameterGroup

instance NFData CacheParameterGroup
