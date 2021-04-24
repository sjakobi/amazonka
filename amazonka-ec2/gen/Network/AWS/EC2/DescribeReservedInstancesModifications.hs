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
-- Module      : Network.AWS.EC2.DescribeReservedInstancesModifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the modifications made to your Reserved Instances. If no parameter is specified, information about all your Reserved Instances modification requests is returned. If a modification ID is specified, only information about the specific modification is returned.
--
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html Modifying Reserved Instances> in the /Amazon EC2 User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeReservedInstancesModifications
  ( -- * Creating a Request
    describeReservedInstancesModifications,
    DescribeReservedInstancesModifications,

    -- * Request Lenses
    drimNextToken,
    drimReservedInstancesModificationIds,
    drimFilters,

    -- * Destructuring the Response
    describeReservedInstancesModificationsResponse,
    DescribeReservedInstancesModificationsResponse,

    -- * Response Lenses
    drimrrsNextToken,
    drimrrsReservedInstancesModifications,
    drimrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeReservedInstancesModifications.
--
--
--
-- /See:/ 'describeReservedInstancesModifications' smart constructor.
data DescribeReservedInstancesModifications = DescribeReservedInstancesModifications'
  { _drimNextToken ::
      !( Maybe
           Text
       ),
    _drimReservedInstancesModificationIds ::
      !( Maybe
           [Text]
       ),
    _drimFilters ::
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

-- | Creates a value of 'DescribeReservedInstancesModifications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drimNextToken' - The token to retrieve the next page of results.
--
-- * 'drimReservedInstancesModificationIds' - IDs for the submitted modification request.
--
-- * 'drimFilters' - One or more filters.     * @client-token@ - The idempotency token for the modification request.     * @create-date@ - The time when the modification request was created.     * @effective-date@ - The time when the modification becomes effective.     * @modification-result.reserved-instances-id@ - The ID for the Reserved Instances created as part of the modification request. This ID is only available when the status of the modification is @fulfilled@ .     * @modification-result.target-configuration.availability-zone@ - The Availability Zone for the new Reserved Instances.     * @modification-result.target-configuration.instance-count @ - The number of new Reserved Instances.     * @modification-result.target-configuration.instance-type@ - The instance type of the new Reserved Instances.     * @modification-result.target-configuration.platform@ - The network platform of the new Reserved Instances (@EC2-Classic@ | @EC2-VPC@ ).     * @reserved-instances-id@ - The ID of the Reserved Instances modified.     * @reserved-instances-modification-id@ - The ID of the modification request.     * @status@ - The status of the Reserved Instances modification request (@processing@ | @fulfilled@ | @failed@ ).     * @status-message@ - The reason for the status.     * @update-date@ - The time when the modification request was last updated.
describeReservedInstancesModifications ::
  DescribeReservedInstancesModifications
describeReservedInstancesModifications =
  DescribeReservedInstancesModifications'
    { _drimNextToken =
        Nothing,
      _drimReservedInstancesModificationIds =
        Nothing,
      _drimFilters = Nothing
    }

-- | The token to retrieve the next page of results.
drimNextToken :: Lens' DescribeReservedInstancesModifications (Maybe Text)
drimNextToken = lens _drimNextToken (\s a -> s {_drimNextToken = a})

-- | IDs for the submitted modification request.
drimReservedInstancesModificationIds :: Lens' DescribeReservedInstancesModifications [Text]
drimReservedInstancesModificationIds = lens _drimReservedInstancesModificationIds (\s a -> s {_drimReservedInstancesModificationIds = a}) . _Default . _Coerce

-- | One or more filters.     * @client-token@ - The idempotency token for the modification request.     * @create-date@ - The time when the modification request was created.     * @effective-date@ - The time when the modification becomes effective.     * @modification-result.reserved-instances-id@ - The ID for the Reserved Instances created as part of the modification request. This ID is only available when the status of the modification is @fulfilled@ .     * @modification-result.target-configuration.availability-zone@ - The Availability Zone for the new Reserved Instances.     * @modification-result.target-configuration.instance-count @ - The number of new Reserved Instances.     * @modification-result.target-configuration.instance-type@ - The instance type of the new Reserved Instances.     * @modification-result.target-configuration.platform@ - The network platform of the new Reserved Instances (@EC2-Classic@ | @EC2-VPC@ ).     * @reserved-instances-id@ - The ID of the Reserved Instances modified.     * @reserved-instances-modification-id@ - The ID of the modification request.     * @status@ - The status of the Reserved Instances modification request (@processing@ | @fulfilled@ | @failed@ ).     * @status-message@ - The reason for the status.     * @update-date@ - The time when the modification request was last updated.
drimFilters :: Lens' DescribeReservedInstancesModifications [Filter]
drimFilters = lens _drimFilters (\s a -> s {_drimFilters = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeReservedInstancesModifications
  where
  page rq rs
    | stop (rs ^. drimrrsNextToken) = Nothing
    | stop (rs ^. drimrrsReservedInstancesModifications) =
      Nothing
    | otherwise =
      Just $ rq & drimNextToken .~ rs ^. drimrrsNextToken

instance
  AWSRequest
    DescribeReservedInstancesModifications
  where
  type
    Rs DescribeReservedInstancesModifications =
      DescribeReservedInstancesModificationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeReservedInstancesModificationsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "reservedInstancesModificationsSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeReservedInstancesModifications

instance
  NFData
    DescribeReservedInstancesModifications

instance
  ToHeaders
    DescribeReservedInstancesModifications
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeReservedInstancesModifications
  where
  toPath = const "/"

instance
  ToQuery
    DescribeReservedInstancesModifications
  where
  toQuery DescribeReservedInstancesModifications' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeReservedInstancesModifications" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _drimNextToken,
        toQuery
          ( toQueryList "ReservedInstancesModificationId"
              <$> _drimReservedInstancesModificationIds
          ),
        toQuery (toQueryList "Filter" <$> _drimFilters)
      ]

-- | Contains the output of DescribeReservedInstancesModifications.
--
--
--
-- /See:/ 'describeReservedInstancesModificationsResponse' smart constructor.
data DescribeReservedInstancesModificationsResponse = DescribeReservedInstancesModificationsResponse'
  { _drimrrsNextToken ::
      !( Maybe
           Text
       ),
    _drimrrsReservedInstancesModifications ::
      !( Maybe
           [ReservedInstancesModification]
       ),
    _drimrrsResponseStatus ::
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

-- | Creates a value of 'DescribeReservedInstancesModificationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drimrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'drimrrsReservedInstancesModifications' - The Reserved Instance modification information.
--
-- * 'drimrrsResponseStatus' - -- | The response status code.
describeReservedInstancesModificationsResponse ::
  -- | 'drimrrsResponseStatus'
  Int ->
  DescribeReservedInstancesModificationsResponse
describeReservedInstancesModificationsResponse
  pResponseStatus_ =
    DescribeReservedInstancesModificationsResponse'
      { _drimrrsNextToken =
          Nothing,
        _drimrrsReservedInstancesModifications =
          Nothing,
        _drimrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
drimrrsNextToken :: Lens' DescribeReservedInstancesModificationsResponse (Maybe Text)
drimrrsNextToken = lens _drimrrsNextToken (\s a -> s {_drimrrsNextToken = a})

-- | The Reserved Instance modification information.
drimrrsReservedInstancesModifications :: Lens' DescribeReservedInstancesModificationsResponse [ReservedInstancesModification]
drimrrsReservedInstancesModifications = lens _drimrrsReservedInstancesModifications (\s a -> s {_drimrrsReservedInstancesModifications = a}) . _Default . _Coerce

-- | -- | The response status code.
drimrrsResponseStatus :: Lens' DescribeReservedInstancesModificationsResponse Int
drimrrsResponseStatus = lens _drimrrsResponseStatus (\s a -> s {_drimrrsResponseStatus = a})

instance
  NFData
    DescribeReservedInstancesModificationsResponse
