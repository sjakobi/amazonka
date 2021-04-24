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
-- Module      : Network.AWS.Route53.ListGeoLocations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of supported geographic locations.
--
--
-- Countries are listed first, and continents are listed last. If Amazon Route 53 supports subdivisions for a country (for example, states or provinces), the subdivisions for that country are listed in alphabetical order immediately after the corresponding country.
--
-- Route 53 does not perform authorization for this API because it retrieves information that is already available to the public.
--
-- For a list of supported geolocation codes, see the <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html GeoLocation> data type.
module Network.AWS.Route53.ListGeoLocations
  ( -- * Creating a Request
    listGeoLocations,
    ListGeoLocations,

    -- * Request Lenses
    lglStartSubdivisionCode,
    lglStartCountryCode,
    lglStartContinentCode,
    lglMaxItems,

    -- * Destructuring the Response
    listGeoLocationsResponse,
    ListGeoLocationsResponse,

    -- * Response Lenses
    lglrrsNextSubdivisionCode,
    lglrrsNextContinentCode,
    lglrrsNextCountryCode,
    lglrrsResponseStatus,
    lglrrsGeoLocationDetailsList,
    lglrrsIsTruncated,
    lglrrsMaxItems,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request to get a list of geographic locations that Amazon Route 53 supports for geolocation resource record sets.
--
--
--
-- /See:/ 'listGeoLocations' smart constructor.
data ListGeoLocations = ListGeoLocations'
  { _lglStartSubdivisionCode ::
      !(Maybe Text),
    _lglStartCountryCode :: !(Maybe Text),
    _lglStartContinentCode ::
      !(Maybe Text),
    _lglMaxItems :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGeoLocations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lglStartSubdivisionCode' - The code for the state of the United States with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Route 53 has already returned a page or more of results, if @IsTruncated@ is @true@ , and if @NextSubdivisionCode@ from the previous response has a value, enter that value in @startsubdivisioncode@ to return the next page of results. To list subdivisions (U.S. states), you must include both @startcountrycode@ and @startsubdivisioncode@ .
--
-- * 'lglStartCountryCode' - The code for the country with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Route 53 has already returned a page or more of results, if @IsTruncated@ is @true@ , and if @NextCountryCode@ from the previous response has a value, enter that value in @startcountrycode@ to return the next page of results.
--
-- * 'lglStartContinentCode' - The code for the continent with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Route 53 has already returned a page or more of results, if @IsTruncated@ is true, and if @NextContinentCode@ from the previous response has a value, enter that value in @startcontinentcode@ to return the next page of results. Include @startcontinentcode@ only if you want to list continents. Don't include @startcontinentcode@ when you're listing countries or countries with their subdivisions.
--
-- * 'lglMaxItems' - (Optional) The maximum number of geolocations to be included in the response body for this request. If more than @maxitems@ geolocations remain to be listed, then the value of the @IsTruncated@ element in the response is @true@ .
listGeoLocations ::
  ListGeoLocations
listGeoLocations =
  ListGeoLocations'
    { _lglStartSubdivisionCode =
        Nothing,
      _lglStartCountryCode = Nothing,
      _lglStartContinentCode = Nothing,
      _lglMaxItems = Nothing
    }

-- | The code for the state of the United States with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Route 53 has already returned a page or more of results, if @IsTruncated@ is @true@ , and if @NextSubdivisionCode@ from the previous response has a value, enter that value in @startsubdivisioncode@ to return the next page of results. To list subdivisions (U.S. states), you must include both @startcountrycode@ and @startsubdivisioncode@ .
lglStartSubdivisionCode :: Lens' ListGeoLocations (Maybe Text)
lglStartSubdivisionCode = lens _lglStartSubdivisionCode (\s a -> s {_lglStartSubdivisionCode = a})

-- | The code for the country with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Route 53 has already returned a page or more of results, if @IsTruncated@ is @true@ , and if @NextCountryCode@ from the previous response has a value, enter that value in @startcountrycode@ to return the next page of results.
lglStartCountryCode :: Lens' ListGeoLocations (Maybe Text)
lglStartCountryCode = lens _lglStartCountryCode (\s a -> s {_lglStartCountryCode = a})

-- | The code for the continent with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Route 53 has already returned a page or more of results, if @IsTruncated@ is true, and if @NextContinentCode@ from the previous response has a value, enter that value in @startcontinentcode@ to return the next page of results. Include @startcontinentcode@ only if you want to list continents. Don't include @startcontinentcode@ when you're listing countries or countries with their subdivisions.
lglStartContinentCode :: Lens' ListGeoLocations (Maybe Text)
lglStartContinentCode = lens _lglStartContinentCode (\s a -> s {_lglStartContinentCode = a})

-- | (Optional) The maximum number of geolocations to be included in the response body for this request. If more than @maxitems@ geolocations remain to be listed, then the value of the @IsTruncated@ element in the response is @true@ .
lglMaxItems :: Lens' ListGeoLocations (Maybe Text)
lglMaxItems = lens _lglMaxItems (\s a -> s {_lglMaxItems = a})

instance AWSRequest ListGeoLocations where
  type Rs ListGeoLocations = ListGeoLocationsResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListGeoLocationsResponse'
            <$> (x .@? "NextSubdivisionCode")
            <*> (x .@? "NextContinentCode")
            <*> (x .@? "NextCountryCode")
            <*> (pure (fromEnum s))
            <*> ( x .@? "GeoLocationDetailsList" .!@ mempty
                    >>= parseXMLList "GeoLocationDetails"
                )
            <*> (x .@ "IsTruncated")
            <*> (x .@ "MaxItems")
      )

instance Hashable ListGeoLocations

instance NFData ListGeoLocations

instance ToHeaders ListGeoLocations where
  toHeaders = const mempty

instance ToPath ListGeoLocations where
  toPath = const "/2013-04-01/geolocations"

instance ToQuery ListGeoLocations where
  toQuery ListGeoLocations' {..} =
    mconcat
      [ "startsubdivisioncode" =: _lglStartSubdivisionCode,
        "startcountrycode" =: _lglStartCountryCode,
        "startcontinentcode" =: _lglStartContinentCode,
        "maxitems" =: _lglMaxItems
      ]

-- | A complex type containing the response information for the request.
--
--
--
-- /See:/ 'listGeoLocationsResponse' smart constructor.
data ListGeoLocationsResponse = ListGeoLocationsResponse'
  { _lglrrsNextSubdivisionCode ::
      !(Maybe Text),
    _lglrrsNextContinentCode ::
      !(Maybe Text),
    _lglrrsNextCountryCode ::
      !(Maybe Text),
    _lglrrsResponseStatus ::
      !Int,
    _lglrrsGeoLocationDetailsList ::
      ![GeoLocationDetails],
    _lglrrsIsTruncated ::
      !Bool,
    _lglrrsMaxItems ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListGeoLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lglrrsNextSubdivisionCode' - If @IsTruncated@ is @true@ , you can make a follow-up request to display more locations. Enter the value of @NextSubdivisionCode@ in the @startsubdivisioncode@ parameter in another @ListGeoLocations@ request.
--
-- * 'lglrrsNextContinentCode' - If @IsTruncated@ is @true@ , you can make a follow-up request to display more locations. Enter the value of @NextContinentCode@ in the @startcontinentcode@ parameter in another @ListGeoLocations@ request.
--
-- * 'lglrrsNextCountryCode' - If @IsTruncated@ is @true@ , you can make a follow-up request to display more locations. Enter the value of @NextCountryCode@ in the @startcountrycode@ parameter in another @ListGeoLocations@ request.
--
-- * 'lglrrsResponseStatus' - -- | The response status code.
--
-- * 'lglrrsGeoLocationDetailsList' - A complex type that contains one @GeoLocationDetails@ element for each location that Amazon Route 53 supports for geolocation.
--
-- * 'lglrrsIsTruncated' - A value that indicates whether more locations remain to be listed after the last location in this response. If so, the value of @IsTruncated@ is @true@ . To get more values, submit another request and include the values of @NextContinentCode@ , @NextCountryCode@ , and @NextSubdivisionCode@ in the @startcontinentcode@ , @startcountrycode@ , and @startsubdivisioncode@ , as applicable.
--
-- * 'lglrrsMaxItems' - The value that you specified for @MaxItems@ in the request.
listGeoLocationsResponse ::
  -- | 'lglrrsResponseStatus'
  Int ->
  -- | 'lglrrsIsTruncated'
  Bool ->
  -- | 'lglrrsMaxItems'
  Text ->
  ListGeoLocationsResponse
listGeoLocationsResponse
  pResponseStatus_
  pIsTruncated_
  pMaxItems_ =
    ListGeoLocationsResponse'
      { _lglrrsNextSubdivisionCode =
          Nothing,
        _lglrrsNextContinentCode = Nothing,
        _lglrrsNextCountryCode = Nothing,
        _lglrrsResponseStatus = pResponseStatus_,
        _lglrrsGeoLocationDetailsList = mempty,
        _lglrrsIsTruncated = pIsTruncated_,
        _lglrrsMaxItems = pMaxItems_
      }

-- | If @IsTruncated@ is @true@ , you can make a follow-up request to display more locations. Enter the value of @NextSubdivisionCode@ in the @startsubdivisioncode@ parameter in another @ListGeoLocations@ request.
lglrrsNextSubdivisionCode :: Lens' ListGeoLocationsResponse (Maybe Text)
lglrrsNextSubdivisionCode = lens _lglrrsNextSubdivisionCode (\s a -> s {_lglrrsNextSubdivisionCode = a})

-- | If @IsTruncated@ is @true@ , you can make a follow-up request to display more locations. Enter the value of @NextContinentCode@ in the @startcontinentcode@ parameter in another @ListGeoLocations@ request.
lglrrsNextContinentCode :: Lens' ListGeoLocationsResponse (Maybe Text)
lglrrsNextContinentCode = lens _lglrrsNextContinentCode (\s a -> s {_lglrrsNextContinentCode = a})

-- | If @IsTruncated@ is @true@ , you can make a follow-up request to display more locations. Enter the value of @NextCountryCode@ in the @startcountrycode@ parameter in another @ListGeoLocations@ request.
lglrrsNextCountryCode :: Lens' ListGeoLocationsResponse (Maybe Text)
lglrrsNextCountryCode = lens _lglrrsNextCountryCode (\s a -> s {_lglrrsNextCountryCode = a})

-- | -- | The response status code.
lglrrsResponseStatus :: Lens' ListGeoLocationsResponse Int
lglrrsResponseStatus = lens _lglrrsResponseStatus (\s a -> s {_lglrrsResponseStatus = a})

-- | A complex type that contains one @GeoLocationDetails@ element for each location that Amazon Route 53 supports for geolocation.
lglrrsGeoLocationDetailsList :: Lens' ListGeoLocationsResponse [GeoLocationDetails]
lglrrsGeoLocationDetailsList = lens _lglrrsGeoLocationDetailsList (\s a -> s {_lglrrsGeoLocationDetailsList = a}) . _Coerce

-- | A value that indicates whether more locations remain to be listed after the last location in this response. If so, the value of @IsTruncated@ is @true@ . To get more values, submit another request and include the values of @NextContinentCode@ , @NextCountryCode@ , and @NextSubdivisionCode@ in the @startcontinentcode@ , @startcountrycode@ , and @startsubdivisioncode@ , as applicable.
lglrrsIsTruncated :: Lens' ListGeoLocationsResponse Bool
lglrrsIsTruncated = lens _lglrrsIsTruncated (\s a -> s {_lglrrsIsTruncated = a})

-- | The value that you specified for @MaxItems@ in the request.
lglrrsMaxItems :: Lens' ListGeoLocationsResponse Text
lglrrsMaxItems = lens _lglrrsMaxItems (\s a -> s {_lglrrsMaxItems = a})

instance NFData ListGeoLocationsResponse
