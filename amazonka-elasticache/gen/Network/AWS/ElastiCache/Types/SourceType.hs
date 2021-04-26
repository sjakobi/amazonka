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
-- Module      : Network.AWS.ElastiCache.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.SourceType
  ( SourceType
      ( ..,
        SourceTypeCacheCluster,
        SourceTypeCacheParameterGroup,
        SourceTypeCacheSecurityGroup,
        SourceTypeCacheSubnetGroup,
        SourceTypeReplicationGroup,
        SourceTypeUser,
        SourceTypeUserGroup
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SourceType = SourceType'
  { fromSourceType ::
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

pattern SourceTypeCacheCluster :: SourceType
pattern SourceTypeCacheCluster = SourceType' "cache-cluster"

pattern SourceTypeCacheParameterGroup :: SourceType
pattern SourceTypeCacheParameterGroup = SourceType' "cache-parameter-group"

pattern SourceTypeCacheSecurityGroup :: SourceType
pattern SourceTypeCacheSecurityGroup = SourceType' "cache-security-group"

pattern SourceTypeCacheSubnetGroup :: SourceType
pattern SourceTypeCacheSubnetGroup = SourceType' "cache-subnet-group"

pattern SourceTypeReplicationGroup :: SourceType
pattern SourceTypeReplicationGroup = SourceType' "replication-group"

pattern SourceTypeUser :: SourceType
pattern SourceTypeUser = SourceType' "user"

pattern SourceTypeUserGroup :: SourceType
pattern SourceTypeUserGroup = SourceType' "user-group"

{-# COMPLETE
  SourceTypeCacheCluster,
  SourceTypeCacheParameterGroup,
  SourceTypeCacheSecurityGroup,
  SourceTypeCacheSubnetGroup,
  SourceTypeReplicationGroup,
  SourceTypeUser,
  SourceTypeUserGroup,
  SourceType'
  #-}

instance Prelude.FromText SourceType where
  parser = SourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SourceType where
  toText (SourceType' x) = x

instance Prelude.Hashable SourceType

instance Prelude.NFData SourceType

instance Prelude.ToByteString SourceType

instance Prelude.ToQuery SourceType

instance Prelude.ToHeader SourceType

instance Prelude.FromXML SourceType where
  parseXML = Prelude.parseXMLText "SourceType"
