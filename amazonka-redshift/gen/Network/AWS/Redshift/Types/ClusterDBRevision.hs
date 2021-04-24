{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ClusterDBRevision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ClusterDBRevision where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.RevisionTarget

-- | Describes a @ClusterDbRevision@ .
--
--
--
-- /See:/ 'clusterDBRevision' smart constructor.
data ClusterDBRevision = ClusterDBRevision'
  { _cdrCurrentDatabaseRevision ::
      !(Maybe Text),
    _cdrRevisionTargets ::
      !(Maybe [RevisionTarget]),
    _cdrClusterIdentifier ::
      !(Maybe Text),
    _cdrDatabaseRevisionReleaseDate ::
      !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClusterDBRevision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrCurrentDatabaseRevision' - A string representing the current cluster version.
--
-- * 'cdrRevisionTargets' - A list of @RevisionTarget@ objects, where each object describes the database revision that a cluster can be updated to.
--
-- * 'cdrClusterIdentifier' - The unique identifier of the cluster.
--
-- * 'cdrDatabaseRevisionReleaseDate' - The date on which the database revision was released.
clusterDBRevision ::
  ClusterDBRevision
clusterDBRevision =
  ClusterDBRevision'
    { _cdrCurrentDatabaseRevision =
        Nothing,
      _cdrRevisionTargets = Nothing,
      _cdrClusterIdentifier = Nothing,
      _cdrDatabaseRevisionReleaseDate = Nothing
    }

-- | A string representing the current cluster version.
cdrCurrentDatabaseRevision :: Lens' ClusterDBRevision (Maybe Text)
cdrCurrentDatabaseRevision = lens _cdrCurrentDatabaseRevision (\s a -> s {_cdrCurrentDatabaseRevision = a})

-- | A list of @RevisionTarget@ objects, where each object describes the database revision that a cluster can be updated to.
cdrRevisionTargets :: Lens' ClusterDBRevision [RevisionTarget]
cdrRevisionTargets = lens _cdrRevisionTargets (\s a -> s {_cdrRevisionTargets = a}) . _Default . _Coerce

-- | The unique identifier of the cluster.
cdrClusterIdentifier :: Lens' ClusterDBRevision (Maybe Text)
cdrClusterIdentifier = lens _cdrClusterIdentifier (\s a -> s {_cdrClusterIdentifier = a})

-- | The date on which the database revision was released.
cdrDatabaseRevisionReleaseDate :: Lens' ClusterDBRevision (Maybe UTCTime)
cdrDatabaseRevisionReleaseDate = lens _cdrDatabaseRevisionReleaseDate (\s a -> s {_cdrDatabaseRevisionReleaseDate = a}) . mapping _Time

instance FromXML ClusterDBRevision where
  parseXML x =
    ClusterDBRevision'
      <$> (x .@? "CurrentDatabaseRevision")
      <*> ( x .@? "RevisionTargets" .!@ mempty
              >>= may (parseXMLList "RevisionTarget")
          )
      <*> (x .@? "ClusterIdentifier")
      <*> (x .@? "DatabaseRevisionReleaseDate")

instance Hashable ClusterDBRevision

instance NFData ClusterDBRevision
