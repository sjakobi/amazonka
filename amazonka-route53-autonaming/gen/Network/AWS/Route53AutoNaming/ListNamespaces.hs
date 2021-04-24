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
-- Module      : Network.AWS.Route53AutoNaming.ListNamespaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists summary information about the namespaces that were created by the current AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Route53AutoNaming.ListNamespaces
  ( -- * Creating a Request
    listNamespaces,
    ListNamespaces,

    -- * Request Lenses
    lnNextToken,
    lnMaxResults,
    lnFilters,

    -- * Destructuring the Response
    listNamespacesResponse,
    ListNamespacesResponse,

    -- * Response Lenses
    lnrrsNextToken,
    lnrrsNamespaces,
    lnrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53AutoNaming.Types

-- | /See:/ 'listNamespaces' smart constructor.
data ListNamespaces = ListNamespaces'
  { _lnNextToken ::
      !(Maybe Text),
    _lnMaxResults :: !(Maybe Nat),
    _lnFilters :: !(Maybe [NamespaceFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListNamespaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnNextToken' - For the first @ListNamespaces@ request, omit this value. If the response contains @NextToken@ , submit another @ListNamespaces@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
--
-- * 'lnMaxResults' - The maximum number of namespaces that you want AWS Cloud Map to return in the response to a @ListNamespaces@ request. If you don't specify a value for @MaxResults@ , AWS Cloud Map returns up to 100 namespaces.
--
-- * 'lnFilters' - A complex type that contains specifications for the namespaces that you want to list. If you specify more than one filter, a namespace must match all filters to be returned by @ListNamespaces@ .
listNamespaces ::
  ListNamespaces
listNamespaces =
  ListNamespaces'
    { _lnNextToken = Nothing,
      _lnMaxResults = Nothing,
      _lnFilters = Nothing
    }

-- | For the first @ListNamespaces@ request, omit this value. If the response contains @NextToken@ , submit another @ListNamespaces@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
lnNextToken :: Lens' ListNamespaces (Maybe Text)
lnNextToken = lens _lnNextToken (\s a -> s {_lnNextToken = a})

-- | The maximum number of namespaces that you want AWS Cloud Map to return in the response to a @ListNamespaces@ request. If you don't specify a value for @MaxResults@ , AWS Cloud Map returns up to 100 namespaces.
lnMaxResults :: Lens' ListNamespaces (Maybe Natural)
lnMaxResults = lens _lnMaxResults (\s a -> s {_lnMaxResults = a}) . mapping _Nat

-- | A complex type that contains specifications for the namespaces that you want to list. If you specify more than one filter, a namespace must match all filters to be returned by @ListNamespaces@ .
lnFilters :: Lens' ListNamespaces [NamespaceFilter]
lnFilters = lens _lnFilters (\s a -> s {_lnFilters = a}) . _Default . _Coerce

instance AWSPager ListNamespaces where
  page rq rs
    | stop (rs ^. lnrrsNextToken) = Nothing
    | stop (rs ^. lnrrsNamespaces) = Nothing
    | otherwise =
      Just $ rq & lnNextToken .~ rs ^. lnrrsNextToken

instance AWSRequest ListNamespaces where
  type Rs ListNamespaces = ListNamespacesResponse
  request = postJSON route53AutoNaming
  response =
    receiveJSON
      ( \s h x ->
          ListNamespacesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Namespaces" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListNamespaces

instance NFData ListNamespaces

instance ToHeaders ListNamespaces where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53AutoNaming_v20170314.ListNamespaces" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListNamespaces where
  toJSON ListNamespaces' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lnNextToken,
            ("MaxResults" .=) <$> _lnMaxResults,
            ("Filters" .=) <$> _lnFilters
          ]
      )

instance ToPath ListNamespaces where
  toPath = const "/"

instance ToQuery ListNamespaces where
  toQuery = const mempty

-- | /See:/ 'listNamespacesResponse' smart constructor.
data ListNamespacesResponse = ListNamespacesResponse'
  { _lnrrsNextToken ::
      !(Maybe Text),
    _lnrrsNamespaces ::
      !( Maybe
           [NamespaceSummary]
       ),
    _lnrrsResponseStatus ::
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

-- | Creates a value of 'ListNamespacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnrrsNextToken' - If the response contains @NextToken@ , submit another @ListNamespaces@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
--
-- * 'lnrrsNamespaces' - An array that contains one @NamespaceSummary@ object for each namespace that matches the specified filter criteria.
--
-- * 'lnrrsResponseStatus' - -- | The response status code.
listNamespacesResponse ::
  -- | 'lnrrsResponseStatus'
  Int ->
  ListNamespacesResponse
listNamespacesResponse pResponseStatus_ =
  ListNamespacesResponse'
    { _lnrrsNextToken = Nothing,
      _lnrrsNamespaces = Nothing,
      _lnrrsResponseStatus = pResponseStatus_
    }

-- | If the response contains @NextToken@ , submit another @ListNamespaces@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
lnrrsNextToken :: Lens' ListNamespacesResponse (Maybe Text)
lnrrsNextToken = lens _lnrrsNextToken (\s a -> s {_lnrrsNextToken = a})

-- | An array that contains one @NamespaceSummary@ object for each namespace that matches the specified filter criteria.
lnrrsNamespaces :: Lens' ListNamespacesResponse [NamespaceSummary]
lnrrsNamespaces = lens _lnrrsNamespaces (\s a -> s {_lnrrsNamespaces = a}) . _Default . _Coerce

-- | -- | The response status code.
lnrrsResponseStatus :: Lens' ListNamespacesResponse Int
lnrrsResponseStatus = lens _lnrrsResponseStatus (\s a -> s {_lnrrsResponseStatus = a})

instance NFData ListNamespacesResponse
