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
-- Module      : Network.AWS.ServerlessApplicationRepository.ListApplicationDependencies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of applications nested in the containing application.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServerlessApplicationRepository.ListApplicationDependencies
  ( -- * Creating a Request
    listApplicationDependencies,
    ListApplicationDependencies,

    -- * Request Lenses
    ladNextToken,
    ladSemanticVersion,
    ladMaxItems,
    ladApplicationId,

    -- * Destructuring the Response
    listApplicationDependenciesResponse,
    ListApplicationDependenciesResponse,

    -- * Response Lenses
    ladrrsNextToken,
    ladrrsDependencies,
    ladrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'listApplicationDependencies' smart constructor.
data ListApplicationDependencies = ListApplicationDependencies'
  { _ladNextToken ::
      !(Maybe Text),
    _ladSemanticVersion ::
      !(Maybe Text),
    _ladMaxItems ::
      !(Maybe Nat),
    _ladApplicationId ::
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

-- | Creates a value of 'ListApplicationDependencies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladNextToken' - A token to specify where to start paginating.
--
-- * 'ladSemanticVersion' - The semantic version of the application to get.
--
-- * 'ladMaxItems' - The total number of items to return.
--
-- * 'ladApplicationId' - The Amazon Resource Name (ARN) of the application.
listApplicationDependencies ::
  -- | 'ladApplicationId'
  Text ->
  ListApplicationDependencies
listApplicationDependencies pApplicationId_ =
  ListApplicationDependencies'
    { _ladNextToken =
        Nothing,
      _ladSemanticVersion = Nothing,
      _ladMaxItems = Nothing,
      _ladApplicationId = pApplicationId_
    }

-- | A token to specify where to start paginating.
ladNextToken :: Lens' ListApplicationDependencies (Maybe Text)
ladNextToken = lens _ladNextToken (\s a -> s {_ladNextToken = a})

-- | The semantic version of the application to get.
ladSemanticVersion :: Lens' ListApplicationDependencies (Maybe Text)
ladSemanticVersion = lens _ladSemanticVersion (\s a -> s {_ladSemanticVersion = a})

-- | The total number of items to return.
ladMaxItems :: Lens' ListApplicationDependencies (Maybe Natural)
ladMaxItems = lens _ladMaxItems (\s a -> s {_ladMaxItems = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the application.
ladApplicationId :: Lens' ListApplicationDependencies Text
ladApplicationId = lens _ladApplicationId (\s a -> s {_ladApplicationId = a})

instance AWSPager ListApplicationDependencies where
  page rq rs
    | stop (rs ^. ladrrsNextToken) = Nothing
    | stop (rs ^. ladrrsDependencies) = Nothing
    | otherwise =
      Just $ rq & ladNextToken .~ rs ^. ladrrsNextToken

instance AWSRequest ListApplicationDependencies where
  type
    Rs ListApplicationDependencies =
      ListApplicationDependenciesResponse
  request = get serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          ListApplicationDependenciesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "dependencies" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListApplicationDependencies

instance NFData ListApplicationDependencies

instance ToHeaders ListApplicationDependencies where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListApplicationDependencies where
  toPath ListApplicationDependencies' {..} =
    mconcat
      [ "/applications/",
        toBS _ladApplicationId,
        "/dependencies"
      ]

instance ToQuery ListApplicationDependencies where
  toQuery ListApplicationDependencies' {..} =
    mconcat
      [ "nextToken" =: _ladNextToken,
        "semanticVersion" =: _ladSemanticVersion,
        "maxItems" =: _ladMaxItems
      ]

-- | /See:/ 'listApplicationDependenciesResponse' smart constructor.
data ListApplicationDependenciesResponse = ListApplicationDependenciesResponse'
  { _ladrrsNextToken ::
      !( Maybe
           Text
       ),
    _ladrrsDependencies ::
      !( Maybe
           [ApplicationDependencySummary]
       ),
    _ladrrsResponseStatus ::
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

-- | Creates a value of 'ListApplicationDependenciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladrrsNextToken' - The token to request the next page of results.
--
-- * 'ladrrsDependencies' - An array of application summaries nested in the application.
--
-- * 'ladrrsResponseStatus' - -- | The response status code.
listApplicationDependenciesResponse ::
  -- | 'ladrrsResponseStatus'
  Int ->
  ListApplicationDependenciesResponse
listApplicationDependenciesResponse pResponseStatus_ =
  ListApplicationDependenciesResponse'
    { _ladrrsNextToken =
        Nothing,
      _ladrrsDependencies = Nothing,
      _ladrrsResponseStatus =
        pResponseStatus_
    }

-- | The token to request the next page of results.
ladrrsNextToken :: Lens' ListApplicationDependenciesResponse (Maybe Text)
ladrrsNextToken = lens _ladrrsNextToken (\s a -> s {_ladrrsNextToken = a})

-- | An array of application summaries nested in the application.
ladrrsDependencies :: Lens' ListApplicationDependenciesResponse [ApplicationDependencySummary]
ladrrsDependencies = lens _ladrrsDependencies (\s a -> s {_ladrrsDependencies = a}) . _Default . _Coerce

-- | -- | The response status code.
ladrrsResponseStatus :: Lens' ListApplicationDependenciesResponse Int
ladrrsResponseStatus = lens _ladrrsResponseStatus (\s a -> s {_ladrrsResponseStatus = a})

instance NFData ListApplicationDependenciesResponse
