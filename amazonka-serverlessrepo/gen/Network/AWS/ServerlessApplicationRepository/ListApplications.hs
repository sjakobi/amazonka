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
-- Module      : Network.AWS.ServerlessApplicationRepository.ListApplications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists applications owned by the requester.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ServerlessApplicationRepository.ListApplications
  ( -- * Creating a Request
    listApplications,
    ListApplications,

    -- * Request Lenses
    laNextToken,
    laMaxItems,

    -- * Destructuring the Response
    listApplicationsResponse,
    ListApplicationsResponse,

    -- * Response Lenses
    larrsNextToken,
    larrsApplications,
    larrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'listApplications' smart constructor.
data ListApplications = ListApplications'
  { _laNextToken ::
      !(Maybe Text),
    _laMaxItems :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListApplications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laNextToken' - A token to specify where to start paginating.
--
-- * 'laMaxItems' - The total number of items to return.
listApplications ::
  ListApplications
listApplications =
  ListApplications'
    { _laNextToken = Nothing,
      _laMaxItems = Nothing
    }

-- | A token to specify where to start paginating.
laNextToken :: Lens' ListApplications (Maybe Text)
laNextToken = lens _laNextToken (\s a -> s {_laNextToken = a})

-- | The total number of items to return.
laMaxItems :: Lens' ListApplications (Maybe Natural)
laMaxItems = lens _laMaxItems (\s a -> s {_laMaxItems = a}) . mapping _Nat

instance AWSPager ListApplications where
  page rq rs
    | stop (rs ^. larrsNextToken) = Nothing
    | stop (rs ^. larrsApplications) = Nothing
    | otherwise =
      Just $ rq & laNextToken .~ rs ^. larrsNextToken

instance AWSRequest ListApplications where
  type Rs ListApplications = ListApplicationsResponse
  request = get serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          ListApplicationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "applications" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListApplications

instance NFData ListApplications

instance ToHeaders ListApplications where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListApplications where
  toPath = const "/applications"

instance ToQuery ListApplications where
  toQuery ListApplications' {..} =
    mconcat
      [ "nextToken" =: _laNextToken,
        "maxItems" =: _laMaxItems
      ]

-- | /See:/ 'listApplicationsResponse' smart constructor.
data ListApplicationsResponse = ListApplicationsResponse'
  { _larrsNextToken ::
      !(Maybe Text),
    _larrsApplications ::
      !( Maybe
           [ApplicationSummary]
       ),
    _larrsResponseStatus ::
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

-- | Creates a value of 'ListApplicationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextToken' - The token to request the next page of results.
--
-- * 'larrsApplications' - An array of application summaries.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listApplicationsResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListApplicationsResponse
listApplicationsResponse pResponseStatus_ =
  ListApplicationsResponse'
    { _larrsNextToken =
        Nothing,
      _larrsApplications = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | The token to request the next page of results.
larrsNextToken :: Lens' ListApplicationsResponse (Maybe Text)
larrsNextToken = lens _larrsNextToken (\s a -> s {_larrsNextToken = a})

-- | An array of application summaries.
larrsApplications :: Lens' ListApplicationsResponse [ApplicationSummary]
larrsApplications = lens _larrsApplications (\s a -> s {_larrsApplications = a}) . _Default . _Coerce

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListApplicationsResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListApplicationsResponse
