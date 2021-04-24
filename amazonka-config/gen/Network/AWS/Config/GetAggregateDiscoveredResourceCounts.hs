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
-- Module      : Network.AWS.Config.GetAggregateDiscoveredResourceCounts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the resource counts across accounts and regions that are present in your AWS Config aggregator. You can request the resource counts by providing filters and GroupByKey.
--
--
-- For example, if the input contains accountID 12345678910 and region us-east-1 in filters, the API returns the count of resources in account ID 12345678910 and region us-east-1. If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource counts for all source accounts that are present in your aggregator.
module Network.AWS.Config.GetAggregateDiscoveredResourceCounts
  ( -- * Creating a Request
    getAggregateDiscoveredResourceCounts,
    GetAggregateDiscoveredResourceCounts,

    -- * Request Lenses
    gadrcNextToken,
    gadrcFilters,
    gadrcGroupByKey,
    gadrcLimit,
    gadrcConfigurationAggregatorName,

    -- * Destructuring the Response
    getAggregateDiscoveredResourceCountsResponse,
    GetAggregateDiscoveredResourceCountsResponse,

    -- * Response Lenses
    gadrcrrsNextToken,
    gadrcrrsGroupedResourceCounts,
    gadrcrrsGroupByKey,
    gadrcrrsResponseStatus,
    gadrcrrsTotalDiscoveredResources,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAggregateDiscoveredResourceCounts' smart constructor.
data GetAggregateDiscoveredResourceCounts = GetAggregateDiscoveredResourceCounts'
  { _gadrcNextToken ::
      !( Maybe
           Text
       ),
    _gadrcFilters ::
      !( Maybe
           ResourceCountFilters
       ),
    _gadrcGroupByKey ::
      !( Maybe
           ResourceCountGroupKey
       ),
    _gadrcLimit ::
      !( Maybe
           Nat
       ),
    _gadrcConfigurationAggregatorName ::
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

-- | Creates a value of 'GetAggregateDiscoveredResourceCounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadrcNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gadrcFilters' - Filters the results based on the @ResourceCountFilters@ object.
--
-- * 'gadrcGroupByKey' - The key to group the resource counts.
--
-- * 'gadrcLimit' - The maximum number of 'GroupedResourceCount' objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default.
--
-- * 'gadrcConfigurationAggregatorName' - The name of the configuration aggregator.
getAggregateDiscoveredResourceCounts ::
  -- | 'gadrcConfigurationAggregatorName'
  Text ->
  GetAggregateDiscoveredResourceCounts
getAggregateDiscoveredResourceCounts
  pConfigurationAggregatorName_ =
    GetAggregateDiscoveredResourceCounts'
      { _gadrcNextToken =
          Nothing,
        _gadrcFilters = Nothing,
        _gadrcGroupByKey = Nothing,
        _gadrcLimit = Nothing,
        _gadrcConfigurationAggregatorName =
          pConfigurationAggregatorName_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gadrcNextToken :: Lens' GetAggregateDiscoveredResourceCounts (Maybe Text)
gadrcNextToken = lens _gadrcNextToken (\s a -> s {_gadrcNextToken = a})

-- | Filters the results based on the @ResourceCountFilters@ object.
gadrcFilters :: Lens' GetAggregateDiscoveredResourceCounts (Maybe ResourceCountFilters)
gadrcFilters = lens _gadrcFilters (\s a -> s {_gadrcFilters = a})

-- | The key to group the resource counts.
gadrcGroupByKey :: Lens' GetAggregateDiscoveredResourceCounts (Maybe ResourceCountGroupKey)
gadrcGroupByKey = lens _gadrcGroupByKey (\s a -> s {_gadrcGroupByKey = a})

-- | The maximum number of 'GroupedResourceCount' objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default.
gadrcLimit :: Lens' GetAggregateDiscoveredResourceCounts (Maybe Natural)
gadrcLimit = lens _gadrcLimit (\s a -> s {_gadrcLimit = a}) . mapping _Nat

-- | The name of the configuration aggregator.
gadrcConfigurationAggregatorName :: Lens' GetAggregateDiscoveredResourceCounts Text
gadrcConfigurationAggregatorName = lens _gadrcConfigurationAggregatorName (\s a -> s {_gadrcConfigurationAggregatorName = a})

instance
  AWSRequest
    GetAggregateDiscoveredResourceCounts
  where
  type
    Rs GetAggregateDiscoveredResourceCounts =
      GetAggregateDiscoveredResourceCountsResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetAggregateDiscoveredResourceCountsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "GroupedResourceCounts" .!@ mempty)
            <*> (x .?> "GroupByKey")
            <*> (pure (fromEnum s))
            <*> (x .:> "TotalDiscoveredResources")
      )

instance
  Hashable
    GetAggregateDiscoveredResourceCounts

instance NFData GetAggregateDiscoveredResourceCounts

instance
  ToHeaders
    GetAggregateDiscoveredResourceCounts
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetAggregateDiscoveredResourceCounts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAggregateDiscoveredResourceCounts where
  toJSON GetAggregateDiscoveredResourceCounts' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gadrcNextToken,
            ("Filters" .=) <$> _gadrcFilters,
            ("GroupByKey" .=) <$> _gadrcGroupByKey,
            ("Limit" .=) <$> _gadrcLimit,
            Just
              ( "ConfigurationAggregatorName"
                  .= _gadrcConfigurationAggregatorName
              )
          ]
      )

