{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.SourceType
  ( SourceType
      ( ..,
        Cluster,
        ClusterParameterGroup,
        ClusterSecurityGroup,
        ClusterSnapshot,
        ScheduledAction
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

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

pattern Cluster :: SourceType
pattern Cluster = SourceType' "cluster"

pattern ClusterParameterGroup :: SourceType
pattern ClusterParameterGroup = SourceType' "cluster-parameter-group"

pattern ClusterSecurityGroup :: SourceType
pattern ClusterSecurityGroup = SourceType' "cluster-security-group"

pattern ClusterSnapshot :: SourceType
pattern ClusterSnapshot = SourceType' "cluster-snapshot"

pattern ScheduledAction :: SourceType
pattern ScheduledAction = SourceType' "scheduled-action"

{-# COMPLETE
  Cluster,
  ClusterParameterGroup,
  ClusterSecurityGroup,
  ClusterSnapshot,
  ScheduledAction,
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
