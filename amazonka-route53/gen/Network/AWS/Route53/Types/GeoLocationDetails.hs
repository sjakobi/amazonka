{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.GeoLocationDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.GeoLocationDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

-- | A complex type that contains the codes and full continent, country, and subdivision names for the specified @geolocation@ code.
--
--
--
-- /See:/ 'geoLocationDetails' smart constructor.
data GeoLocationDetails = GeoLocationDetails'
  { _gldCountryName ::
      !(Maybe Text),
    _gldContinentName ::
      !(Maybe Text),
    _gldContinentCode ::
      !(Maybe Text),
    _gldSubdivisionCode ::
      !(Maybe Text),
    _gldCountryCode :: !(Maybe Text),
    _gldSubdivisionName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GeoLocationDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gldCountryName' - The name of the country.
--
-- * 'gldContinentName' - The full name of the continent.
--
-- * 'gldContinentCode' - The two-letter code for the continent.
--
-- * 'gldSubdivisionCode' - The code for the subdivision, such as a particular state within the United States. For a list of US state abbreviations, see <https://pe.usps.com/text/pub28/28apb.htm Appendix B: Two–Letter State and Possession Abbreviations> on the United States Postal Service website. For a list of all supported subdivision codes, use the <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListGeoLocations.html ListGeoLocations> API.
--
-- * 'gldCountryCode' - The two-letter code for the country.
--
-- * 'gldSubdivisionName' - The full name of the subdivision. Route 53 currently supports only states in the United States.
geoLocationDetails ::
  GeoLocationDetails
geoLocationDetails =
  GeoLocationDetails'
    { _gldCountryName = Nothing,
      _gldContinentName = Nothing,
      _gldContinentCode = Nothing,
      _gldSubdivisionCode = Nothing,
      _gldCountryCode = Nothing,
      _gldSubdivisionName = Nothing
    }

-- | The name of the country.
gldCountryName :: Lens' GeoLocationDetails (Maybe Text)
gldCountryName = lens _gldCountryName (\s a -> s {_gldCountryName = a})

-- | The full name of the continent.
gldContinentName :: Lens' GeoLocationDetails (Maybe Text)
gldContinentName = lens _gldContinentName (\s a -> s {_gldContinentName = a})

-- | The two-letter code for the continent.
gldContinentCode :: Lens' GeoLocationDetails (Maybe Text)
gldContinentCode = lens _gldContinentCode (\s a -> s {_gldContinentCode = a})

-- | The code for the subdivision, such as a particular state within the United States. For a list of US state abbreviations, see <https://pe.usps.com/text/pub28/28apb.htm Appendix B: Two–Letter State and Possession Abbreviations> on the United States Postal Service website. For a list of all supported subdivision codes, use the <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListGeoLocations.html ListGeoLocations> API.
gldSubdivisionCode :: Lens' GeoLocationDetails (Maybe Text)
gldSubdivisionCode = lens _gldSubdivisionCode (\s a -> s {_gldSubdivisionCode = a})

-- | The two-letter code for the country.
gldCountryCode :: Lens' GeoLocationDetails (Maybe Text)
gldCountryCode = lens _gldCountryCode (\s a -> s {_gldCountryCode = a})

-- | The full name of the subdivision. Route 53 currently supports only states in the United States.
gldSubdivisionName :: Lens' GeoLocationDetails (Maybe Text)
gldSubdivisionName = lens _gldSubdivisionName (\s a -> s {_gldSubdivisionName = a})

instance FromXML GeoLocationDetails where
  parseXML x =
    GeoLocationDetails'
      <$> (x .@? "CountryName")
      <*> (x .@? "ContinentName")
      <*> (x .@? "ContinentCode")
      <*> (x .@? "SubdivisionCode")
      <*> (x .@? "CountryCode")
      <*> (x .@? "SubdivisionName")

instance Hashable GeoLocationDetails

instance NFData GeoLocationDetails
