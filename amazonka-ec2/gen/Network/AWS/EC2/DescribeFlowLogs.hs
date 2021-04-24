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
-- Module      : Network.AWS.EC2.DescribeFlowLogs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more flow logs. To view the information in your flow logs (the log streams for the network interfaces), you must use the CloudWatch Logs console or the CloudWatch Logs API.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeFlowLogs
  ( -- * Creating a Request
    describeFlowLogs,
    DescribeFlowLogs,

    -- * Request Lenses
    dflsNextToken,
    dflsDryRun,
    dflsMaxResults,
    dflsFlowLogIds,
    dflsFilter,

    -- * Destructuring the Response
    describeFlowLogsResponse,
    DescribeFlowLogsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsFlowLogs,
    desrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeFlowLogs' smart constructor.
data DescribeFlowLogs = DescribeFlowLogs'
  { _dflsNextToken ::
      !(Maybe Text),
    _dflsDryRun :: !(Maybe Bool),
    _dflsMaxResults :: !(Maybe Int),
    _dflsFlowLogIds :: !(Maybe [Text]),
    _dflsFilter :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeFlowLogs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dflsNextToken' - The token for the next page of results.
--
-- * 'dflsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dflsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dflsFlowLogIds' - One or more flow log IDs. Constraint: Maximum of 1000 flow log IDs.
--
-- * 'dflsFilter' - One or more filters.     * @deliver-log-status@ - The status of the logs delivery (@SUCCESS@ | @FAILED@ ).     * @log-destination-type@ - The type of destination to which the flow log publishes data. Possible destination types include @cloud-watch-logs@ and @s3@ .     * @flow-log-id@ - The ID of the flow log.     * @log-group-name@ - The name of the log group.     * @resource-id@ - The ID of the VPC, subnet, or network interface.     * @traffic-type@ - The type of traffic (@ACCEPT@ | @REJECT@ | @ALL@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeFlowLogs ::
  DescribeFlowLogs
describeFlowLogs =
  DescribeFlowLogs'
    { _dflsNextToken = Nothing,
      _dflsDryRun = Nothing,
      _dflsMaxResults = Nothing,
      _dflsFlowLogIds = Nothing,
      _dflsFilter = Nothing
    }

-- | The token for the next page of results.
dflsNextToken :: Lens' DescribeFlowLogs (Maybe Text)
dflsNextToken = lens _dflsNextToken (\s a -> s {_dflsNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dflsDryRun :: Lens' DescribeFlowLogs (Maybe Bool)
dflsDryRun = lens _dflsDryRun (\s a -> s {_dflsDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dflsMaxResults :: Lens' DescribeFlowLogs (Maybe Int)
dflsMaxResults = lens _dflsMaxResults (\s a -> s {_dflsMaxResults = a})

-- | One or more flow log IDs. Constraint: Maximum of 1000 flow log IDs.
dflsFlowLogIds :: Lens' DescribeFlowLogs [Text]
dflsFlowLogIds = lens _dflsFlowLogIds (\s a -> s {_dflsFlowLogIds = a}) . _Default . _Coerce

-- | One or more filters.     * @deliver-log-status@ - The status of the logs delivery (@SUCCESS@ | @FAILED@ ).     * @log-destination-type@ - The type of destination to which the flow log publishes data. Possible destination types include @cloud-watch-logs@ and @s3@ .     * @flow-log-id@ - The ID of the flow log.     * @log-group-name@ - The name of the log group.     * @resource-id@ - The ID of the VPC, subnet, or network interface.     * @traffic-type@ - The type of traffic (@ACCEPT@ | @REJECT@ | @ALL@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dflsFilter :: Lens' DescribeFlowLogs [Filter]
dflsFilter = lens _dflsFilter (\s a -> s {_dflsFilter = a}) . _Default . _Coerce

instance AWSPager DescribeFlowLogs where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsFlowLogs) = Nothing
    | otherwise =
      Just $ rq & dflsNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeFlowLogs where
  type Rs DescribeFlowLogs = DescribeFlowLogsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeFlowLogsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "flowLogSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFlowLogs

instance NFData DescribeFlowLogs

instance ToHeaders DescribeFlowLogs where
  toHeaders = const mempty

instance ToPath DescribeFlowLogs where
  toPath = const "/"

instance ToQuery DescribeFlowLogs where
  toQuery DescribeFlowLogs' {..} =
    mconcat
      [ "Action" =: ("DescribeFlowLogs" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dflsNextToken,
        "DryRun" =: _dflsDryRun,
        "MaxResults" =: _dflsMaxResults,
        toQuery
          (toQueryList "FlowLogId" <$> _dflsFlowLogIds),
        toQuery (toQueryList "Filter" <$> _dflsFilter)
      ]

-- | /See:/ 'describeFlowLogsResponse' smart constructor.
data DescribeFlowLogsResponse = DescribeFlowLogsResponse'
  { _desrsNextToken ::
      !(Maybe Text),
    _desrsFlowLogs ::
      !(Maybe [FlowLog]),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeFlowLogsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'desrsFlowLogs' - Information about the flow logs.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeFlowLogsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeFlowLogsResponse
describeFlowLogsResponse pResponseStatus_ =
  DescribeFlowLogsResponse'
    { _desrsNextToken =
        Nothing,
      _desrsFlowLogs = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
desrsNextToken :: Lens' DescribeFlowLogsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | Information about the flow logs.
desrsFlowLogs :: Lens' DescribeFlowLogsResponse [FlowLog]
desrsFlowLogs = lens _desrsFlowLogs (\s a -> s {_desrsFlowLogs = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeFlowLogsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeFlowLogsResponse
