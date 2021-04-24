{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.GetGeoLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets.
--
--
-- Route 53 does not perform authorization for this API because it retrieves information that is already available to the public.
--
-- Use the following syntax to determine whether a continent is supported for geolocation:
--
-- @GET /2013-04-01/geolocation?continentcode=/two-letter abbreviation for a continent/ @
--
-- Use the following syntax to determine whether a country is supported for geolocation:
--
-- @GET /2013-04-01/geolocation?countrycode=/two-character country code/ @
--
-- Use the following syntax to determine whether a subdivision of a country is supported for geolocation:
--
-- @GET /2013-04-01/geolocation?countrycode=/two-character country code/ &subdivisioncode=/subdivision code/ @
module Network.AWS.Route53.GetGeoLocation
  ( -- * Creating a Request
    getGeoLocation,
    GetGeoLocation,

    -- * Request Lenses
    gglContinentCode,
    gglSubdivisionCode,
    gglCountryCode,

    -- * Destructuring the Response
    getGeoLocationResponse,
    GetGeoLocationResponse,

    -- * Response Lenses
    gglrrsResponseStatus,
    gglrrsGeoLocationDetails,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request for information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets.
--
--
--
-- /See:/ 'getGeoLocation' smart constructor.
data GetGeoLocation = GetGeoLocation'
  { _gglContinentCode ::
      !(Maybe Text),
    _gglSubdivisionCode :: !(Maybe Text),
    _gglCountryCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGeoLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gglContinentCode' - For geolocation resource record sets, a two-letter abbreviation that identifies a continent. Amazon Route 53 supports the following continent codes:     * __AF__ : Africa     * __AN__ : Antarctica     * __AS__ : Asia     * __EU__ : Europe     * __OC__ : Oceania     * __NA__ : North America     * __SA__ : South America
--
-- * 'gglSubdivisionCode' - The code for the subdivision, such as a particular state within the United States. For a list of US state abbreviations, see <https://pe.usps.com/text/pub28/28apb.htm Appendix B: Two–Letter State and Possession Abbreviations> on the United States Postal Service website. For a list of all supported subdivision codes, use the <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListGeoLocations.html ListGeoLocations> API.
--
-- * 'gglCountryCode' - Amazon Route 53 uses the two-letter country codes that are specified in <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO standard 3166-1 alpha-2> .
getGeoLocation ::
  GetGeoLocation
getGeoLocation =
  GetGeoLocation'
    { _gglContinentCode = Nothing,
      _gglSubdivisionCode = Nothing,
      _gglCountryCode = Nothing
    }

-- | For geolocation resource record sets, a two-letter abbreviation that identifies a continent. Amazon Route 53 supports the following continent codes:     * __AF__ : Africa     * __AN__ : Antarctica     * __AS__ : Asia     * __EU__ : Europe     * __OC__ : Oceania     * __NA__ : North America     * __SA__ : South America
gglContinentCode :: Lens' GetGeoLocation (Maybe Text)
gglContinentCode = lens _gglContinentCode (\s a -> s {_gglContinentCode = a})

-- | The code for the subdivision, such as a particular state within the United States. For a list of US state abbreviations, see <https://pe.usps.com/text/pub28/28apb.htm Appendix B: Two–Letter State and Possession Abbreviations> on the United States Postal Service website. For a list of all supported subdivision codes, use the <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListGeoLocations.html ListGeoLocations> API.
gglSubdivisionCode :: Lens' GetGeoLocation (Maybe Text)
gglSubdivisionCode = lens _gglSubdivisionCode (\s a -> s {_gglSubdivisionCode = a})

-- | Amazon Route 53 uses the two-letter country codes that are specified in <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 ISO standard 3166-1 alpha-2> .
gglCountryCode :: Lens' GetGeoLocation (Maybe Text)
gglCountryCode = lens _gglCountryCode (\s a -> s {_gglCountryCode = a})

instance AWSRequest GetGeoLocation where
  type Rs GetGeoLocation = GetGeoLocationResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetGeoLocationResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "GeoLocationDetails")
      )

instance Hashable GetGeoLocation

instance NFData GetGeoLocation

instance ToHeaders GetGeoLocation where
  toHeaders = const mempty

instance ToPath GetGeoLocation where
  toPath = const "/2013-04-01/geolocation"

instance ToQuery GetGeoLocation where
  toQuery GetGeoLocation' {..} =
    mconcat
      [ "continentcode" =: _gglContinentCode,
        "subdivisioncode" =: _gglSubdivisionCode,
        "countrycode" =: _gglCountryCode
      ]

-- | A complex type that contains the response information for the specified geolocation code.
--
--
--
-- /See:/ 'getGeoLocationResponse' smart constructor.
data GetGeoLocationResponse = GetGeoLocationResponse'
  { _gglrrsResponseStatus ::
      !Int,
    _gglrrsGeoLocationDetails ::
      !GeoLocationDetails
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetGeoLocationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gglrrsResponseStatus' - -- | The response status code.
--
-- * 'gglrrsGeoLocationDetails' - A complex type that contains the codes and full continent, country, and subdivision names for the specified geolocation code.
getGeoLocationResponse ::
  -- | 'gglrrsResponseStatus'
  Int ->
  -- | 'gglrrsGeoLocationDetails'
  GeoLocationDetails ->
  GetGeoLocationResponse
getGeoLocationResponse
  pResponseStatus_
  pGeoLocationDetails_ =
    GetGeoLocationResponse'
      { _gglrrsResponseStatus =
          pResponseStatus_,
        _gglrrsGeoLocationDetails = pGeoLocationDetails_
      }

-- | -- | The response status code.
gglrrsResponseStatus :: Lens' GetGeoLocationResponse Int
gglrrsResponseStatus = lens _gglrrsResponseStatus (\s a -> s {_gglrrsResponseStatus = a})

-- | A complex type that contains the codes and full continent, country, and subdivision names for the specified geolocation code.
gglrrsGeoLocationDetails :: Lens' GetGeoLocationResponse GeoLocationDetails
gglrrsGeoLocationDetails = lens _gglrrsGeoLocationDetails (\s a -> s {_gglrrsGeoLocationDetails = a})

instance NFData GetGeoLocationResponse
