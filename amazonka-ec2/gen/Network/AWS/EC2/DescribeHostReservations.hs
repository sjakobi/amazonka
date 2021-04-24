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
-- Module      : Network.AWS.EC2.DescribeHostReservations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes reservations that are associated with Dedicated Hosts in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeHostReservations
  ( -- * Creating a Request
    describeHostReservations,
    DescribeHostReservations,

    -- * Request Lenses
    dhrNextToken,
    dhrMaxResults,
    dhrHostReservationIdSet,
    dhrFilter,

    -- * Destructuring the Response
    describeHostReservationsResponse,
    DescribeHostReservationsResponse,

    -- * Response Lenses
    dhrrrsNextToken,
    dhrrrsHostReservationSet,
    dhrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeHostReservations' smart constructor.
data DescribeHostReservations = DescribeHostReservations'
  { _dhrNextToken ::
      !(Maybe Text),
    _dhrMaxResults ::
      !(Maybe Int),
    _dhrHostReservationIdSet ::
      !(Maybe [Text]),
    _dhrFilter ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeHostReservations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhrNextToken' - The token to use to retrieve the next page of results.
--
-- * 'dhrMaxResults' - The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error.
--
-- * 'dhrHostReservationIdSet' - The host reservation IDs.
--
-- * 'dhrFilter' - The filters.     * @instance-family@ - The instance family (for example, @m4@ ).     * @payment-option@ - The payment option (@NoUpfront@ | @PartialUpfront@ | @AllUpfront@ ).     * @state@ - The state of the reservation (@payment-pending@ | @payment-failed@ | @active@ | @retired@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeHostReservations ::
  DescribeHostReservations
describeHostReservations =
  DescribeHostReservations'
    { _dhrNextToken = Nothing,
      _dhrMaxResults = Nothing,
      _dhrHostReservationIdSet = Nothing,
      _dhrFilter = Nothing
    }

-- | The token to use to retrieve the next page of results.
dhrNextToken :: Lens' DescribeHostReservations (Maybe Text)
dhrNextToken = lens _dhrNextToken (\s a -> s {_dhrNextToken = a})

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error.
dhrMaxResults :: Lens' DescribeHostReservations (Maybe Int)
dhrMaxResults = lens _dhrMaxResults (\s a -> s {_dhrMaxResults = a})

-- | The host reservation IDs.
dhrHostReservationIdSet :: Lens' DescribeHostReservations [Text]
dhrHostReservationIdSet = lens _dhrHostReservationIdSet (\s a -> s {_dhrHostReservationIdSet = a}) . _Default . _Coerce

-- | The filters.     * @instance-family@ - The instance family (for example, @m4@ ).     * @payment-option@ - The payment option (@NoUpfront@ | @PartialUpfront@ | @AllUpfront@ ).     * @state@ - The state of the reservation (@payment-pending@ | @payment-failed@ | @active@ | @retired@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dhrFilter :: Lens' DescribeHostReservations [Filter]
dhrFilter = lens _dhrFilter (\s a -> s {_dhrFilter = a}) . _Default . _Coerce

instance AWSPager DescribeHostReservations where
  page rq rs
    | stop (rs ^. dhrrrsNextToken) = Nothing
    | stop (rs ^. dhrrrsHostReservationSet) = Nothing
    | otherwise =
      Just $ rq & dhrNextToken .~ rs ^. dhrrrsNextToken

instance AWSRequest DescribeHostReservations where
  type
    Rs DescribeHostReservations =
      DescribeHostReservationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeHostReservationsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "hostReservationSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeHostReservations

instance NFData DescribeHostReservations

instance ToHeaders DescribeHostReservations where
  toHeaders = const mempty

instance ToPath DescribeHostReservations where
  toPath = const "/"

instance ToQuery DescribeHostReservations where
  toQuery DescribeHostReservations' {..} =
    mconcat
      [ "Action"
          =: ("DescribeHostReservations" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dhrNextToken,
        "MaxResults" =: _dhrMaxResults,
        toQuery
          ( toQueryList "HostReservationIdSet"
              <$> _dhrHostReservationIdSet
          ),
        toQuery (toQueryList "Filter" <$> _dhrFilter)
      ]

-- | /See:/ 'describeHostReservationsResponse' smart constructor.
data DescribeHostReservationsResponse = DescribeHostReservationsResponse'
  { _dhrrrsNextToken ::
      !( Maybe
           Text
       ),
    _dhrrrsHostReservationSet ::
      !( Maybe
           [HostReservation]
       ),
    _dhrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeHostReservationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhrrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dhrrrsHostReservationSet' - Details about the reservation's configuration.
--
-- * 'dhrrrsResponseStatus' - -- | The response status code.
describeHostReservationsResponse ::
  -- | 'dhrrrsResponseStatus'
  Int ->
  DescribeHostReservationsResponse
describeHostReservationsResponse pResponseStatus_ =
  DescribeHostReservationsResponse'
    { _dhrrrsNextToken =
        Nothing,
      _dhrrrsHostReservationSet = Nothing,
      _dhrrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dhrrrsNextToken :: Lens' DescribeHostReservationsResponse (Maybe Text)
dhrrrsNextToken = lens _dhrrrsNextToken (\s a -> s {_dhrrrsNextToken = a})

-- | Details about the reservation's configuration.
dhrrrsHostReservationSet :: Lens' DescribeHostReservationsResponse [HostReservation]
dhrrrsHostReservationSet = lens _dhrrrsHostReservationSet (\s a -> s {_dhrrrsHostReservationSet = a}) . _Default . _Coerce

-- | -- | The response status code.
dhrrrsResponseStatus :: Lens' DescribeHostReservationsResponse Int
dhrrrsResponseStatus = lens _dhrrrsResponseStatus (\s a -> s {_dhrrrsResponseStatus = a})

instance NFData DescribeHostReservationsResponse
