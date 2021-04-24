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
-- Module      : Network.AWS.ElasticSearch.ListElasticsearchInstanceTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all Elasticsearch instance types that are supported for given ElasticsearchVersion
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticSearch.ListElasticsearchInstanceTypes
  ( -- * Creating a Request
    listElasticsearchInstanceTypes,
    ListElasticsearchInstanceTypes,

    -- * Request Lenses
    leitNextToken,
    leitMaxResults,
    leitDomainName,
    leitElasticsearchVersion,

    -- * Destructuring the Response
    listElasticsearchInstanceTypesResponse,
    ListElasticsearchInstanceTypesResponse,

    -- * Response Lenses
    leitrrsNextToken,
    leitrrsElasticsearchInstanceTypes,
    leitrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'ListElasticsearchInstanceTypes' @ operation.
--
--
--
-- /See:/ 'listElasticsearchInstanceTypes' smart constructor.
data ListElasticsearchInstanceTypes = ListElasticsearchInstanceTypes'
  { _leitNextToken ::
      !( Maybe
           Text
       ),
    _leitMaxResults ::
      !( Maybe
           Int
       ),
    _leitDomainName ::
      !( Maybe
           Text
       ),
    _leitElasticsearchVersion ::
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

-- | Creates a value of 'ListElasticsearchInstanceTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leitNextToken' - NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.
--
-- * 'leitMaxResults' - Set this value to limit the number of results returned. Value provided must be greater than 30 else it wont be honored.
--
-- * 'leitDomainName' - DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for list of available Elasticsearch instance types when modifying existing domain.
--
-- * 'leitElasticsearchVersion' - Version of Elasticsearch for which list of supported elasticsearch instance types are needed.
listElasticsearchInstanceTypes ::
  -- | 'leitElasticsearchVersion'
  Text ->
  ListElasticsearchInstanceTypes
listElasticsearchInstanceTypes pElasticsearchVersion_ =
  ListElasticsearchInstanceTypes'
    { _leitNextToken =
        Nothing,
      _leitMaxResults = Nothing,
      _leitDomainName = Nothing,
      _leitElasticsearchVersion =
        pElasticsearchVersion_
    }

-- | NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.
leitNextToken :: Lens' ListElasticsearchInstanceTypes (Maybe Text)
leitNextToken = lens _leitNextToken (\s a -> s {_leitNextToken = a})

-- | Set this value to limit the number of results returned. Value provided must be greater than 30 else it wont be honored.
leitMaxResults :: Lens' ListElasticsearchInstanceTypes (Maybe Int)
leitMaxResults = lens _leitMaxResults (\s a -> s {_leitMaxResults = a})

-- | DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for list of available Elasticsearch instance types when modifying existing domain.
leitDomainName :: Lens' ListElasticsearchInstanceTypes (Maybe Text)
leitDomainName = lens _leitDomainName (\s a -> s {_leitDomainName = a})

-- | Version of Elasticsearch for which list of supported elasticsearch instance types are needed.
leitElasticsearchVersion :: Lens' ListElasticsearchInstanceTypes Text
leitElasticsearchVersion = lens _leitElasticsearchVersion (\s a -> s {_leitElasticsearchVersion = a})

instance AWSPager ListElasticsearchInstanceTypes where
  page rq rs
    | stop (rs ^. leitrrsNextToken) = Nothing
    | stop (rs ^. leitrrsElasticsearchInstanceTypes) =
      Nothing
    | otherwise =
      Just $ rq & leitNextToken .~ rs ^. leitrrsNextToken

instance AWSRequest ListElasticsearchInstanceTypes where
  type
    Rs ListElasticsearchInstanceTypes =
      ListElasticsearchInstanceTypesResponse
  request = get elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          ListElasticsearchInstanceTypesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ElasticsearchInstanceTypes" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListElasticsearchInstanceTypes

instance NFData ListElasticsearchInstanceTypes

instance ToHeaders ListElasticsearchInstanceTypes where
  toHeaders = const mempty

instance ToPath ListElasticsearchInstanceTypes where
  toPath ListElasticsearchInstanceTypes' {..} =
    mconcat
      [ "/2015-01-01/es/instanceTypes/",
        toBS _leitElasticsearchVersion
      ]

instance ToQuery ListElasticsearchInstanceTypes where
  toQuery ListElasticsearchInstanceTypes' {..} =
    mconcat
      [ "nextToken" =: _leitNextToken,
        "maxResults" =: _leitMaxResults,
        "domainName" =: _leitDomainName
      ]

-- | Container for the parameters returned by @'ListElasticsearchInstanceTypes' @ operation.
--
--
--
-- /See:/ 'listElasticsearchInstanceTypesResponse' smart constructor.
data ListElasticsearchInstanceTypesResponse = ListElasticsearchInstanceTypesResponse'
  { _leitrrsNextToken ::
      !( Maybe
           Text
       ),
    _leitrrsElasticsearchInstanceTypes ::
      !( Maybe
           [ESPartitionInstanceType]
       ),
    _leitrrsResponseStatus ::
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

-- | Creates a value of 'ListElasticsearchInstanceTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leitrrsNextToken' - In case if there are more results available NextToken would be present, make further request to the same API with received NextToken to paginate remaining results.
--
-- * 'leitrrsElasticsearchInstanceTypes' - List of instance types supported by Amazon Elasticsearch service for given @'ElasticsearchVersion' @
--
-- * 'leitrrsResponseStatus' - -- | The response status code.
listElasticsearchInstanceTypesResponse ::
  -- | 'leitrrsResponseStatus'
  Int ->
  ListElasticsearchInstanceTypesResponse
listElasticsearchInstanceTypesResponse
  pResponseStatus_ =
    ListElasticsearchInstanceTypesResponse'
      { _leitrrsNextToken =
          Nothing,
        _leitrrsElasticsearchInstanceTypes =
          Nothing,
        _leitrrsResponseStatus =
          pResponseStatus_
      }

-- | In case if there are more results available NextToken would be present, make further request to the same API with received NextToken to paginate remaining results.
leitrrsNextToken :: Lens' ListElasticsearchInstanceTypesResponse (Maybe Text)
leitrrsNextToken = lens _leitrrsNextToken (\s a -> s {_leitrrsNextToken = a})

-- | List of instance types supported by Amazon Elasticsearch service for given @'ElasticsearchVersion' @
leitrrsElasticsearchInstanceTypes :: Lens' ListElasticsearchInstanceTypesResponse [ESPartitionInstanceType]
leitrrsElasticsearchInstanceTypes = lens _leitrrsElasticsearchInstanceTypes (\s a -> s {_leitrrsElasticsearchInstanceTypes = a}) . _Default . _Coerce

-- | -- | The response status code.
leitrrsResponseStatus :: Lens' ListElasticsearchInstanceTypesResponse Int
leitrrsResponseStatus = lens _leitrrsResponseStatus (\s a -> s {_leitrrsResponseStatus = a})

instance
  NFData
    ListElasticsearchInstanceTypesResponse
