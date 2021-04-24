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
-- Module      : Network.AWS.SMS.ListApps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves summaries for all applications.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SMS.ListApps
  ( -- * Creating a Request
    listApps,
    ListApps,

    -- * Request Lenses
    laAppIds,
    laNextToken,
    laMaxResults,

    -- * Destructuring the Response
    listAppsResponse,
    ListAppsResponse,

    -- * Response Lenses
    lrsNextToken,
    lrsApps,
    lrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'listApps' smart constructor.
data ListApps = ListApps'
  { _laAppIds ::
      !(Maybe [Text]),
    _laNextToken :: !(Maybe Text),
    _laMaxResults :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListApps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laAppIds' - The unique application IDs.
--
-- * 'laNextToken' - The token for the next set of results.
--
-- * 'laMaxResults' - The maximum number of results to return in a single call. The default value is 100. To retrieve the remaining results, make another call with the returned @NextToken@ value.
listApps ::
  ListApps
listApps =
  ListApps'
    { _laAppIds = Nothing,
      _laNextToken = Nothing,
      _laMaxResults = Nothing
    }

-- | The unique application IDs.
laAppIds :: Lens' ListApps [Text]
laAppIds = lens _laAppIds (\s a -> s {_laAppIds = a}) . _Default . _Coerce

-- | The token for the next set of results.
laNextToken :: Lens' ListApps (Maybe Text)
laNextToken = lens _laNextToken (\s a -> s {_laNextToken = a})

-- | The maximum number of results to return in a single call. The default value is 100. To retrieve the remaining results, make another call with the returned @NextToken@ value.
laMaxResults :: Lens' ListApps (Maybe Int)
laMaxResults = lens _laMaxResults (\s a -> s {_laMaxResults = a})

instance AWSPager ListApps where
  page rq rs
    | stop (rs ^. lrsNextToken) = Nothing
    | stop (rs ^. lrsApps) = Nothing
    | otherwise =
      Just $ rq & laNextToken .~ rs ^. lrsNextToken

instance AWSRequest ListApps where
  type Rs ListApps = ListAppsResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          ListAppsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "apps" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListApps

instance NFData ListApps

instance ToHeaders ListApps where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.ListApps" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListApps where
  toJSON ListApps' {..} =
    object
      ( catMaybes
          [ ("appIds" .=) <$> _laAppIds,
            ("nextToken" .=) <$> _laNextToken,
            ("maxResults" .=) <$> _laMaxResults
          ]
      )

instance ToPath ListApps where
  toPath = const "/"

instance ToQuery ListApps where
  toQuery = const mempty

-- | /See:/ 'listAppsResponse' smart constructor.
data ListAppsResponse = ListAppsResponse'
  { _lrsNextToken ::
      !(Maybe Text),
    _lrsApps :: !(Maybe [AppSummary]),
    _lrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAppsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsNextToken' - The token required to retrieve the next set of results. This value is null when there are no more results to return.
--
-- * 'lrsApps' - The application summaries.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listAppsResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListAppsResponse
listAppsResponse pResponseStatus_ =
  ListAppsResponse'
    { _lrsNextToken = Nothing,
      _lrsApps = Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | The token required to retrieve the next set of results. This value is null when there are no more results to return.
lrsNextToken :: Lens' ListAppsResponse (Maybe Text)
lrsNextToken = lens _lrsNextToken (\s a -> s {_lrsNextToken = a})

-- | The application summaries.
lrsApps :: Lens' ListAppsResponse [AppSummary]
lrsApps = lens _lrsApps (\s a -> s {_lrsApps = a}) . _Default . _Coerce

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListAppsResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListAppsResponse
