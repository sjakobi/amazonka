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
-- Module      : Network.AWS.EC2.DescribeHostReservationOfferings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Dedicated Host reservations that are available to purchase.
--
--
-- The results describe all of the Dedicated Host reservation offerings, including offerings that might not match the instance family and Region of your Dedicated Hosts. When purchasing an offering, ensure that the instance family and Region of the offering matches that of the Dedicated Hosts with which it is to be associated. For more information about supported instance types, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html Dedicated Hosts> in the /Amazon EC2 User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeHostReservationOfferings
  ( -- * Creating a Request
    describeHostReservationOfferings,
    DescribeHostReservationOfferings,

    -- * Request Lenses
    dhroMinDuration,
    dhroNextToken,
    dhroMaxResults,
    dhroOfferingId,
    dhroFilter,
    dhroMaxDuration,

    -- * Destructuring the Response
    describeHostReservationOfferingsResponse,
    DescribeHostReservationOfferingsResponse,

    -- * Response Lenses
    dhrorrsNextToken,
    dhrorrsOfferingSet,
    dhrorrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeHostReservationOfferings' smart constructor.
data DescribeHostReservationOfferings = DescribeHostReservationOfferings'
  { _dhroMinDuration ::
      !( Maybe
           Int
       ),
    _dhroNextToken ::
      !( Maybe
           Text
       ),
    _dhroMaxResults ::
      !( Maybe
           Nat
       ),
    _dhroOfferingId ::
      !( Maybe
           Text
       ),
    _dhroFilter ::
      !( Maybe
           [Filter]
       ),
    _dhroMaxDuration ::
      !( Maybe
           Int
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeHostReservationOfferings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhroMinDuration' - This is the minimum duration of the reservation you'd like to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 31536000 for one year.
--
-- * 'dhroNextToken' - The token to use to retrieve the next page of results.
--
-- * 'dhroMaxResults' - The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error.
--
-- * 'dhroOfferingId' - The ID of the reservation offering.
--
-- * 'dhroFilter' - The filters.     * @instance-family@ - The instance family of the offering (for example, @m4@ ).     * @payment-option@ - The payment option (@NoUpfront@ | @PartialUpfront@ | @AllUpfront@ ).
--
-- * 'dhroMaxDuration' - This is the maximum duration of the reservation to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 94608000 for three years.
describeHostReservationOfferings ::
  DescribeHostReservationOfferings
describeHostReservationOfferings =
  DescribeHostReservationOfferings'
    { _dhroMinDuration =
        Nothing,
      _dhroNextToken = Nothing,
      _dhroMaxResults = Nothing,
      _dhroOfferingId = Nothing,
      _dhroFilter = Nothing,
      _dhroMaxDuration = Nothing
    }

-- | This is the minimum duration of the reservation you'd like to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 31536000 for one year.
dhroMinDuration :: Lens' DescribeHostReservationOfferings (Maybe Int)
dhroMinDuration = lens _dhroMinDuration (\s a -> s {_dhroMinDuration = a})

-- | The token to use to retrieve the next page of results.
dhroNextToken :: Lens' DescribeHostReservationOfferings (Maybe Text)
dhroNextToken = lens _dhroNextToken (\s a -> s {_dhroNextToken = a})

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error.
dhroMaxResults :: Lens' DescribeHostReservationOfferings (Maybe Natural)
dhroMaxResults = lens _dhroMaxResults (\s a -> s {_dhroMaxResults = a}) . mapping _Nat

-- | The ID of the reservation offering.
dhroOfferingId :: Lens' DescribeHostReservationOfferings (Maybe Text)
dhroOfferingId = lens _dhroOfferingId (\s a -> s {_dhroOfferingId = a})

-- | The filters.     * @instance-family@ - The instance family of the offering (for example, @m4@ ).     * @payment-option@ - The payment option (@NoUpfront@ | @PartialUpfront@ | @AllUpfront@ ).
dhroFilter :: Lens' DescribeHostReservationOfferings [Filter]
dhroFilter = lens _dhroFilter (\s a -> s {_dhroFilter = a}) . _Default . _Coerce

-- | This is the maximum duration of the reservation to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 94608000 for three years.
dhroMaxDuration :: Lens' DescribeHostReservationOfferings (Maybe Int)
dhroMaxDuration = lens _dhroMaxDuration (\s a -> s {_dhroMaxDuration = a})

instance AWSPager DescribeHostReservationOfferings where
  page rq rs
    | stop (rs ^. dhrorrsNextToken) = Nothing
    | stop (rs ^. dhrorrsOfferingSet) = Nothing
    | otherwise =
      Just $ rq & dhroNextToken .~ rs ^. dhrorrsNextToken

instance AWSRequest DescribeHostReservationOfferings where
  type
    Rs DescribeHostReservationOfferings =
      DescribeHostReservationOfferingsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeHostReservationOfferingsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "offeringSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeHostReservationOfferings

instance NFData DescribeHostReservationOfferings

instance ToHeaders DescribeHostReservationOfferings where
  toHeaders = const mempty

instance ToPath DescribeHostReservationOfferings where
  toPath = const "/"

instance ToQuery DescribeHostReservationOfferings where
  toQuery DescribeHostReservationOfferings' {..} =
    mconcat
      [ "Action"
          =: ("DescribeHostReservationOfferings" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "MinDuration" =: _dhroMinDuration,
        "NextToken" =: _dhroNextToken,
        "MaxResults" =: _dhroMaxResults,
        "OfferingId" =: _dhroOfferingId,
        toQuery (toQueryList "Filter" <$> _dhroFilter),
        "MaxDuration" =: _dhroMaxDuration
      ]

-- | /See:/ 'describeHostReservationOfferingsResponse' smart constructor.
data DescribeHostReservationOfferingsResponse = DescribeHostReservationOfferingsResponse'
  { _dhrorrsNextToken ::
      !( Maybe
           Text
       ),
    _dhrorrsOfferingSet ::
      !( Maybe
           [HostOffering]
       ),
    _dhrorrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeHostReservationOfferingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhrorrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dhrorrsOfferingSet' - Information about the offerings.
--
-- * 'dhrorrsResponseStatus' - -- | The response status code.
describeHostReservationOfferingsResponse ::
  -- | 'dhrorrsResponseStatus'
  Int ->
  DescribeHostReservationOfferingsResponse
describeHostReservationOfferingsResponse
  pResponseStatus_ =
    DescribeHostReservationOfferingsResponse'
      { _dhrorrsNextToken =
          Nothing,
        _dhrorrsOfferingSet = Nothing,
        _dhrorrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dhrorrsNextToken :: Lens' DescribeHostReservationOfferingsResponse (Maybe Text)
dhrorrsNextToken = lens _dhrorrsNextToken (\s a -> s {_dhrorrsNextToken = a})

-- | Information about the offerings.
dhrorrsOfferingSet :: Lens' DescribeHostReservationOfferingsResponse [HostOffering]
dhrorrsOfferingSet = lens _dhrorrsOfferingSet (\s a -> s {_dhrorrsOfferingSet = a}) . _Default . _Coerce

-- | -- | The response status code.
dhrorrsResponseStatus :: Lens' DescribeHostReservationOfferingsResponse Int
dhrorrsResponseStatus = lens _dhrorrsResponseStatus (\s a -> s {_dhrorrsResponseStatus = a})

instance
  NFData
    DescribeHostReservationOfferingsResponse
