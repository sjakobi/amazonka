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
-- Module      : Network.AWS.EC2.DescribeSpotFleetRequests
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your Spot Fleet requests.
--
--
-- Spot Fleet requests are deleted 48 hours after they are canceled and their instances are terminated.
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeSpotFleetRequests
  ( -- * Creating a Request
    describeSpotFleetRequests,
    DescribeSpotFleetRequests,

    -- * Request Lenses
    dsfrNextToken,
    dsfrDryRun,
    dsfrMaxResults,
    dsfrSpotFleetRequestIds,

    -- * Destructuring the Response
    describeSpotFleetRequestsResponse,
    DescribeSpotFleetRequestsResponse,

    -- * Response Lenses
    dsfrrrsNextToken,
    dsfrrrsSpotFleetRequestConfigs,
    dsfrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeSpotFleetRequests.
--
--
--
-- /See:/ 'describeSpotFleetRequests' smart constructor.
data DescribeSpotFleetRequests = DescribeSpotFleetRequests'
  { _dsfrNextToken ::
      !(Maybe Text),
    _dsfrDryRun ::
      !(Maybe Bool),
    _dsfrMaxResults ::
      !(Maybe Int),
    _dsfrSpotFleetRequestIds ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeSpotFleetRequests' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsfrNextToken' - The token for the next set of results.
--
-- * 'dsfrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dsfrMaxResults' - The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'dsfrSpotFleetRequestIds' - The IDs of the Spot Fleet requests.
describeSpotFleetRequests ::
  DescribeSpotFleetRequests
describeSpotFleetRequests =
  DescribeSpotFleetRequests'
    { _dsfrNextToken =
        Nothing,
      _dsfrDryRun = Nothing,
      _dsfrMaxResults = Nothing,
      _dsfrSpotFleetRequestIds = Nothing
    }

-- | The token for the next set of results.
dsfrNextToken :: Lens' DescribeSpotFleetRequests (Maybe Text)
dsfrNextToken = lens _dsfrNextToken (\s a -> s {_dsfrNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dsfrDryRun :: Lens' DescribeSpotFleetRequests (Maybe Bool)
dsfrDryRun = lens _dsfrDryRun (\s a -> s {_dsfrDryRun = a})

-- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
dsfrMaxResults :: Lens' DescribeSpotFleetRequests (Maybe Int)
dsfrMaxResults = lens _dsfrMaxResults (\s a -> s {_dsfrMaxResults = a})

-- | The IDs of the Spot Fleet requests.
dsfrSpotFleetRequestIds :: Lens' DescribeSpotFleetRequests [Text]
dsfrSpotFleetRequestIds = lens _dsfrSpotFleetRequestIds (\s a -> s {_dsfrSpotFleetRequestIds = a}) . _Default . _Coerce

instance AWSPager DescribeSpotFleetRequests where
  page rq rs
    | stop (rs ^. dsfrrrsNextToken) = Nothing
    | stop (rs ^. dsfrrrsSpotFleetRequestConfigs) =
      Nothing
    | otherwise =
      Just $ rq & dsfrNextToken .~ rs ^. dsfrrrsNextToken

instance AWSRequest DescribeSpotFleetRequests where
  type
    Rs DescribeSpotFleetRequests =
      DescribeSpotFleetRequestsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeSpotFleetRequestsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "spotFleetRequestConfigSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSpotFleetRequests

instance NFData DescribeSpotFleetRequests

instance ToHeaders DescribeSpotFleetRequests where
  toHeaders = const mempty

instance ToPath DescribeSpotFleetRequests where
  toPath = const "/"

instance ToQuery DescribeSpotFleetRequests where
  toQuery DescribeSpotFleetRequests' {..} =
    mconcat
      [ "Action"
          =: ("DescribeSpotFleetRequests" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dsfrNextToken,
        "DryRun" =: _dsfrDryRun,
        "MaxResults" =: _dsfrMaxResults,
        toQuery
          ( toQueryList "SpotFleetRequestId"
              <$> _dsfrSpotFleetRequestIds
          )
      ]

-- | Contains the output of DescribeSpotFleetRequests.
--
--
--
-- /See:/ 'describeSpotFleetRequestsResponse' smart constructor.
data DescribeSpotFleetRequestsResponse = DescribeSpotFleetRequestsResponse'
  { _dsfrrrsNextToken ::
      !( Maybe
           Text
       ),
    _dsfrrrsSpotFleetRequestConfigs ::
      !( Maybe
           [SpotFleetRequestConfig]
       ),
    _dsfrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSpotFleetRequestsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsfrrrsNextToken' - The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
--
-- * 'dsfrrrsSpotFleetRequestConfigs' - Information about the configuration of your Spot Fleet.
--
-- * 'dsfrrrsResponseStatus' - -- | The response status code.
describeSpotFleetRequestsResponse ::
  -- | 'dsfrrrsResponseStatus'
  Int ->
  DescribeSpotFleetRequestsResponse
describeSpotFleetRequestsResponse pResponseStatus_ =
  DescribeSpotFleetRequestsResponse'
    { _dsfrrrsNextToken =
        Nothing,
      _dsfrrrsSpotFleetRequestConfigs =
        Nothing,
      _dsfrrrsResponseStatus =
        pResponseStatus_
    }

-- | The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
dsfrrrsNextToken :: Lens' DescribeSpotFleetRequestsResponse (Maybe Text)
dsfrrrsNextToken = lens _dsfrrrsNextToken (\s a -> s {_dsfrrrsNextToken = a})

-- | Information about the configuration of your Spot Fleet.
dsfrrrsSpotFleetRequestConfigs :: Lens' DescribeSpotFleetRequestsResponse [SpotFleetRequestConfig]
dsfrrrsSpotFleetRequestConfigs = lens _dsfrrrsSpotFleetRequestConfigs (\s a -> s {_dsfrrrsSpotFleetRequestConfigs = a}) . _Default . _Coerce

-- | -- | The response status code.
dsfrrrsResponseStatus :: Lens' DescribeSpotFleetRequestsResponse Int
dsfrrrsResponseStatus = lens _dsfrrrsResponseStatus (\s a -> s {_dsfrrrsResponseStatus = a})

instance NFData DescribeSpotFleetRequestsResponse
