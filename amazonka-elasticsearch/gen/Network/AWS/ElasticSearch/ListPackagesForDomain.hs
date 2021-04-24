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
-- Module      : Network.AWS.ElasticSearch.ListPackagesForDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all packages associated with the Amazon ES domain.
module Network.AWS.ElasticSearch.ListPackagesForDomain
  ( -- * Creating a Request
    listPackagesForDomain,
    ListPackagesForDomain,

    -- * Request Lenses
    lpfdNextToken,
    lpfdMaxResults,
    lpfdDomainName,

    -- * Destructuring the Response
    listPackagesForDomainResponse,
    ListPackagesForDomainResponse,

    -- * Response Lenses
    lpfdrrsNextToken,
    lpfdrrsDomainPackageDetailsList,
    lpfdrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for request parameters to @'ListPackagesForDomain' @ operation.
--
--
--
-- /See:/ 'listPackagesForDomain' smart constructor.
data ListPackagesForDomain = ListPackagesForDomain'
  { _lpfdNextToken ::
      !(Maybe Text),
    _lpfdMaxResults ::
      !(Maybe Int),
    _lpfdDomainName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPackagesForDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpfdNextToken' - Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.
--
-- * 'lpfdMaxResults' - Limits results to a maximum number of packages.
--
-- * 'lpfdDomainName' - The name of the domain for which you want to list associated packages.
listPackagesForDomain ::
  -- | 'lpfdDomainName'
  Text ->
  ListPackagesForDomain
listPackagesForDomain pDomainName_ =
  ListPackagesForDomain'
    { _lpfdNextToken = Nothing,
      _lpfdMaxResults = Nothing,
      _lpfdDomainName = pDomainName_
    }

-- | Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.
lpfdNextToken :: Lens' ListPackagesForDomain (Maybe Text)
lpfdNextToken = lens _lpfdNextToken (\s a -> s {_lpfdNextToken = a})

-- | Limits results to a maximum number of packages.
lpfdMaxResults :: Lens' ListPackagesForDomain (Maybe Int)
lpfdMaxResults = lens _lpfdMaxResults (\s a -> s {_lpfdMaxResults = a})

-- | The name of the domain for which you want to list associated packages.
lpfdDomainName :: Lens' ListPackagesForDomain Text
lpfdDomainName = lens _lpfdDomainName (\s a -> s {_lpfdDomainName = a})

instance AWSRequest ListPackagesForDomain where
  type
    Rs ListPackagesForDomain =
      ListPackagesForDomainResponse
  request = get elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          ListPackagesForDomainResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "DomainPackageDetailsList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPackagesForDomain

instance NFData ListPackagesForDomain

instance ToHeaders ListPackagesForDomain where
  toHeaders = const mempty

instance ToPath ListPackagesForDomain where
  toPath ListPackagesForDomain' {..} =
    mconcat
      [ "/2015-01-01/domain/",
        toBS _lpfdDomainName,
        "/packages"
      ]

instance ToQuery ListPackagesForDomain where
  toQuery ListPackagesForDomain' {..} =
    mconcat
      [ "nextToken" =: _lpfdNextToken,
        "maxResults" =: _lpfdMaxResults
      ]

-- | Container for response parameters to @'ListPackagesForDomain' @ operation.
--
--
--
-- /See:/ 'listPackagesForDomainResponse' smart constructor.
data ListPackagesForDomainResponse = ListPackagesForDomainResponse'
  { _lpfdrrsNextToken ::
      !( Maybe
           Text
       ),
    _lpfdrrsDomainPackageDetailsList ::
      !( Maybe
           [DomainPackageDetails]
       ),
    _lpfdrrsResponseStatus ::
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

-- | Creates a value of 'ListPackagesForDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpfdrrsNextToken' - Pagination token that needs to be supplied to the next call to get the next page of results.
--
-- * 'lpfdrrsDomainPackageDetailsList' - List of @DomainPackageDetails@ objects.
--
-- * 'lpfdrrsResponseStatus' - -- | The response status code.
listPackagesForDomainResponse ::
  -- | 'lpfdrrsResponseStatus'
  Int ->
  ListPackagesForDomainResponse
listPackagesForDomainResponse pResponseStatus_ =
  ListPackagesForDomainResponse'
    { _lpfdrrsNextToken =
        Nothing,
      _lpfdrrsDomainPackageDetailsList = Nothing,
      _lpfdrrsResponseStatus = pResponseStatus_
    }

-- | Pagination token that needs to be supplied to the next call to get the next page of results.
lpfdrrsNextToken :: Lens' ListPackagesForDomainResponse (Maybe Text)
lpfdrrsNextToken = lens _lpfdrrsNextToken (\s a -> s {_lpfdrrsNextToken = a})

-- | List of @DomainPackageDetails@ objects.
lpfdrrsDomainPackageDetailsList :: Lens' ListPackagesForDomainResponse [DomainPackageDetails]
lpfdrrsDomainPackageDetailsList = lens _lpfdrrsDomainPackageDetailsList (\s a -> s {_lpfdrrsDomainPackageDetailsList = a}) . _Default . _Coerce

-- | -- | The response status code.
lpfdrrsResponseStatus :: Lens' ListPackagesForDomainResponse Int
lpfdrrsResponseStatus = lens _lpfdrrsResponseStatus (\s a -> s {_lpfdrrsResponseStatus = a})

instance NFData ListPackagesForDomainResponse
