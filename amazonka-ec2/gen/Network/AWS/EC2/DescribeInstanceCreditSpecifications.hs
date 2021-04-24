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
-- Module      : Network.AWS.EC2.DescribeInstanceCreditSpecifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the credit option for CPU usage of the specified burstable performance instances. The credit options are @standard@ and @unlimited@ .
--
--
-- If you do not specify an instance ID, Amazon EC2 returns burstable performance instances with the @unlimited@ credit option, as well as instances that were previously configured as T2, T3, and T3a with the @unlimited@ credit option. For example, if you resize a T2 instance, while it is configured as @unlimited@ , to an M4 instance, Amazon EC2 returns the M4 instance.
--
-- If you specify one or more instance IDs, Amazon EC2 returns the credit option (@standard@ or @unlimited@ ) of those instances. If you specify an instance ID that is not valid, such as an instance that is not a burstable performance instance, an error is returned.
--
-- Recently terminated instances might appear in the returned results. This interval is usually less than one hour.
--
-- If an Availability Zone is experiencing a service disruption and you specify instance IDs in the affected zone, or do not specify any instance IDs at all, the call fails. If you specify only instance IDs in an unaffected zone, the call works normally.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html Burstable performance instances> in the /Amazon EC2 User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeInstanceCreditSpecifications
  ( -- * Creating a Request
    describeInstanceCreditSpecifications,
    DescribeInstanceCreditSpecifications,

    -- * Request Lenses
    dicsInstanceIds,
    dicsNextToken,
    dicsDryRun,
    dicsMaxResults,
    dicsFilters,

    -- * Destructuring the Response
    describeInstanceCreditSpecificationsResponse,
    DescribeInstanceCreditSpecificationsResponse,

    -- * Response Lenses
    dicsrrsNextToken,
    dicsrrsInstanceCreditSpecifications,
    dicsrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInstanceCreditSpecifications' smart constructor.
data DescribeInstanceCreditSpecifications = DescribeInstanceCreditSpecifications'
  { _dicsInstanceIds ::
      !( Maybe
           [Text]
       ),
    _dicsNextToken ::
      !( Maybe
           Text
       ),
    _dicsDryRun ::
      !( Maybe
           Bool
       ),
    _dicsMaxResults ::
      !( Maybe
           Nat
       ),
    _dicsFilters ::
      !( Maybe
           [Filter]
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

-- | Creates a value of 'DescribeInstanceCreditSpecifications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dicsInstanceIds' - The instance IDs. Default: Describes all your instances. Constraints: Maximum 1000 explicitly specified instance IDs.
--
-- * 'dicsNextToken' - The token to retrieve the next page of results.
--
-- * 'dicsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dicsMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
--
-- * 'dicsFilters' - The filters.     * @instance-id@ - The ID of the instance.
describeInstanceCreditSpecifications ::
  DescribeInstanceCreditSpecifications
describeInstanceCreditSpecifications =
  DescribeInstanceCreditSpecifications'
    { _dicsInstanceIds =
        Nothing,
      _dicsNextToken = Nothing,
      _dicsDryRun = Nothing,
      _dicsMaxResults = Nothing,
      _dicsFilters = Nothing
    }

-- | The instance IDs. Default: Describes all your instances. Constraints: Maximum 1000 explicitly specified instance IDs.
dicsInstanceIds :: Lens' DescribeInstanceCreditSpecifications [Text]
dicsInstanceIds = lens _dicsInstanceIds (\s a -> s {_dicsInstanceIds = a}) . _Default . _Coerce

-- | The token to retrieve the next page of results.
dicsNextToken :: Lens' DescribeInstanceCreditSpecifications (Maybe Text)
dicsNextToken = lens _dicsNextToken (\s a -> s {_dicsNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dicsDryRun :: Lens' DescribeInstanceCreditSpecifications (Maybe Bool)
dicsDryRun = lens _dicsDryRun (\s a -> s {_dicsDryRun = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
dicsMaxResults :: Lens' DescribeInstanceCreditSpecifications (Maybe Natural)
dicsMaxResults = lens _dicsMaxResults (\s a -> s {_dicsMaxResults = a}) . mapping _Nat

-- | The filters.     * @instance-id@ - The ID of the instance.
dicsFilters :: Lens' DescribeInstanceCreditSpecifications [Filter]
dicsFilters = lens _dicsFilters (\s a -> s {_dicsFilters = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeInstanceCreditSpecifications
  where
  page rq rs
    | stop (rs ^. dicsrrsNextToken) = Nothing
    | stop (rs ^. dicsrrsInstanceCreditSpecifications) =
      Nothing
    | otherwise =
      Just $ rq & dicsNextToken .~ rs ^. dicsrrsNextToken

instance
  AWSRequest
    DescribeInstanceCreditSpecifications
  where
  type
    Rs DescribeInstanceCreditSpecifications =
      DescribeInstanceCreditSpecificationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeInstanceCreditSpecificationsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "instanceCreditSpecificationSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeInstanceCreditSpecifications

instance NFData DescribeInstanceCreditSpecifications

instance
  ToHeaders
    DescribeInstanceCreditSpecifications
  where
  toHeaders = const mempty

instance ToPath DescribeInstanceCreditSpecifications where
  toPath = const "/"

instance ToQuery DescribeInstanceCreditSpecifications where
  toQuery DescribeInstanceCreditSpecifications' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeInstanceCreditSpecifications" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          (toQueryList "InstanceId" <$> _dicsInstanceIds),
        "NextToken" =: _dicsNextToken,
        "DryRun" =: _dicsDryRun,
        "MaxResults" =: _dicsMaxResults,
        toQuery (toQueryList "Filter" <$> _dicsFilters)
      ]

-- | /See:/ 'describeInstanceCreditSpecificationsResponse' smart constructor.
data DescribeInstanceCreditSpecificationsResponse = DescribeInstanceCreditSpecificationsResponse'
  { _dicsrrsNextToken ::
      !( Maybe
           Text
       ),
    _dicsrrsInstanceCreditSpecifications ::
      !( Maybe
           [InstanceCreditSpecification]
       ),
    _dicsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstanceCreditSpecificationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dicsrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dicsrrsInstanceCreditSpecifications' - Information about the credit option for CPU usage of an instance.
--
-- * 'dicsrrsResponseStatus' - -- | The response status code.
describeInstanceCreditSpecificationsResponse ::
  -- | 'dicsrrsResponseStatus'
  Int ->
  DescribeInstanceCreditSpecificationsResponse
describeInstanceCreditSpecificationsResponse
  pResponseStatus_ =
    DescribeInstanceCreditSpecificationsResponse'
      { _dicsrrsNextToken =
          Nothing,
        _dicsrrsInstanceCreditSpecifications =
          Nothing,
        _dicsrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dicsrrsNextToken :: Lens' DescribeInstanceCreditSpecificationsResponse (Maybe Text)
dicsrrsNextToken = lens _dicsrrsNextToken (\s a -> s {_dicsrrsNextToken = a})

-- | Information about the credit option for CPU usage of an instance.
dicsrrsInstanceCreditSpecifications :: Lens' DescribeInstanceCreditSpecificationsResponse [InstanceCreditSpecification]
dicsrrsInstanceCreditSpecifications = lens _dicsrrsInstanceCreditSpecifications (\s a -> s {_dicsrrsInstanceCreditSpecifications = a}) . _Default . _Coerce

-- | -- | The response status code.
dicsrrsResponseStatus :: Lens' DescribeInstanceCreditSpecificationsResponse Int
dicsrrsResponseStatus = lens _dicsrrsResponseStatus (\s a -> s {_dicsrrsResponseStatus = a})

instance
  NFData
    DescribeInstanceCreditSpecificationsResponse
