{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.RemoteIPDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.RemoteIPDetails where

import Network.AWS.GuardDuty.Types.City
import Network.AWS.GuardDuty.Types.Country
import Network.AWS.GuardDuty.Types.GeoLocation
import Network.AWS.GuardDuty.Types.Organization
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the remote IP address of the connection.
--
--
--
-- /See:/ 'remoteIPDetails' smart constructor.
data RemoteIPDetails = RemoteIPDetails'
  { _ridGeoLocation ::
      !(Maybe GeoLocation),
    _ridCity :: !(Maybe City),
    _ridOrganization ::
      !(Maybe Organization),
    _ridCountry :: !(Maybe Country),
    _ridIPAddressV4 :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RemoteIPDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ridGeoLocation' - The location information of the remote IP address.
--
-- * 'ridCity' - The city information of the remote IP address.
--
-- * 'ridOrganization' - The ISP organization information of the remote IP address.
--
-- * 'ridCountry' - The country code of the remote IP address.
--
-- * 'ridIPAddressV4' - The IPv4 remote address of the connection.
remoteIPDetails ::
  RemoteIPDetails
remoteIPDetails =
  RemoteIPDetails'
    { _ridGeoLocation = Nothing,
      _ridCity = Nothing,
      _ridOrganization = Nothing,
      _ridCountry = Nothing,
      _ridIPAddressV4 = Nothing
    }

-- | The location information of the remote IP address.
ridGeoLocation :: Lens' RemoteIPDetails (Maybe GeoLocation)
ridGeoLocation = lens _ridGeoLocation (\s a -> s {_ridGeoLocation = a})

-- | The city information of the remote IP address.
ridCity :: Lens' RemoteIPDetails (Maybe City)
ridCity = lens _ridCity (\s a -> s {_ridCity = a})

-- | The ISP organization information of the remote IP address.
ridOrganization :: Lens' RemoteIPDetails (Maybe Organization)
ridOrganization = lens _ridOrganization (\s a -> s {_ridOrganization = a})

-- | The country code of the remote IP address.
ridCountry :: Lens' RemoteIPDetails (Maybe Country)
ridCountry = lens _ridCountry (\s a -> s {_ridCountry = a})

-- | The IPv4 remote address of the connection.
ridIPAddressV4 :: Lens' RemoteIPDetails (Maybe Text)
ridIPAddressV4 = lens _ridIPAddressV4 (\s a -> s {_ridIPAddressV4 = a})

instance FromJSON RemoteIPDetails where
  parseJSON =
    withObject
      "RemoteIPDetails"
      ( \x ->
          RemoteIPDetails'
            <$> (x .:? "geoLocation")
            <*> (x .:? "city")
            <*> (x .:? "organization")
            <*> (x .:? "country")
            <*> (x .:? "ipAddressV4")
      )

instance Hashable RemoteIPDetails

instance NFData RemoteIPDetails
