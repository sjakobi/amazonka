{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.SourceType
  ( SourceType
      ( ..,
        CacheCluster,
        CacheParameterGroup,
        CacheSecurityGroup,
        CacheSubnetGroup,
        ReplicationGroup,
        User,
        UserGroup
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SourceType = SourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CacheCluster :: SourceType
pattern CacheCluster = SourceType' "cache-cluster"

pattern CacheParameterGroup :: SourceType
pattern CacheParameterGroup = SourceType' "cache-parameter-group"

pattern CacheSecurityGroup :: SourceType
pattern CacheSecurityGroup = SourceType' "cache-security-group"

pattern CacheSubnetGroup :: SourceType
pattern CacheSubnetGroup = SourceType' "cache-subnet-group"

pattern ReplicationGroup :: SourceType
pattern ReplicationGroup = SourceType' "replication-group"

pattern User :: SourceType
pattern User = SourceType' "user"

pattern UserGroup :: SourceType
pattern UserGroup = SourceType' "user-group"

{-# COMPLETE
  CacheCluster,
  CacheParameterGroup,
  CacheSecurityGroup,
  CacheSubnetGroup,
  ReplicationGroup,
  User,
  UserGroup,
  SourceType'
  #-}

instance FromText SourceType where
  parser = (SourceType' . mk) <$> takeText

instance ToText SourceType where
  toText (SourceType' ci) = original ci

instance Hashable SourceType

instance NFData SourceType

instance ToByteString SourceType

instance ToQuery SourceType

instance ToHeader SourceType

instance FromXML SourceType where
  parseXML = parseXMLText "SourceType"
