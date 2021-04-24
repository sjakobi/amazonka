{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RegionInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RegionInfo where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.AvailabilityZone
import Network.AWS.Lightsail.Types.RegionName
import Network.AWS.Prelude

-- | Describes the AWS Region.
--
--
--
-- /See:/ 'regionInfo' smart constructor.
data RegionInfo = RegionInfo'
  { _riAvailabilityZones ::
      !(Maybe [AvailabilityZone]),
    _riContinentCode :: !(Maybe Text),
    _riRelationalDatabaseAvailabilityZones ::
      !(Maybe [AvailabilityZone]),
    _riName :: !(Maybe RegionName),
    _riDescription :: !(Maybe Text),
    _riDisplayName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riAvailabilityZones' - The Availability Zones. Follows the format @us-east-2a@ (case-sensitive).
--
-- * 'riContinentCode' - The continent code (e.g., @NA@ , meaning North America).
--
-- * 'riRelationalDatabaseAvailabilityZones' - The Availability Zones for databases. Follows the format @us-east-2a@ (case-sensitive).
--
-- * 'riName' - The region name (e.g., @us-east-2@ ).
--
-- * 'riDescription' - The description of the AWS Region (e.g., @This region is recommended to serve users in the eastern United States and eastern Canada@ ).
--
-- * 'riDisplayName' - The display name (e.g., @Ohio@ ).
regionInfo ::
  RegionInfo
regionInfo =
  RegionInfo'
    { _riAvailabilityZones = Nothing,
      _riContinentCode = Nothing,
      _riRelationalDatabaseAvailabilityZones = Nothing,
      _riName = Nothing,
      _riDescription = Nothing,
      _riDisplayName = Nothing
    }

-- | The Availability Zones. Follows the format @us-east-2a@ (case-sensitive).
riAvailabilityZones :: Lens' RegionInfo [AvailabilityZone]
riAvailabilityZones = lens _riAvailabilityZones (\s a -> s {_riAvailabilityZones = a}) . _Default . _Coerce

-- | The continent code (e.g., @NA@ , meaning North America).
riContinentCode :: Lens' RegionInfo (Maybe Text)
riContinentCode = lens _riContinentCode (\s a -> s {_riContinentCode = a})

-- | The Availability Zones for databases. Follows the format @us-east-2a@ (case-sensitive).
riRelationalDatabaseAvailabilityZones :: Lens' RegionInfo [AvailabilityZone]
riRelationalDatabaseAvailabilityZones = lens _riRelationalDatabaseAvailabilityZones (\s a -> s {_riRelationalDatabaseAvailabilityZones = a}) . _Default . _Coerce

-- | The region name (e.g., @us-east-2@ ).
riName :: Lens' RegionInfo (Maybe RegionName)
riName = lens _riName (\s a -> s {_riName = a})

-- | The description of the AWS Region (e.g., @This region is recommended to serve users in the eastern United States and eastern Canada@ ).
riDescription :: Lens' RegionInfo (Maybe Text)
riDescription = lens _riDescription (\s a -> s {_riDescription = a})

-- | The display name (e.g., @Ohio@ ).
riDisplayName :: Lens' RegionInfo (Maybe Text)
riDisplayName = lens _riDisplayName (\s a -> s {_riDisplayName = a})

instance FromJSON RegionInfo where
  parseJSON =
    withObject
      "RegionInfo"
      ( \x ->
          RegionInfo'
            <$> (x .:? "availabilityZones" .!= mempty)
            <*> (x .:? "continentCode")
            <*> ( x .:? "relationalDatabaseAvailabilityZones"
                    .!= mempty
                )
            <*> (x .:? "name")
            <*> (x .:? "description")
            <*> (x .:? "displayName")
      )

instance Hashable RegionInfo

instance NFData RegionInfo