instance ToPath GetAggregateDiscoveredResourceCounts where
  toPath = const "/"

instance ToQuery GetAggregateDiscoveredResourceCounts where
  toQuery = const mempty

-- | /See:/ 'getAggregateDiscoveredResourceCountsResponse' smart constructor.
data GetAggregateDiscoveredResourceCountsResponse = GetAggregateDiscoveredResourceCountsResponse'
  { _gadrcrrsNextToken ::
      !( Maybe
           Text
       ),
    _gadrcrrsGroupedResourceCounts ::
      !( Maybe
           [GroupedResourceCount]
       ),
    _gadrcrrsGroupByKey ::
      !( Maybe
           Text
       ),
    _gadrcrrsResponseStatus ::
      !Int,
    _gadrcrrsTotalDiscoveredResources ::
      !Integer
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAggregateDiscoveredResourceCountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gadrcrrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gadrcrrsGroupedResourceCounts' - Returns a list of GroupedResourceCount objects.
--
-- * 'gadrcrrsGroupByKey' - The key passed into the request object. If @GroupByKey@ is not provided, the result will be empty.
--
-- * 'gadrcrrsResponseStatus' - -- | The response status code.
--
-- * 'gadrcrrsTotalDiscoveredResources' - The total number of resources that are present in an aggregator with the filters that you provide.
getAggregateDiscoveredResourceCountsResponse ::
  -- | 'gadrcrrsResponseStatus'
  Int ->
  -- | 'gadrcrrsTotalDiscoveredResources'
  Integer ->
  GetAggregateDiscoveredResourceCountsResponse
getAggregateDiscoveredResourceCountsResponse
  pResponseStatus_
  pTotalDiscoveredResources_ =
    GetAggregateDiscoveredResourceCountsResponse'
      { _gadrcrrsNextToken =
          Nothing,
        _gadrcrrsGroupedResourceCounts =
          Nothing,
        _gadrcrrsGroupByKey = Nothing,
        _gadrcrrsResponseStatus =
          pResponseStatus_,
        _gadrcrrsTotalDiscoveredResources =
          pTotalDiscoveredResources_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gadrcrrsNextToken :: Lens' GetAggregateDiscoveredResourceCountsResponse (Maybe Text)
gadrcrrsNextToken = lens _gadrcrrsNextToken (\s a -> s {_gadrcrrsNextToken = a})

-- | Returns a list of GroupedResourceCount objects.
gadrcrrsGroupedResourceCounts :: Lens' GetAggregateDiscoveredResourceCountsResponse [GroupedResourceCount]
gadrcrrsGroupedResourceCounts = lens _gadrcrrsGroupedResourceCounts (\s a -> s {_gadrcrrsGroupedResourceCounts = a}) . _Default . _Coerce

-- | The key passed into the request object. If @GroupByKey@ is not provided, the result will be empty.
gadrcrrsGroupByKey :: Lens' GetAggregateDiscoveredResourceCountsResponse (Maybe Text)
gadrcrrsGroupByKey = lens _gadrcrrsGroupByKey (\s a -> s {_gadrcrrsGroupByKey = a})

-- | -- | The response status code.
gadrcrrsResponseStatus :: Lens' GetAggregateDiscoveredResourceCountsResponse Int
gadrcrrsResponseStatus = lens _gadrcrrsResponseStatus (\s a -> s {_gadrcrrsResponseStatus = a})

-- | The total number of resources that are present in an aggregator with the filters that you provide.
gadrcrrsTotalDiscoveredResources :: Lens' GetAggregateDiscoveredResourceCountsResponse Integer
gadrcrrsTotalDiscoveredResources = lens _gadrcrrsTotalDiscoveredResources (\s a -> s {_gadrcrrsTotalDiscoveredResources = a})

instance
  NFData
    GetAggregateDiscoveredResourceCountsResponse
