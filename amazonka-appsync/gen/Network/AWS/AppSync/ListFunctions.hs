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
-- Module      : Network.AWS.AppSync.ListFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List multiple functions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppSync.ListFunctions
  ( -- * Creating a Request
    listFunctions,
    ListFunctions,

    -- * Request Lenses
    lfNextToken,
    lfMaxResults,
    lfApiId,

    -- * Destructuring the Response
    listFunctionsResponse,
    ListFunctionsResponse,

    -- * Response Lenses
    lfrrsNextToken,
    lfrrsFunctions,
    lfrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listFunctions' smart constructor.
data ListFunctions = ListFunctions'
  { _lfNextToken ::
      !(Maybe Text),
    _lfMaxResults :: !(Maybe Nat),
    _lfApiId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFunctions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lfMaxResults' - The maximum number of results you want the request to return.
--
-- * 'lfApiId' - The GraphQL API ID.
listFunctions ::
  -- | 'lfApiId'
  Text ->
  ListFunctions
listFunctions pApiId_ =
  ListFunctions'
    { _lfNextToken = Nothing,
      _lfMaxResults = Nothing,
      _lfApiId = pApiId_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lfNextToken :: Lens' ListFunctions (Maybe Text)
lfNextToken = lens _lfNextToken (\s a -> s {_lfNextToken = a})

-- | The maximum number of results you want the request to return.
lfMaxResults :: Lens' ListFunctions (Maybe Natural)
lfMaxResults = lens _lfMaxResults (\s a -> s {_lfMaxResults = a}) . mapping _Nat

-- | The GraphQL API ID.
lfApiId :: Lens' ListFunctions Text
lfApiId = lens _lfApiId (\s a -> s {_lfApiId = a})

instance AWSPager ListFunctions where
  page rq rs
    | stop (rs ^. lfrrsNextToken) = Nothing
    | stop (rs ^. lfrrsFunctions) = Nothing
    | otherwise =
      Just $ rq & lfNextToken .~ rs ^. lfrrsNextToken

instance AWSRequest ListFunctions where
  type Rs ListFunctions = ListFunctionsResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          ListFunctionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "functions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListFunctions

instance NFData ListFunctions

instance ToHeaders ListFunctions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListFunctions where
  toPath ListFunctions' {..} =
    mconcat ["/v1/apis/", toBS _lfApiId, "/functions"]

instance ToQuery ListFunctions where
  toQuery ListFunctions' {..} =
    mconcat
      [ "nextToken" =: _lfNextToken,
        "maxResults" =: _lfMaxResults
      ]

-- | /See:/ 'listFunctionsResponse' smart constructor.
data ListFunctionsResponse = ListFunctionsResponse'
  { _lfrrsNextToken ::
      !(Maybe Text),
    _lfrrsFunctions ::
      !( Maybe
           [FunctionConfiguration]
       ),
    _lfrrsResponseStatus ::
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

-- | Creates a value of 'ListFunctionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrrsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lfrrsFunctions' - A list of @Function@ objects.
--
-- * 'lfrrsResponseStatus' - -- | The response status code.
listFunctionsResponse ::
  -- | 'lfrrsResponseStatus'
  Int ->
  ListFunctionsResponse
listFunctionsResponse pResponseStatus_ =
  ListFunctionsResponse'
    { _lfrrsNextToken = Nothing,
      _lfrrsFunctions = Nothing,
      _lfrrsResponseStatus = pResponseStatus_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lfrrsNextToken :: Lens' ListFunctionsResponse (Maybe Text)
lfrrsNextToken = lens _lfrrsNextToken (\s a -> s {_lfrrsNextToken = a})

-- | A list of @Function@ objects.
lfrrsFunctions :: Lens' ListFunctionsResponse [FunctionConfiguration]
lfrrsFunctions = lens _lfrrsFunctions (\s a -> s {_lfrrsFunctions = a}) . _Default . _Coerce

-- | -- | The response status code.
lfrrsResponseStatus :: Lens' ListFunctionsResponse Int
lfrrsResponseStatus = lens _lfrrsResponseStatus (\s a -> s {_lfrrsResponseStatus = a})

instance NFData ListFunctionsResponse
