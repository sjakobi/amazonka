{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.SourceRegion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.SourceRegion where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains an AWS Region name as the result of a successful call to the @DescribeSourceRegions@ action.
--
--
--
-- /See:/ 'sourceRegion' smart constructor.
data SourceRegion = SourceRegion'
  { _srRegionName ::
      !(Maybe Text),
    _srStatus :: !(Maybe Text),
    _srSupportsDBInstanceAutomatedBackupsReplication ::
      !(Maybe Bool),
    _srEndpoint :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SourceRegion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srRegionName' - The name of the source AWS Region.
--
-- * 'srStatus' - The status of the source AWS Region.
--
-- * 'srSupportsDBInstanceAutomatedBackupsReplication' - Whether the source AWS Region supports replicating automated backups to the current AWS Region.
--
-- * 'srEndpoint' - The endpoint for the source AWS Region endpoint.
sourceRegion ::
  SourceRegion
sourceRegion =
  SourceRegion'
    { _srRegionName = Nothing,
      _srStatus = Nothing,
      _srSupportsDBInstanceAutomatedBackupsReplication =
        Nothing,
      _srEndpoint = Nothing
    }

-- | The name of the source AWS Region.
srRegionName :: Lens' SourceRegion (Maybe Text)
srRegionName = lens _srRegionName (\s a -> s {_srRegionName = a})

-- | The status of the source AWS Region.
srStatus :: Lens' SourceRegion (Maybe Text)
srStatus = lens _srStatus (\s a -> s {_srStatus = a})

-- | Whether the source AWS Region supports replicating automated backups to the current AWS Region.
srSupportsDBInstanceAutomatedBackupsReplication :: Lens' SourceRegion (Maybe Bool)
srSupportsDBInstanceAutomatedBackupsReplication = lens _srSupportsDBInstanceAutomatedBackupsReplication (\s a -> s {_srSupportsDBInstanceAutomatedBackupsReplication = a})

-- | The endpoint for the source AWS Region endpoint.
srEndpoint :: Lens' SourceRegion (Maybe Text)
srEndpoint = lens _srEndpoint (\s a -> s {_srEndpoint = a})

instance FromXML SourceRegion where
  parseXML x =
    SourceRegion'
      <$> (x .@? "RegionName")
      <*> (x .@? "Status")
      <*> ( x
              .@? "SupportsDBInstanceAutomatedBackupsReplication"
          )
      <*> (x .@? "Endpoint")

instance Hashable SourceRegion

instance NFData SourceRegion
