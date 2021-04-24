{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.SourceType
  ( SourceType
      ( ..,
        DBCluster,
        DBClusterSnapshot,
        DBInstance,
        DBParameterGroup,
        DBSecurityGroup,
        DBSnapshot
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

pattern DBCluster :: SourceType
pattern DBCluster = SourceType' "db-cluster"

pattern DBClusterSnapshot :: SourceType
pattern DBClusterSnapshot = SourceType' "db-cluster-snapshot"

pattern DBInstance :: SourceType
pattern DBInstance = SourceType' "db-instance"

pattern DBParameterGroup :: SourceType
pattern DBParameterGroup = SourceType' "db-parameter-group"

pattern DBSecurityGroup :: SourceType
pattern DBSecurityGroup = SourceType' "db-security-group"

pattern DBSnapshot :: SourceType
pattern DBSnapshot = SourceType' "db-snapshot"

{-# COMPLETE
  DBCluster,
  DBClusterSnapshot,
  DBInstance,
  DBParameterGroup,
  DBSecurityGroup,
  DBSnapshot,
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
