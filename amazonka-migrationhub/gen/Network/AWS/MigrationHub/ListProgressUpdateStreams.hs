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
-- Module      : Network.AWS.MigrationHub.ListProgressUpdateStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists progress update streams associated with the user account making this call.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MigrationHub.ListProgressUpdateStreams
  ( -- * Creating a Request
    listProgressUpdateStreams,
    ListProgressUpdateStreams,

    -- * Request Lenses
    lpusNextToken,
    lpusMaxResults,

    -- * Destructuring the Response
    listProgressUpdateStreamsResponse,
    ListProgressUpdateStreamsResponse,

    -- * Response Lenses
    lpusrrsNextToken,
    lpusrrsProgressUpdateStreamSummaryList,
    lpusrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MigrationHub.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listProgressUpdateStreams' smart constructor.
data ListProgressUpdateStreams = ListProgressUpdateStreams'
  { _lpusNextToken ::
      !(Maybe Text),
    _lpusMaxResults ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListProgressUpdateStreams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpusNextToken' - If a @NextToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @NextToken@ .
--
-- * 'lpusMaxResults' - Filter to limit the maximum number of results to list per page.
listProgressUpdateStreams ::
  ListProgressUpdateStreams
listProgressUpdateStreams =
  ListProgressUpdateStreams'
    { _lpusNextToken =
        Nothing,
      _lpusMaxResults = Nothing
    }

-- | If a @NextToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @NextToken@ .
lpusNextToken :: Lens' ListProgressUpdateStreams (Maybe Text)
lpusNextToken = lens _lpusNextToken (\s a -> s {_lpusNextToken = a})

-- | Filter to limit the maximum number of results to list per page.
lpusMaxResults :: Lens' ListProgressUpdateStreams (Maybe Natural)
lpusMaxResults = lens _lpusMaxResults (\s a -> s {_lpusMaxResults = a}) . mapping _Nat

instance AWSPager ListProgressUpdateStreams where
  page rq rs
    | stop (rs ^. lpusrrsNextToken) = Nothing
    | stop (rs ^. lpusrrsProgressUpdateStreamSummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lpusNextToken .~ rs ^. lpusrrsNextToken

instance AWSRequest ListProgressUpdateStreams where
  type
    Rs ListProgressUpdateStreams =
      ListProgressUpdateStreamsResponse
  request = postJSON migrationHub
  response =
    receiveJSON
      ( \s h x ->
          ListProgressUpdateStreamsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ProgressUpdateStreamSummaryList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListProgressUpdateStreams

instance NFData ListProgressUpdateStreams

instance ToHeaders ListProgressUpdateStreams where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSMigrationHub.ListProgressUpdateStreams" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListProgressUpdateStreams where
  toJSON ListProgressUpdateStreams' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lpusNextToken,
            ("MaxResults" .=) <$> _lpusMaxResults
          ]
      )

instance ToPath ListProgressUpdateStreams where
  toPath = const "/"

instance ToQuery ListProgressUpdateStreams where
  toQuery = const mempty

-- | /See:/ 'listProgressUpdateStreamsResponse' smart constructor.
data ListProgressUpdateStreamsResponse = ListProgressUpdateStreamsResponse'
  { _lpusrrsNextToken ::
      !( Maybe
           Text
       ),
    _lpusrrsProgressUpdateStreamSummaryList ::
      !( Maybe
           [ProgressUpdateStreamSummary]
       ),
    _lpusrrsResponseStatus ::
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

-- | Creates a value of 'ListProgressUpdateStreamsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpusrrsNextToken' - If there are more streams created than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
--
-- * 'lpusrrsProgressUpdateStreamSummaryList' - List of progress update streams up to the max number of results passed in the input.
--
-- * 'lpusrrsResponseStatus' - -- | The response status code.
listProgressUpdateStreamsResponse ::
  -- | 'lpusrrsResponseStatus'
  Int ->
  ListProgressUpdateStreamsResponse
listProgressUpdateStreamsResponse pResponseStatus_ =
  ListProgressUpdateStreamsResponse'
    { _lpusrrsNextToken =
        Nothing,
      _lpusrrsProgressUpdateStreamSummaryList =
        Nothing,
      _lpusrrsResponseStatus =
        pResponseStatus_
    }

-- | If there are more streams created than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
lpusrrsNextToken :: Lens' ListProgressUpdateStreamsResponse (Maybe Text)
lpusrrsNextToken = lens _lpusrrsNextToken (\s a -> s {_lpusrrsNextToken = a})

-- | List of progress update streams up to the max number of results passed in the input.
lpusrrsProgressUpdateStreamSummaryList :: Lens' ListProgressUpdateStreamsResponse [ProgressUpdateStreamSummary]
lpusrrsProgressUpdateStreamSummaryList = lens _lpusrrsProgressUpdateStreamSummaryList (\s a -> s {_lpusrrsProgressUpdateStreamSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lpusrrsResponseStatus :: Lens' ListProgressUpdateStreamsResponse Int
lpusrrsResponseStatus = lens _lpusrrsResponseStatus (\s a -> s {_lpusrrsResponseStatus = a})

instance NFData ListProgressUpdateStreamsResponse
