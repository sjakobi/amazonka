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
-- Module      : Network.AWS.Connect.ListPrompts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about the prompts for the specified Amazon Connect instance.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListPrompts
  ( -- * Creating a Request
    listPrompts,
    ListPrompts,

    -- * Request Lenses
    lpNextToken,
    lpMaxResults,
    lpInstanceId,

    -- * Destructuring the Response
    listPromptsResponse,
    ListPromptsResponse,

    -- * Response Lenses
    lprrsNextToken,
    lprrsPromptSummaryList,
    lprrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPrompts' smart constructor.
data ListPrompts = ListPrompts'
  { _lpNextToken ::
      !(Maybe Text),
    _lpMaxResults :: !(Maybe Nat),
    _lpInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPrompts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'lpMaxResults' - The maximum number of results to return per page.
--
-- * 'lpInstanceId' - The identifier of the Amazon Connect instance.
listPrompts ::
  -- | 'lpInstanceId'
  Text ->
  ListPrompts
listPrompts pInstanceId_ =
  ListPrompts'
    { _lpNextToken = Nothing,
      _lpMaxResults = Nothing,
      _lpInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
lpNextToken :: Lens' ListPrompts (Maybe Text)
lpNextToken = lens _lpNextToken (\s a -> s {_lpNextToken = a})

-- | The maximum number of results to return per page.
lpMaxResults :: Lens' ListPrompts (Maybe Natural)
lpMaxResults = lens _lpMaxResults (\s a -> s {_lpMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
lpInstanceId :: Lens' ListPrompts Text
lpInstanceId = lens _lpInstanceId (\s a -> s {_lpInstanceId = a})

instance AWSPager ListPrompts where
  page rq rs
    | stop (rs ^. lprrsNextToken) = Nothing
    | stop (rs ^. lprrsPromptSummaryList) = Nothing
    | otherwise =
      Just $ rq & lpNextToken .~ rs ^. lprrsNextToken

instance AWSRequest ListPrompts where
  type Rs ListPrompts = ListPromptsResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListPromptsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PromptSummaryList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPrompts

instance NFData ListPrompts

instance ToHeaders ListPrompts where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListPrompts where
  toPath ListPrompts' {..} =
    mconcat ["/prompts-summary/", toBS _lpInstanceId]

instance ToQuery ListPrompts where
  toQuery ListPrompts' {..} =
    mconcat
      [ "nextToken" =: _lpNextToken,
        "maxResults" =: _lpMaxResults
      ]

-- | /See:/ 'listPromptsResponse' smart constructor.
data ListPromptsResponse = ListPromptsResponse'
  { _lprrsNextToken ::
      !(Maybe Text),
    _lprrsPromptSummaryList ::
      !(Maybe [PromptSummary]),
    _lprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPromptsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lprrsPromptSummaryList' - Information about the prompts.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPromptsResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPromptsResponse
listPromptsResponse pResponseStatus_ =
  ListPromptsResponse'
    { _lprrsNextToken = Nothing,
      _lprrsPromptSummaryList = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
lprrsNextToken :: Lens' ListPromptsResponse (Maybe Text)
lprrsNextToken = lens _lprrsNextToken (\s a -> s {_lprrsNextToken = a})

-- | Information about the prompts.
lprrsPromptSummaryList :: Lens' ListPromptsResponse [PromptSummary]
lprrsPromptSummaryList = lens _lprrsPromptSummaryList (\s a -> s {_lprrsPromptSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPromptsResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPromptsResponse
