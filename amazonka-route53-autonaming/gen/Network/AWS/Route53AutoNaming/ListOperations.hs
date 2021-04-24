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
-- Module      : Network.AWS.Route53AutoNaming.ListOperations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the criteria that you specify.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Route53AutoNaming.ListOperations
  ( -- * Creating a Request
    listOperations,
    ListOperations,

    -- * Request Lenses
    loNextToken,
    loMaxResults,
    loFilters,

    -- * Destructuring the Response
    listOperationsResponse,
    ListOperationsResponse,

    -- * Response Lenses
    lorrsNextToken,
    lorrsOperations,
    lorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53AutoNaming.Types

-- | /See:/ 'listOperations' smart constructor.
data ListOperations = ListOperations'
  { _loNextToken ::
      !(Maybe Text),
    _loMaxResults :: !(Maybe Nat),
    _loFilters :: !(Maybe [OperationFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOperations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loNextToken' - For the first @ListOperations@ request, omit this value. If the response contains @NextToken@ , submit another @ListOperations@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
--
-- * 'loMaxResults' - The maximum number of items that you want AWS Cloud Map to return in the response to a @ListOperations@ request. If you don't specify a value for @MaxResults@ , AWS Cloud Map returns up to 100 operations.
--
-- * 'loFilters' - A complex type that contains specifications for the operations that you want to list, for example, operations that you started between a specified start date and end date. If you specify more than one filter, an operation must match all filters to be returned by @ListOperations@ .
listOperations ::
  ListOperations
listOperations =
  ListOperations'
    { _loNextToken = Nothing,
      _loMaxResults = Nothing,
      _loFilters = Nothing
    }

-- | For the first @ListOperations@ request, omit this value. If the response contains @NextToken@ , submit another @ListOperations@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
loNextToken :: Lens' ListOperations (Maybe Text)
loNextToken = lens _loNextToken (\s a -> s {_loNextToken = a})

-- | The maximum number of items that you want AWS Cloud Map to return in the response to a @ListOperations@ request. If you don't specify a value for @MaxResults@ , AWS Cloud Map returns up to 100 operations.
loMaxResults :: Lens' ListOperations (Maybe Natural)
loMaxResults = lens _loMaxResults (\s a -> s {_loMaxResults = a}) . mapping _Nat

-- | A complex type that contains specifications for the operations that you want to list, for example, operations that you started between a specified start date and end date. If you specify more than one filter, an operation must match all filters to be returned by @ListOperations@ .
loFilters :: Lens' ListOperations [OperationFilter]
loFilters = lens _loFilters (\s a -> s {_loFilters = a}) . _Default . _Coerce

instance AWSPager ListOperations where
  page rq rs
    | stop (rs ^. lorrsNextToken) = Nothing
    | stop (rs ^. lorrsOperations) = Nothing
    | otherwise =
      Just $ rq & loNextToken .~ rs ^. lorrsNextToken

instance AWSRequest ListOperations where
  type Rs ListOperations = ListOperationsResponse
  request = postJSON route53AutoNaming
  response =
    receiveJSON
      ( \s h x ->
          ListOperationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOperations

instance NFData ListOperations

instance ToHeaders ListOperations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53AutoNaming_v20170314.ListOperations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOperations where
  toJSON ListOperations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _loNextToken,
            ("MaxResults" .=) <$> _loMaxResults,
            ("Filters" .=) <$> _loFilters
          ]
      )

instance ToPath ListOperations where
  toPath = const "/"

instance ToQuery ListOperations where
  toQuery = const mempty

-- | /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse'
  { _lorrsNextToken ::
      !(Maybe Text),
    _lorrsOperations ::
      !( Maybe
           [OperationSummary]
       ),
    _lorrsResponseStatus ::
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

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorrsNextToken' - If the response contains @NextToken@ , submit another @ListOperations@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
--
-- * 'lorrsOperations' - Summary information about the operations that match the specified criteria.
--
-- * 'lorrsResponseStatus' - -- | The response status code.
listOperationsResponse ::
  -- | 'lorrsResponseStatus'
  Int ->
  ListOperationsResponse
listOperationsResponse pResponseStatus_ =
  ListOperationsResponse'
    { _lorrsNextToken = Nothing,
      _lorrsOperations = Nothing,
      _lorrsResponseStatus = pResponseStatus_
    }

-- | If the response contains @NextToken@ , submit another @ListOperations@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
lorrsNextToken :: Lens' ListOperationsResponse (Maybe Text)
lorrsNextToken = lens _lorrsNextToken (\s a -> s {_lorrsNextToken = a})

-- | Summary information about the operations that match the specified criteria.
lorrsOperations :: Lens' ListOperationsResponse [OperationSummary]
lorrsOperations = lens _lorrsOperations (\s a -> s {_lorrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
lorrsResponseStatus :: Lens' ListOperationsResponse Int
lorrsResponseStatus = lens _lorrsResponseStatus (\s a -> s {_lorrsResponseStatus = a})

instance NFData ListOperationsResponse
