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
-- Module      : Network.AWS.ElasticSearch.DescribeElasticsearchDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.
module Network.AWS.ElasticSearch.DescribeElasticsearchDomain
  ( -- * Creating a Request
    describeElasticsearchDomain,
    DescribeElasticsearchDomain,

    -- * Request Lenses
    dedDomainName,

    -- * Destructuring the Response
    describeElasticsearchDomainResponse,
    DescribeElasticsearchDomainResponse,

    -- * Response Lenses
    dedrersResponseStatus,
    dedrersDomainStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DescribeElasticsearchDomain' @ operation.
--
--
--
-- /See:/ 'describeElasticsearchDomain' smart constructor.
newtype DescribeElasticsearchDomain = DescribeElasticsearchDomain'
  { _dedDomainName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeElasticsearchDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dedDomainName' - The name of the Elasticsearch domain for which you want information.
describeElasticsearchDomain ::
  -- | 'dedDomainName'
  Text ->
  DescribeElasticsearchDomain
describeElasticsearchDomain pDomainName_ =
  DescribeElasticsearchDomain'
    { _dedDomainName =
        pDomainName_
    }

-- | The name of the Elasticsearch domain for which you want information.
dedDomainName :: Lens' DescribeElasticsearchDomain Text
dedDomainName = lens _dedDomainName (\s a -> s {_dedDomainName = a})

instance AWSRequest DescribeElasticsearchDomain where
  type
    Rs DescribeElasticsearchDomain =
      DescribeElasticsearchDomainResponse
  request = get elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          DescribeElasticsearchDomainResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "DomainStatus")
      )

instance Hashable DescribeElasticsearchDomain

instance NFData DescribeElasticsearchDomain

instance ToHeaders DescribeElasticsearchDomain where
  toHeaders = const mempty

instance ToPath DescribeElasticsearchDomain where
  toPath DescribeElasticsearchDomain' {..} =
    mconcat
      ["/2015-01-01/es/domain/", toBS _dedDomainName]

instance ToQuery DescribeElasticsearchDomain where
  toQuery = const mempty

-- | The result of a @DescribeElasticsearchDomain@ request. Contains the status of the domain specified in the request.
--
--
--
-- /See:/ 'describeElasticsearchDomainResponse' smart constructor.
data DescribeElasticsearchDomainResponse = DescribeElasticsearchDomainResponse'
  { _dedrersResponseStatus ::
      !Int,
    _dedrersDomainStatus ::
      !ElasticsearchDomainStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeElasticsearchDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dedrersResponseStatus' - -- | The response status code.
--
-- * 'dedrersDomainStatus' - The current status of the Elasticsearch domain.
describeElasticsearchDomainResponse ::
  -- | 'dedrersResponseStatus'
  Int ->
  -- | 'dedrersDomainStatus'
  ElasticsearchDomainStatus ->
  DescribeElasticsearchDomainResponse
describeElasticsearchDomainResponse
  pResponseStatus_
  pDomainStatus_ =
    DescribeElasticsearchDomainResponse'
      { _dedrersResponseStatus =
          pResponseStatus_,
        _dedrersDomainStatus = pDomainStatus_
      }

-- | -- | The response status code.
dedrersResponseStatus :: Lens' DescribeElasticsearchDomainResponse Int
dedrersResponseStatus = lens _dedrersResponseStatus (\s a -> s {_dedrersResponseStatus = a})

-- | The current status of the Elasticsearch domain.
dedrersDomainStatus :: Lens' DescribeElasticsearchDomainResponse ElasticsearchDomainStatus
dedrersDomainStatus = lens _dedrersDomainStatus (\s a -> s {_dedrersDomainStatus = a})

instance NFData DescribeElasticsearchDomainResponse
