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
-- Module      : Network.AWS.Config.ListAggregateDiscoveredResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions. A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region. You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region.
--
--
-- For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type @AWS::EC2::Instance@ then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.
--
--
-- This operation returns paginated results.
module Network.AWS.Config.ListAggregateDiscoveredResources
  ( -- * Creating a Request
    listAggregateDiscoveredResources,
    ListAggregateDiscoveredResources,

    -- * Request Lenses
    ladrNextToken,
    ladrFilters,
    ladrLimit,
    ladrConfigurationAggregatorName,
    ladrResourceType,

    -- * Destructuring the Response
    listAggregateDiscoveredResourcesResponse,
    ListAggregateDiscoveredResourcesResponse,

    -- * Response Lenses
    ladrrrsNextToken,
    ladrrrsResourceIdentifiers,
    ladrrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAggregateDiscoveredResources' smart constructor.
data ListAggregateDiscoveredResources = ListAggregateDiscoveredResources'
  { _ladrNextToken ::
      !( Maybe
           Text
       ),
    _ladrFilters ::
      !( Maybe
           ResourceFilters
       ),
    _ladrLimit ::
      !( Maybe
           Nat
       ),
    _ladrConfigurationAggregatorName ::
      !Text,
    _ladrResourceType ::
      !ResourceType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAggregateDiscoveredResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladrNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'ladrFilters' - Filters the results based on the @ResourceFilters@ object.
--
-- * 'ladrLimit' - The maximum number of resource identifiers returned on each page. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
--
-- * 'ladrConfigurationAggregatorName' - The name of the configuration aggregator.
--
-- * 'ladrResourceType' - The type of resources that you want AWS Config to list in the response.
listAggregateDiscoveredResources ::
  -- | 'ladrConfigurationAggregatorName'
  Text ->
  -- | 'ladrResourceType'
  ResourceType ->
  ListAggregateDiscoveredResources
listAggregateDiscoveredResources
  pConfigurationAggregatorName_
  pResourceType_ =
    ListAggregateDiscoveredResources'
      { _ladrNextToken =
          Nothing,
        _ladrFilters = Nothing,
        _ladrLimit = Nothing,
        _ladrConfigurationAggregatorName =
          pConfigurationAggregatorName_,
        _ladrResourceType = pResourceType_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
ladrNextToken :: Lens' ListAggregateDiscoveredResources (Maybe Text)
ladrNextToken = lens _ladrNextToken (\s a -> s {_ladrNextToken = a})

-- | Filters the results based on the @ResourceFilters@ object.
ladrFilters :: Lens' ListAggregateDiscoveredResources (Maybe ResourceFilters)
ladrFilters = lens _ladrFilters (\s a -> s {_ladrFilters = a})

-- | The maximum number of resource identifiers returned on each page. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
ladrLimit :: Lens' ListAggregateDiscoveredResources (Maybe Natural)
ladrLimit = lens _ladrLimit (\s a -> s {_ladrLimit = a}) . mapping _Nat

-- | The name of the configuration aggregator.
ladrConfigurationAggregatorName :: Lens' ListAggregateDiscoveredResources Text
ladrConfigurationAggregatorName = lens _ladrConfigurationAggregatorName (\s a -> s {_ladrConfigurationAggregatorName = a})

-- | The type of resources that you want AWS Config to list in the response.
ladrResourceType :: Lens' ListAggregateDiscoveredResources ResourceType
ladrResourceType = lens _ladrResourceType (\s a -> s {_ladrResourceType = a})

instance AWSPager ListAggregateDiscoveredResources where
  page rq rs
    | stop (rs ^. ladrrrsNextToken) = Nothing
    | stop (rs ^. ladrrrsResourceIdentifiers) = Nothing
    | otherwise =
      Just $ rq & ladrNextToken .~ rs ^. ladrrrsNextToken

instance AWSRequest ListAggregateDiscoveredResources where
  type
    Rs ListAggregateDiscoveredResources =
      ListAggregateDiscoveredResourcesResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          ListAggregateDiscoveredResourcesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ResourceIdentifiers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAggregateDiscoveredResources

instance NFData ListAggregateDiscoveredResources

instance ToHeaders ListAggregateDiscoveredResources where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.ListAggregateDiscoveredResources" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAggregateDiscoveredResources where
  toJSON ListAggregateDiscoveredResources' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ladrNextToken,
            ("Filters" .=) <$> _ladrFilters,
            ("Limit" .=) <$> _ladrLimit,
            Just
              ( "ConfigurationAggregatorName"
                  .= _ladrConfigurationAggregatorName
              ),
            Just ("ResourceType" .= _ladrResourceType)
          ]
      )

instance ToPath ListAggregateDiscoveredResources where
  toPath = const "/"

instance ToQuery ListAggregateDiscoveredResources where
  toQuery = const mempty

-- | /See:/ 'listAggregateDiscoveredResourcesResponse' smart constructor.
data ListAggregateDiscoveredResourcesResponse = ListAggregateDiscoveredResourcesResponse'
  { _ladrrrsNextToken ::
      !( Maybe
           Text
       ),
    _ladrrrsResourceIdentifiers ::
      !( Maybe
           [AggregateResourceIdentifier]
       ),
    _ladrrrsResponseStatus ::
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

-- | Creates a value of 'ListAggregateDiscoveredResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladrrrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'ladrrrsResourceIdentifiers' - Returns a list of @ResourceIdentifiers@ objects.
--
-- * 'ladrrrsResponseStatus' - -- | The response status code.
listAggregateDiscoveredResourcesResponse ::
  -- | 'ladrrrsResponseStatus'
  Int ->
  ListAggregateDiscoveredResourcesResponse
listAggregateDiscoveredResourcesResponse
  pResponseStatus_ =
    ListAggregateDiscoveredResourcesResponse'
      { _ladrrrsNextToken =
          Nothing,
        _ladrrrsResourceIdentifiers =
          Nothing,
        _ladrrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
ladrrrsNextToken :: Lens' ListAggregateDiscoveredResourcesResponse (Maybe Text)
ladrrrsNextToken = lens _ladrrrsNextToken (\s a -> s {_ladrrrsNextToken = a})

-- | Returns a list of @ResourceIdentifiers@ objects.
ladrrrsResourceIdentifiers :: Lens' ListAggregateDiscoveredResourcesResponse [AggregateResourceIdentifier]
ladrrrsResourceIdentifiers = lens _ladrrrsResourceIdentifiers (\s a -> s {_ladrrrsResourceIdentifiers = a}) . _Default . _Coerce

-- | -- | The response status code.
ladrrrsResponseStatus :: Lens' ListAggregateDiscoveredResourcesResponse Int
ladrrrsResponseStatus = lens _ladrrrsResponseStatus (\s a -> s {_ladrrrsResponseStatus = a})

instance
  NFData
    ListAggregateDiscoveredResourcesResponse
