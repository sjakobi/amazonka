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
-- Module      : Network.AWS.CodeDeploy.ListGitHubAccountTokenNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the names of stored connections to GitHub accounts.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListGitHubAccountTokenNames
  ( -- * Creating a Request
    listGitHubAccountTokenNames,
    ListGitHubAccountTokenNames,

    -- * Request Lenses
    lghatnNextToken,

    -- * Destructuring the Response
    listGitHubAccountTokenNamesResponse,
    ListGitHubAccountTokenNamesResponse,

    -- * Response Lenses
    lghatnrrsNextToken,
    lghatnrrsTokenNameList,
    lghatnrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ListGitHubAccountTokenNames@ operation.
--
--
--
-- /See:/ 'listGitHubAccountTokenNames' smart constructor.
newtype ListGitHubAccountTokenNames = ListGitHubAccountTokenNames'
  { _lghatnNextToken ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListGitHubAccountTokenNames' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lghatnNextToken' - An identifier returned from the previous @ListGitHubAccountTokenNames@ call. It can be used to return the next set of names in the list.
listGitHubAccountTokenNames ::
  ListGitHubAccountTokenNames
listGitHubAccountTokenNames =
  ListGitHubAccountTokenNames'
    { _lghatnNextToken =
        Nothing
    }

-- | An identifier returned from the previous @ListGitHubAccountTokenNames@ call. It can be used to return the next set of names in the list.
lghatnNextToken :: Lens' ListGitHubAccountTokenNames (Maybe Text)
lghatnNextToken = lens _lghatnNextToken (\s a -> s {_lghatnNextToken = a})

instance AWSPager ListGitHubAccountTokenNames where
  page rq rs
    | stop (rs ^. lghatnrrsNextToken) = Nothing
    | stop (rs ^. lghatnrrsTokenNameList) = Nothing
    | otherwise =
      Just $
        rq
          & lghatnNextToken .~ rs ^. lghatnrrsNextToken

instance AWSRequest ListGitHubAccountTokenNames where
  type
    Rs ListGitHubAccountTokenNames =
      ListGitHubAccountTokenNamesResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          ListGitHubAccountTokenNamesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "tokenNameList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListGitHubAccountTokenNames

instance NFData ListGitHubAccountTokenNames

instance ToHeaders ListGitHubAccountTokenNames where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.ListGitHubAccountTokenNames" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListGitHubAccountTokenNames where
  toJSON ListGitHubAccountTokenNames' {..} =
    object
      (catMaybes [("nextToken" .=) <$> _lghatnNextToken])

instance ToPath ListGitHubAccountTokenNames where
  toPath = const "/"

instance ToQuery ListGitHubAccountTokenNames where
  toQuery = const mempty

-- | Represents the output of a @ListGitHubAccountTokenNames@ operation.
--
--
--
-- /See:/ 'listGitHubAccountTokenNamesResponse' smart constructor.
data ListGitHubAccountTokenNamesResponse = ListGitHubAccountTokenNamesResponse'
  { _lghatnrrsNextToken ::
      !( Maybe
           Text
       ),
    _lghatnrrsTokenNameList ::
      !( Maybe
           [Text]
       ),
    _lghatnrrsResponseStatus ::
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

-- | Creates a value of 'ListGitHubAccountTokenNamesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lghatnrrsNextToken' - If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent @ListGitHubAccountTokenNames@ call to return the next set of names in the list.
--
-- * 'lghatnrrsTokenNameList' - A list of names of connections to GitHub accounts.
--
-- * 'lghatnrrsResponseStatus' - -- | The response status code.
listGitHubAccountTokenNamesResponse ::
  -- | 'lghatnrrsResponseStatus'
  Int ->
  ListGitHubAccountTokenNamesResponse
listGitHubAccountTokenNamesResponse pResponseStatus_ =
  ListGitHubAccountTokenNamesResponse'
    { _lghatnrrsNextToken =
        Nothing,
      _lghatnrrsTokenNameList = Nothing,
      _lghatnrrsResponseStatus =
        pResponseStatus_
    }

-- | If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent @ListGitHubAccountTokenNames@ call to return the next set of names in the list.
lghatnrrsNextToken :: Lens' ListGitHubAccountTokenNamesResponse (Maybe Text)
lghatnrrsNextToken = lens _lghatnrrsNextToken (\s a -> s {_lghatnrrsNextToken = a})

-- | A list of names of connections to GitHub accounts.
lghatnrrsTokenNameList :: Lens' ListGitHubAccountTokenNamesResponse [Text]
lghatnrrsTokenNameList = lens _lghatnrrsTokenNameList (\s a -> s {_lghatnrrsTokenNameList = a}) . _Default . _Coerce

-- | -- | The response status code.
lghatnrrsResponseStatus :: Lens' ListGitHubAccountTokenNamesResponse Int
lghatnrrsResponseStatus = lens _lghatnrrsResponseStatus (\s a -> s {_lghatnrrsResponseStatus = a})

instance NFData ListGitHubAccountTokenNamesResponse
