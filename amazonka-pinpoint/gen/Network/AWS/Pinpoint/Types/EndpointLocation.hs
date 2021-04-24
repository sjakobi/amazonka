{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EndpointLocation where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies geographic information about an endpoint.
--
--
--
-- /See:/ 'endpointLocation' smart constructor.
data EndpointLocation = EndpointLocation'
  { _elLongitude ::
      !(Maybe Double),
    _elLatitude :: !(Maybe Double),
    _elPostalCode :: !(Maybe Text),
    _elCity :: !(Maybe Text),
    _elCountry :: !(Maybe Text),
    _elRegion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elLongitude' - The longitude coordinate of the endpoint location, rounded to one decimal place.
--
-- * 'elLatitude' - The latitude coordinate of the endpoint location, rounded to one decimal place.
--
-- * 'elPostalCode' - The postal or ZIP code for the area where the endpoint is located.
--
-- * 'elCity' - The name of the city where the endpoint is located.
--
-- * 'elCountry' - The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the endpoint is located. For example, US for the United States.
--
-- * 'elRegion' - The name of the region where the endpoint is located. For locations in the United States, this value is the name of a state.
endpointLocation ::
  EndpointLocation
endpointLocation =
  EndpointLocation'
    { _elLongitude = Nothing,
      _elLatitude = Nothing,
      _elPostalCode = Nothing,
      _elCity = Nothing,
      _elCountry = Nothing,
      _elRegion = Nothing
    }

-- | The longitude coordinate of the endpoint location, rounded to one decimal place.
elLongitude :: Lens' EndpointLocation (Maybe Double)
elLongitude = lens _elLongitude (\s a -> s {_elLongitude = a})

-- | The latitude coordinate of the endpoint location, rounded to one decimal place.
elLatitude :: Lens' EndpointLocation (Maybe Double)
elLatitude = lens _elLatitude (\s a -> s {_elLatitude = a})

-- | The postal or ZIP code for the area where the endpoint is located.
elPostalCode :: Lens' EndpointLocation (Maybe Text)
elPostalCode = lens _elPostalCode (\s a -> s {_elPostalCode = a})

-- | The name of the city where the endpoint is located.
elCity :: Lens' EndpointLocation (Maybe Text)
elCity = lens _elCity (\s a -> s {_elCity = a})

-- | The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the endpoint is located. For example, US for the United States.
elCountry :: Lens' EndpointLocation (Maybe Text)
elCountry = lens _elCountry (\s a -> s {_elCountry = a})

-- | The name of the region where the endpoint is located. For locations in the United States, this value is the name of a state.
elRegion :: Lens' EndpointLocation (Maybe Text)
elRegion = lens _elRegion (\s a -> s {_elRegion = a})

instance FromJSON EndpointLocation where
  parseJSON =
    withObject
      "EndpointLocation"
      ( \x ->
          EndpointLocation'
            <$> (x .:? "Longitude")
            <*> (x .:? "Latitude")
            <*> (x .:? "PostalCode")
            <*> (x .:? "City")
            <*> (x .:? "Country")
            <*> (x .:? "Region")
      )

instance Hashable EndpointLocation

instance NFData EndpointLocation

instance ToJSON EndpointLocation where
  toJSON EndpointLocation' {..} =
    object
      ( catMaybes
          [ ("Longitude" .=) <$> _elLongitude,
            ("Latitude" .=) <$> _elLatitude,
            ("PostalCode" .=) <$> _elPostalCode,
            ("City" .=) <$> _elCity,
            ("Country" .=) <$> _elCountry,
            ("Region" .=) <$> _elRegion
          ]
      )
