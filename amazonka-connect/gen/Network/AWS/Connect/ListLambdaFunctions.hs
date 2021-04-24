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
-- Module      : Network.AWS.Connect.ListLambdaFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Returns a paginated list of all Lambda functions that display in the dropdown options in the relevant contact flow blocks.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListLambdaFunctions
  ( -- * Creating a Request
    listLambdaFunctions,
    ListLambdaFunctions,

    -- * Request Lenses
    llfNextToken,
    llfMaxResults,
    llfInstanceId,

    -- * Destructuring the Response
    listLambdaFunctionsResponse,
    ListLambdaFunctionsResponse,

    -- * Response Lenses
    llfrrsNextToken,
    llfrrsLambdaFunctions,
    llfrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listLambdaFunctions' smart constructor.
data ListLambdaFunctions = ListLambdaFunctions'
  { _llfNextToken ::
      !(Maybe Text),
    _llfMaxResults :: !(Maybe Nat),
    _llfInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLambdaFunctions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llfNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'llfMaxResults' - The maximum number of results to return per page.
--
-- * 'llfInstanceId' - The identifier of the Amazon Connect instance.
listLambdaFunctions ::
  -- | 'llfInstanceId'
  Text ->
  ListLambdaFunctions
listLambdaFunctions pInstanceId_ =
  ListLambdaFunctions'
    { _llfNextToken = Nothing,
      _llfMaxResults = Nothing,
      _llfInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
llfNextToken :: Lens' ListLambdaFunctions (Maybe Text)
llfNextToken = lens _llfNextToken (\s a -> s {_llfNextToken = a})

-- | The maximum number of results to return per page.
llfMaxResults :: Lens' ListLambdaFunctions (Maybe Natural)
llfMaxResults = lens _llfMaxResults (\s a -> s {_llfMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
llfInstanceId :: Lens' ListLambdaFunctions Text
llfInstanceId = lens _llfInstanceId (\s a -> s {_llfInstanceId = a})

instance AWSPager ListLambdaFunctions where
  page rq rs
    | stop (rs ^. llfrrsNextToken) = Nothing
    | stop (rs ^. llfrrsLambdaFunctions) = Nothing
    | otherwise =
      Just $ rq & llfNextToken .~ rs ^. llfrrsNextToken

instance AWSRequest ListLambdaFunctions where
  type
    Rs ListLambdaFunctions =
      ListLambdaFunctionsResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListLambdaFunctionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "LambdaFunctions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListLambdaFunctions

instance NFData ListLambdaFunctions

instance ToHeaders ListLambdaFunctions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListLambdaFunctions where
  toPath ListLambdaFunctions' {..} =
    mconcat
      [ "/instance/",
        toBS _llfInstanceId,
        "/lambda-functions"
      ]

instance ToQuery ListLambdaFunctions where
  toQuery ListLambdaFunctions' {..} =
    mconcat
      [ "nextToken" =: _llfNextToken,
        "maxResults" =: _llfMaxResults
      ]

-- | /See:/ 'listLambdaFunctionsResponse' smart constructor.
data ListLambdaFunctionsResponse = ListLambdaFunctionsResponse'
  { _llfrrsNextToken ::
      !(Maybe Text),
    _llfrrsLambdaFunctions ::
      !(Maybe [Text]),
    _llfrrsResponseStatus ::
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

-- | Creates a value of 'ListLambdaFunctionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llfrrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'llfrrsLambdaFunctions' - The Lambdafunction ARNs associated with the specified instance.
--
-- * 'llfrrsResponseStatus' - -- | The response status code.
listLambdaFunctionsResponse ::
  -- | 'llfrrsResponseStatus'
  Int ->
  ListLambdaFunctionsResponse
listLambdaFunctionsResponse pResponseStatus_ =
  ListLambdaFunctionsResponse'
    { _llfrrsNextToken =
        Nothing,
      _llfrrsLambdaFunctions = Nothing,
      _llfrrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
llfrrsNextToken :: Lens' ListLambdaFunctionsResponse (Maybe Text)
llfrrsNextToken = lens _llfrrsNextToken (\s a -> s {_llfrrsNextToken = a})

-- | The Lambdafunction ARNs associated with the specified instance.
llfrrsLambdaFunctions :: Lens' ListLambdaFunctionsResponse [Text]
llfrrsLambdaFunctions = lens _llfrrsLambdaFunctions (\s a -> s {_llfrrsLambdaFunctions = a}) . _Default . _Coerce

-- | -- | The response status code.
llfrrsResponseStatus :: Lens' ListLambdaFunctionsResponse Int
llfrrsResponseStatus = lens _llfrrsResponseStatus (\s a -> s {_llfrrsResponseStatus = a})

instance NFData ListLambdaFunctionsResponse
