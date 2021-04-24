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
-- Module      : Network.AWS.Route53AutoNaming.ListServices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists summary information for all the services that are associated with one or more specified namespaces.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Route53AutoNaming.ListServices
  ( -- * Creating a Request
    listServices,
    ListServices,

    -- * Request Lenses
    lsNextToken,
    lsMaxResults,
    lsFilters,

    -- * Destructuring the Response
    listServicesResponse,
    ListServicesResponse,

    -- * Response Lenses
    lsrrsNextToken,
    lsrrsServices,
    lsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53AutoNaming.Types

-- | /See:/ 'listServices' smart constructor.
data ListServices = ListServices'
  { _lsNextToken ::
      !(Maybe Text),
    _lsMaxResults :: !(Maybe Nat),
    _lsFilters :: !(Maybe [ServiceFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListServices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsNextToken' - For the first @ListServices@ request, omit this value. If the response contains @NextToken@ , submit another @ListServices@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
--
-- * 'lsMaxResults' - The maximum number of services that you want AWS Cloud Map to return in the response to a @ListServices@ request. If you don't specify a value for @MaxResults@ , AWS Cloud Map returns up to 100 services.
--
-- * 'lsFilters' - A complex type that contains specifications for the namespaces that you want to list services for.  If you specify more than one filter, an operation must match all filters to be returned by @ListServices@ .
listServices ::
  ListServices
listServices =
  ListServices'
    { _lsNextToken = Nothing,
      _lsMaxResults = Nothing,
      _lsFilters = Nothing
    }

-- | For the first @ListServices@ request, omit this value. If the response contains @NextToken@ , submit another @ListServices@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
lsNextToken :: Lens' ListServices (Maybe Text)
lsNextToken = lens _lsNextToken (\s a -> s {_lsNextToken = a})

-- | The maximum number of services that you want AWS Cloud Map to return in the response to a @ListServices@ request. If you don't specify a value for @MaxResults@ , AWS Cloud Map returns up to 100 services.
lsMaxResults :: Lens' ListServices (Maybe Natural)
lsMaxResults = lens _lsMaxResults (\s a -> s {_lsMaxResults = a}) . mapping _Nat

-- | A complex type that contains specifications for the namespaces that you want to list services for.  If you specify more than one filter, an operation must match all filters to be returned by @ListServices@ .
lsFilters :: Lens' ListServices [ServiceFilter]
lsFilters = lens _lsFilters (\s a -> s {_lsFilters = a}) . _Default . _Coerce

instance AWSPager ListServices where
  page rq rs
    | stop (rs ^. lsrrsNextToken) = Nothing
    | stop (rs ^. lsrrsServices) = Nothing
    | otherwise =
      Just $ rq & lsNextToken .~ rs ^. lsrrsNextToken

instance AWSRequest ListServices where
  type Rs ListServices = ListServicesResponse
  request = postJSON route53AutoNaming
  response =
    receiveJSON
      ( \s h x ->
          ListServicesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Services" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListServices

instance NFData ListServices

instance ToHeaders ListServices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53AutoNaming_v20170314.ListServices" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListServices where
  toJSON ListServices' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lsNextToken,
            ("MaxResults" .=) <$> _lsMaxResults,
            ("Filters" .=) <$> _lsFilters
          ]
      )

instance ToPath ListServices where
  toPath = const "/"

instance ToQuery ListServices where
  toQuery = const mempty

-- | /See:/ 'listServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse'
  { _lsrrsNextToken ::
      !(Maybe Text),
    _lsrrsServices ::
      !(Maybe [ServiceSummary]),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsNextToken' - If the response contains @NextToken@ , submit another @ListServices@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
--
-- * 'lsrrsServices' - An array that contains one @ServiceSummary@ object for each service that matches the specified filter criteria.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listServicesResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListServicesResponse
listServicesResponse pResponseStatus_ =
  ListServicesResponse'
    { _lsrrsNextToken = Nothing,
      _lsrrsServices = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | If the response contains @NextToken@ , submit another @ListServices@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
lsrrsNextToken :: Lens' ListServicesResponse (Maybe Text)
lsrrsNextToken = lens _lsrrsNextToken (\s a -> s {_lsrrsNextToken = a})

-- | An array that contains one @ServiceSummary@ object for each service that matches the specified filter criteria.
lsrrsServices :: Lens' ListServicesResponse [ServiceSummary]
lsrrsServices = lens _lsrrsServices (\s a -> s {_lsrrsServices = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListServicesResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListServicesResponse
