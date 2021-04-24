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
-- Module      : Network.AWS.EC2.DescribeSpotFleetInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the running instances for the specified Spot Fleet.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeSpotFleetInstances
  ( -- * Creating a Request
    describeSpotFleetInstances,
    DescribeSpotFleetInstances,

    -- * Request Lenses
    dsfiNextToken,
    dsfiDryRun,
    dsfiMaxResults,
    dsfiSpotFleetRequestId,

    -- * Destructuring the Response
    describeSpotFleetInstancesResponse,
    DescribeSpotFleetInstancesResponse,

    -- * Response Lenses
    dsfirrsNextToken,
    dsfirrsActiveInstances,
    dsfirrsSpotFleetRequestId,
    dsfirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeSpotFleetInstances.
--
--
--
-- /See:/ 'describeSpotFleetInstances' smart constructor.
data DescribeSpotFleetInstances = DescribeSpotFleetInstances'
  { _dsfiNextToken ::
      !(Maybe Text),
    _dsfiDryRun ::
      !(Maybe Bool),
    _dsfiMaxResults ::
      !(Maybe Nat),
    _dsfiSpotFleetRequestId ::
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

-- | Creates a value of 'DescribeSpotFleetInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsfiNextToken' - The token for the next set of results.
--
-- * 'dsfiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dsfiMaxResults' - The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'dsfiSpotFleetRequestId' - The ID of the Spot Fleet request.
describeSpotFleetInstances ::
  -- | 'dsfiSpotFleetRequestId'
  Text ->
  DescribeSpotFleetInstances
describeSpotFleetInstances pSpotFleetRequestId_ =
  DescribeSpotFleetInstances'
    { _dsfiNextToken =
        Nothing,
      _dsfiDryRun = Nothing,
      _dsfiMaxResults = Nothing,
      _dsfiSpotFleetRequestId = pSpotFleetRequestId_
    }

-- | The token for the next set of results.
dsfiNextToken :: Lens' DescribeSpotFleetInstances (Maybe Text)
dsfiNextToken = lens _dsfiNextToken (\s a -> s {_dsfiNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dsfiDryRun :: Lens' DescribeSpotFleetInstances (Maybe Bool)
dsfiDryRun = lens _dsfiDryRun (\s a -> s {_dsfiDryRun = a})

-- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
dsfiMaxResults :: Lens' DescribeSpotFleetInstances (Maybe Natural)
dsfiMaxResults = lens _dsfiMaxResults (\s a -> s {_dsfiMaxResults = a}) . mapping _Nat

-- | The ID of the Spot Fleet request.
dsfiSpotFleetRequestId :: Lens' DescribeSpotFleetInstances Text
dsfiSpotFleetRequestId = lens _dsfiSpotFleetRequestId (\s a -> s {_dsfiSpotFleetRequestId = a})

instance AWSPager DescribeSpotFleetInstances where
  page rq rs
    | stop (rs ^. dsfirrsNextToken) = Nothing
    | stop (rs ^. dsfirrsActiveInstances) = Nothing
    | otherwise =
      Just $ rq & dsfiNextToken .~ rs ^. dsfirrsNextToken

instance AWSRequest DescribeSpotFleetInstances where
  type
    Rs DescribeSpotFleetInstances =
      DescribeSpotFleetInstancesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeSpotFleetInstancesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "activeInstanceSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "spotFleetRequestId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSpotFleetInstances

instance NFData DescribeSpotFleetInstances

instance ToHeaders DescribeSpotFleetInstances where
  toHeaders = const mempty

instance ToPath DescribeSpotFleetInstances where
  toPath = const "/"

instance ToQuery DescribeSpotFleetInstances where
  toQuery DescribeSpotFleetInstances' {..} =
    mconcat
      [ "Action"
          =: ("DescribeSpotFleetInstances" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dsfiNextToken,
        "DryRun" =: _dsfiDryRun,
        "MaxResults" =: _dsfiMaxResults,
        "SpotFleetRequestId" =: _dsfiSpotFleetRequestId
      ]

-- | Contains the output of DescribeSpotFleetInstances.
--
--
--
-- /See:/ 'describeSpotFleetInstancesResponse' smart constructor.
data DescribeSpotFleetInstancesResponse = DescribeSpotFleetInstancesResponse'
  { _dsfirrsNextToken ::
      !( Maybe
           Text
       ),
    _dsfirrsActiveInstances ::
      !( Maybe
           [ActiveInstance]
       ),
    _dsfirrsSpotFleetRequestId ::
      !( Maybe
           Text
       ),
    _dsfirrsResponseStatus ::
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

-- | Creates a value of 'DescribeSpotFleetInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsfirrsNextToken' - The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
--
-- * 'dsfirrsActiveInstances' - The running instances. This list is refreshed periodically and might be out of date.
--
-- * 'dsfirrsSpotFleetRequestId' - The ID of the Spot Fleet request.
--
-- * 'dsfirrsResponseStatus' - -- | The response status code.
describeSpotFleetInstancesResponse ::
  -- | 'dsfirrsResponseStatus'
  Int ->
  DescribeSpotFleetInstancesResponse
describeSpotFleetInstancesResponse pResponseStatus_ =
  DescribeSpotFleetInstancesResponse'
    { _dsfirrsNextToken =
        Nothing,
      _dsfirrsActiveInstances = Nothing,
      _dsfirrsSpotFleetRequestId = Nothing,
      _dsfirrsResponseStatus =
        pResponseStatus_
    }

-- | The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
dsfirrsNextToken :: Lens' DescribeSpotFleetInstancesResponse (Maybe Text)
dsfirrsNextToken = lens _dsfirrsNextToken (\s a -> s {_dsfirrsNextToken = a})

-- | The running instances. This list is refreshed periodically and might be out of date.
dsfirrsActiveInstances :: Lens' DescribeSpotFleetInstancesResponse [ActiveInstance]
dsfirrsActiveInstances = lens _dsfirrsActiveInstances (\s a -> s {_dsfirrsActiveInstances = a}) . _Default . _Coerce

-- | The ID of the Spot Fleet request.
dsfirrsSpotFleetRequestId :: Lens' DescribeSpotFleetInstancesResponse (Maybe Text)
dsfirrsSpotFleetRequestId = lens _dsfirrsSpotFleetRequestId (\s a -> s {_dsfirrsSpotFleetRequestId = a})

-- | -- | The response status code.
dsfirrsResponseStatus :: Lens' DescribeSpotFleetInstancesResponse Int
dsfirrsResponseStatus = lens _dsfirrsResponseStatus (\s a -> s {_dsfirrsResponseStatus = a})

instance NFData DescribeSpotFleetInstancesResponse
