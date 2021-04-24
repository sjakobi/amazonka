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
-- Module      : Network.AWS.ElasticSearch.ListDomainsForPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Amazon ES domains associated with the package.
module Network.AWS.ElasticSearch.ListDomainsForPackage
  ( -- * Creating a Request
    listDomainsForPackage,
    ListDomainsForPackage,

    -- * Request Lenses
    ldfpNextToken,
    ldfpMaxResults,
    ldfpPackageId,

    -- * Destructuring the Response
    listDomainsForPackageResponse,
    ListDomainsForPackageResponse,

    -- * Response Lenses
    ldfprrsNextToken,
    ldfprrsDomainPackageDetailsList,
    ldfprrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for request parameters to @'ListDomainsForPackage' @ operation.
--
--
--
-- /See:/ 'listDomainsForPackage' smart constructor.
data ListDomainsForPackage = ListDomainsForPackage'
  { _ldfpNextToken ::
      !(Maybe Text),
    _ldfpMaxResults ::
      !(Maybe Int),
    _ldfpPackageId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListDomainsForPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldfpNextToken' - Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.
--
-- * 'ldfpMaxResults' - Limits results to a maximum number of domains.
--
-- * 'ldfpPackageId' - The package for which to list domains.
listDomainsForPackage ::
  -- | 'ldfpPackageId'
  Text ->
  ListDomainsForPackage
listDomainsForPackage pPackageId_ =
  ListDomainsForPackage'
    { _ldfpNextToken = Nothing,
      _ldfpMaxResults = Nothing,
      _ldfpPackageId = pPackageId_
    }

-- | Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.
ldfpNextToken :: Lens' ListDomainsForPackage (Maybe Text)
ldfpNextToken = lens _ldfpNextToken (\s a -> s {_ldfpNextToken = a})

-- | Limits results to a maximum number of domains.
ldfpMaxResults :: Lens' ListDomainsForPackage (Maybe Int)
ldfpMaxResults = lens _ldfpMaxResults (\s a -> s {_ldfpMaxResults = a})

-- | The package for which to list domains.
ldfpPackageId :: Lens' ListDomainsForPackage Text
ldfpPackageId = lens _ldfpPackageId (\s a -> s {_ldfpPackageId = a})

instance AWSRequest ListDomainsForPackage where
  type
    Rs ListDomainsForPackage =
      ListDomainsForPackageResponse
  request = get elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          ListDomainsForPackageResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "DomainPackageDetailsList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDomainsForPackage

instance NFData ListDomainsForPackage

instance ToHeaders ListDomainsForPackage where
  toHeaders = const mempty

instance ToPath ListDomainsForPackage where
  toPath ListDomainsForPackage' {..} =
    mconcat
      [ "/2015-01-01/packages/",
        toBS _ldfpPackageId,
        "/domains"
      ]

instance ToQuery ListDomainsForPackage where
  toQuery ListDomainsForPackage' {..} =
    mconcat
      [ "nextToken" =: _ldfpNextToken,
        "maxResults" =: _ldfpMaxResults
      ]

-- | Container for response parameters to @'ListDomainsForPackage' @ operation.
--
--
--
-- /See:/ 'listDomainsForPackageResponse' smart constructor.
data ListDomainsForPackageResponse = ListDomainsForPackageResponse'
  { _ldfprrsNextToken ::
      !( Maybe
           Text
       ),
    _ldfprrsDomainPackageDetailsList ::
      !( Maybe
           [DomainPackageDetails]
       ),
    _ldfprrsResponseStatus ::
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

-- | Creates a value of 'ListDomainsForPackageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldfprrsNextToken' - Undocumented member.
--
-- * 'ldfprrsDomainPackageDetailsList' - List of @DomainPackageDetails@ objects.
--
-- * 'ldfprrsResponseStatus' - -- | The response status code.
listDomainsForPackageResponse ::
  -- | 'ldfprrsResponseStatus'
  Int ->
  ListDomainsForPackageResponse
listDomainsForPackageResponse pResponseStatus_ =
  ListDomainsForPackageResponse'
    { _ldfprrsNextToken =
        Nothing,
      _ldfprrsDomainPackageDetailsList = Nothing,
      _ldfprrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ldfprrsNextToken :: Lens' ListDomainsForPackageResponse (Maybe Text)
ldfprrsNextToken = lens _ldfprrsNextToken (\s a -> s {_ldfprrsNextToken = a})

-- | List of @DomainPackageDetails@ objects.
ldfprrsDomainPackageDetailsList :: Lens' ListDomainsForPackageResponse [DomainPackageDetails]
ldfprrsDomainPackageDetailsList = lens _ldfprrsDomainPackageDetailsList (\s a -> s {_ldfprrsDomainPackageDetailsList = a}) . _Default . _Coerce

-- | -- | The response status code.
ldfprrsResponseStatus :: Lens' ListDomainsForPackageResponse Int
ldfprrsResponseStatus = lens _ldfprrsResponseStatus (\s a -> s {_ldfprrsResponseStatus = a})

instance NFData ListDomainsForPackageResponse
