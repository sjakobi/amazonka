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
-- Module      : Network.AWS.Config.DescribeConfigurationAggregatorSourcesStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns status information for sources within an aggregator. The status includes information about the last time AWS Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribeConfigurationAggregatorSourcesStatus
  ( -- * Creating a Request
    describeConfigurationAggregatorSourcesStatus,
    DescribeConfigurationAggregatorSourcesStatus,

    -- * Request Lenses
    dcassNextToken,
    dcassUpdateStatus,
    dcassLimit,
    dcassConfigurationAggregatorName,

    -- * Destructuring the Response
    describeConfigurationAggregatorSourcesStatusResponse,
    DescribeConfigurationAggregatorSourcesStatusResponse,

    -- * Response Lenses
    dcassrrsNextToken,
    dcassrrsAggregatedSourceStatusList,
    dcassrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeConfigurationAggregatorSourcesStatus' smart constructor.
data DescribeConfigurationAggregatorSourcesStatus = DescribeConfigurationAggregatorSourcesStatus'
  { _dcassNextToken ::
      !( Maybe
           Text
       ),
    _dcassUpdateStatus ::
      !( Maybe
           ( List1
               AggregatedSourceStatusType
           )
       ),
    _dcassLimit ::
      !( Maybe
           Nat
       ),
    _dcassConfigurationAggregatorName ::
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

-- | Creates a value of 'DescribeConfigurationAggregatorSourcesStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcassNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dcassUpdateStatus' - Filters the status type.     * Valid value FAILED indicates errors while moving data.     * Valid value SUCCEEDED indicates the data was successfully moved.     * Valid value OUTDATED indicates the data is not the most recent.
--
-- * 'dcassLimit' - The maximum number of AggregatorSourceStatus returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
--
-- * 'dcassConfigurationAggregatorName' - The name of the configuration aggregator.
describeConfigurationAggregatorSourcesStatus ::
  -- | 'dcassConfigurationAggregatorName'
  Text ->
  DescribeConfigurationAggregatorSourcesStatus
describeConfigurationAggregatorSourcesStatus
  pConfigurationAggregatorName_ =
    DescribeConfigurationAggregatorSourcesStatus'
      { _dcassNextToken =
          Nothing,
        _dcassUpdateStatus = Nothing,
        _dcassLimit = Nothing,
        _dcassConfigurationAggregatorName =
          pConfigurationAggregatorName_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dcassNextToken :: Lens' DescribeConfigurationAggregatorSourcesStatus (Maybe Text)
dcassNextToken = lens _dcassNextToken (\s a -> s {_dcassNextToken = a})

-- | Filters the status type.     * Valid value FAILED indicates errors while moving data.     * Valid value SUCCEEDED indicates the data was successfully moved.     * Valid value OUTDATED indicates the data is not the most recent.
dcassUpdateStatus :: Lens' DescribeConfigurationAggregatorSourcesStatus (Maybe (NonEmpty AggregatedSourceStatusType))
dcassUpdateStatus = lens _dcassUpdateStatus (\s a -> s {_dcassUpdateStatus = a}) . mapping _List1

-- | The maximum number of AggregatorSourceStatus returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
dcassLimit :: Lens' DescribeConfigurationAggregatorSourcesStatus (Maybe Natural)
dcassLimit = lens _dcassLimit (\s a -> s {_dcassLimit = a}) . mapping _Nat

-- | The name of the configuration aggregator.
dcassConfigurationAggregatorName :: Lens' DescribeConfigurationAggregatorSourcesStatus Text
dcassConfigurationAggregatorName = lens _dcassConfigurationAggregatorName (\s a -> s {_dcassConfigurationAggregatorName = a})

instance
  AWSPager
    DescribeConfigurationAggregatorSourcesStatus
  where
  page rq rs
    | stop (rs ^. dcassrrsNextToken) = Nothing
    | stop (rs ^. dcassrrsAggregatedSourceStatusList) =
      Nothing
    | otherwise =
      Just $ rq & dcassNextToken .~ rs ^. dcassrrsNextToken

instance
  AWSRequest
    DescribeConfigurationAggregatorSourcesStatus
  where
  type
    Rs DescribeConfigurationAggregatorSourcesStatus =
      DescribeConfigurationAggregatorSourcesStatusResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeConfigurationAggregatorSourcesStatusResponse'
            <$> (x .?> "NextToken")
              <*> (x .?> "AggregatedSourceStatusList" .!@ mempty)
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeConfigurationAggregatorSourcesStatus

instance
  NFData
    DescribeConfigurationAggregatorSourcesStatus

instance
  ToHeaders
    DescribeConfigurationAggregatorSourcesStatus
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeConfigurationAggregatorSourcesStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeConfigurationAggregatorSourcesStatus
  where
  toJSON
    DescribeConfigurationAggregatorSourcesStatus' {..} =
      object
        ( catMaybes
            [ ("NextToken" .=) <$> _dcassNextToken,
              ("UpdateStatus" .=) <$> _dcassUpdateStatus,
              ("Limit" .=) <$> _dcassLimit,
              Just
                ( "ConfigurationAggregatorName"
                    .= _dcassConfigurationAggregatorName
                )
            ]
        )

instance
  ToPath
    DescribeConfigurationAggregatorSourcesStatus
  where
  toPath = const "/"

instance
  ToQuery
    DescribeConfigurationAggregatorSourcesStatus
  where
  toQuery = const mempty

-- | /See:/ 'describeConfigurationAggregatorSourcesStatusResponse' smart constructor.
data DescribeConfigurationAggregatorSourcesStatusResponse = DescribeConfigurationAggregatorSourcesStatusResponse'
  { _dcassrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcassrrsAggregatedSourceStatusList ::
      !( Maybe
           [AggregatedSourceStatus]
       ),
    _dcassrrsResponseStatus ::
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

-- | Creates a value of 'DescribeConfigurationAggregatorSourcesStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcassrrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dcassrrsAggregatedSourceStatusList' - Returns an AggregatedSourceStatus object.
--
-- * 'dcassrrsResponseStatus' - -- | The response status code.
describeConfigurationAggregatorSourcesStatusResponse ::
  -- | 'dcassrrsResponseStatus'
  Int ->
  DescribeConfigurationAggregatorSourcesStatusResponse
describeConfigurationAggregatorSourcesStatusResponse
  pResponseStatus_ =
    DescribeConfigurationAggregatorSourcesStatusResponse'
      { _dcassrrsNextToken =
          Nothing,
        _dcassrrsAggregatedSourceStatusList =
          Nothing,
        _dcassrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dcassrrsNextToken :: Lens' DescribeConfigurationAggregatorSourcesStatusResponse (Maybe Text)
dcassrrsNextToken = lens _dcassrrsNextToken (\s a -> s {_dcassrrsNextToken = a})

-- | Returns an AggregatedSourceStatus object.
dcassrrsAggregatedSourceStatusList :: Lens' DescribeConfigurationAggregatorSourcesStatusResponse [AggregatedSourceStatus]
dcassrrsAggregatedSourceStatusList = lens _dcassrrsAggregatedSourceStatusList (\s a -> s {_dcassrrsAggregatedSourceStatusList = a}) . _Default . _Coerce

-- | -- | The response status code.
dcassrrsResponseStatus :: Lens' DescribeConfigurationAggregatorSourcesStatusResponse Int
dcassrrsResponseStatus = lens _dcassrrsResponseStatus (\s a -> s {_dcassrrsResponseStatus = a})

instance
  NFData
    DescribeConfigurationAggregatorSourcesStatusResponse
