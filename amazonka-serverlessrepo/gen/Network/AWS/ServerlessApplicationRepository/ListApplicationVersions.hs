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
-- Module      : Network.AWS.ServerlessApplicationRepository.ListApplicationVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists versions for the specified application.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServerlessApplicationRepository.ListApplicationVersions
  ( -- * Creating a Request
    listApplicationVersions,
    ListApplicationVersions,

    -- * Request Lenses
    lavNextToken,
    lavMaxItems,
    lavApplicationId,

    -- * Destructuring the Response
    listApplicationVersionsResponse,
    ListApplicationVersionsResponse,

    -- * Response Lenses
    lavrrsNextToken,
    lavrrsVersions,
    lavrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'listApplicationVersions' smart constructor.
data ListApplicationVersions = ListApplicationVersions'
  { _lavNextToken ::
      !(Maybe Text),
    _lavMaxItems ::
      !(Maybe Nat),
    _lavApplicationId ::
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

-- | Creates a value of 'ListApplicationVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lavNextToken' - A token to specify where to start paginating.
--
-- * 'lavMaxItems' - The total number of items to return.
--
-- * 'lavApplicationId' - The Amazon Resource Name (ARN) of the application.
listApplicationVersions ::
  -- | 'lavApplicationId'
  Text ->
  ListApplicationVersions
listApplicationVersions pApplicationId_ =
  ListApplicationVersions'
    { _lavNextToken = Nothing,
      _lavMaxItems = Nothing,
      _lavApplicationId = pApplicationId_
    }

-- | A token to specify where to start paginating.
lavNextToken :: Lens' ListApplicationVersions (Maybe Text)
lavNextToken = lens _lavNextToken (\s a -> s {_lavNextToken = a})

-- | The total number of items to return.
lavMaxItems :: Lens' ListApplicationVersions (Maybe Natural)
lavMaxItems = lens _lavMaxItems (\s a -> s {_lavMaxItems = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the application.
lavApplicationId :: Lens' ListApplicationVersions Text
lavApplicationId = lens _lavApplicationId (\s a -> s {_lavApplicationId = a})

instance AWSPager ListApplicationVersions where
  page rq rs
    | stop (rs ^. lavrrsNextToken) = Nothing
    | stop (rs ^. lavrrsVersions) = Nothing
    | otherwise =
      Just $ rq & lavNextToken .~ rs ^. lavrrsNextToken

instance AWSRequest ListApplicationVersions where
  type
    Rs ListApplicationVersions =
      ListApplicationVersionsResponse
  request = get serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          ListApplicationVersionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "versions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListApplicationVersions

instance NFData ListApplicationVersions

instance ToHeaders ListApplicationVersions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListApplicationVersions where
  toPath ListApplicationVersions' {..} =
    mconcat
      [ "/applications/",
        toBS _lavApplicationId,
        "/versions"
      ]

instance ToQuery ListApplicationVersions where
  toQuery ListApplicationVersions' {..} =
    mconcat
      [ "nextToken" =: _lavNextToken,
        "maxItems" =: _lavMaxItems
      ]

-- | /See:/ 'listApplicationVersionsResponse' smart constructor.
data ListApplicationVersionsResponse = ListApplicationVersionsResponse'
  { _lavrrsNextToken ::
      !( Maybe
           Text
       ),
    _lavrrsVersions ::
      !( Maybe
           [VersionSummary]
       ),
    _lavrrsResponseStatus ::
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

-- | Creates a value of 'ListApplicationVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lavrrsNextToken' - The token to request the next page of results.
--
-- * 'lavrrsVersions' - An array of version summaries for the application.
--
-- * 'lavrrsResponseStatus' - -- | The response status code.
listApplicationVersionsResponse ::
  -- | 'lavrrsResponseStatus'
  Int ->
  ListApplicationVersionsResponse
listApplicationVersionsResponse pResponseStatus_ =
  ListApplicationVersionsResponse'
    { _lavrrsNextToken =
        Nothing,
      _lavrrsVersions = Nothing,
      _lavrrsResponseStatus = pResponseStatus_
    }

-- | The token to request the next page of results.
lavrrsNextToken :: Lens' ListApplicationVersionsResponse (Maybe Text)
lavrrsNextToken = lens _lavrrsNextToken (\s a -> s {_lavrrsNextToken = a})

-- | An array of version summaries for the application.
lavrrsVersions :: Lens' ListApplicationVersionsResponse [VersionSummary]
lavrrsVersions = lens _lavrrsVersions (\s a -> s {_lavrrsVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
lavrrsResponseStatus :: Lens' ListApplicationVersionsResponse Int
lavrrsResponseStatus = lens _lavrrsResponseStatus (\s a -> s {_lavrrsResponseStatus = a})

instance NFData ListApplicationVersionsResponse
