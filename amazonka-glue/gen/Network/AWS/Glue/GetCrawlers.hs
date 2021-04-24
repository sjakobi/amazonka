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
-- Module      : Network.AWS.Glue.GetCrawlers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata for all crawlers defined in the customer account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetCrawlers
  ( -- * Creating a Request
    getCrawlers,
    GetCrawlers,

    -- * Request Lenses
    gNextToken,
    gMaxResults,

    -- * Destructuring the Response
    getCrawlersResponse,
    GetCrawlersResponse,

    -- * Response Lenses
    getcrawlersresponseersNextToken,
    getcrawlersresponseersCrawlers,
    getcrawlersresponseersResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCrawlers' smart constructor.
data GetCrawlers = GetCrawlers'
  { _gNextToken ::
      !(Maybe Text),
    _gMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCrawlers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gNextToken' - A continuation token, if this is a continuation request.
--
-- * 'gMaxResults' - The number of crawlers to return on each call.
getCrawlers ::
  GetCrawlers
getCrawlers =
  GetCrawlers'
    { _gNextToken = Nothing,
      _gMaxResults = Nothing
    }

-- | A continuation token, if this is a continuation request.
gNextToken :: Lens' GetCrawlers (Maybe Text)
gNextToken = lens _gNextToken (\s a -> s {_gNextToken = a})

-- | The number of crawlers to return on each call.
gMaxResults :: Lens' GetCrawlers (Maybe Natural)
gMaxResults = lens _gMaxResults (\s a -> s {_gMaxResults = a}) . mapping _Nat

instance AWSPager GetCrawlers where
  page rq rs
    | stop (rs ^. getcrawlersresponseersNextToken) =
      Nothing
    | stop (rs ^. getcrawlersresponseersCrawlers) =
      Nothing
    | otherwise =
      Just $
        rq
          & gNextToken .~ rs ^. getcrawlersresponseersNextToken

instance AWSRequest GetCrawlers where
  type Rs GetCrawlers = GetCrawlersResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetCrawlersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Crawlers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetCrawlers

instance NFData GetCrawlers

instance ToHeaders GetCrawlers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetCrawlers" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCrawlers where
  toJSON GetCrawlers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gNextToken,
            ("MaxResults" .=) <$> _gMaxResults
          ]
      )

instance ToPath GetCrawlers where
  toPath = const "/"

instance ToQuery GetCrawlers where
  toQuery = const mempty

-- | /See:/ 'getCrawlersResponse' smart constructor.
data GetCrawlersResponse = GetCrawlersResponse'
  { _getcrawlersresponseersNextToken ::
      !(Maybe Text),
    _getcrawlersresponseersCrawlers ::
      !(Maybe [Crawler]),
    _getcrawlersresponseersResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCrawlersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getcrawlersresponseersNextToken' - A continuation token, if the returned list has not reached the end of those defined in this customer account.
--
-- * 'getcrawlersresponseersCrawlers' - A list of crawler metadata.
--
-- * 'getcrawlersresponseersResponseStatus' - -- | The response status code.
getCrawlersResponse ::
  -- | 'getcrawlersresponseersResponseStatus'
  Int ->
  GetCrawlersResponse
getCrawlersResponse pResponseStatus_ =
  GetCrawlersResponse'
    { _getcrawlersresponseersNextToken =
        Nothing,
      _getcrawlersresponseersCrawlers = Nothing,
      _getcrawlersresponseersResponseStatus =
        pResponseStatus_
    }

-- | A continuation token, if the returned list has not reached the end of those defined in this customer account.
getcrawlersresponseersNextToken :: Lens' GetCrawlersResponse (Maybe Text)
getcrawlersresponseersNextToken = lens _getcrawlersresponseersNextToken (\s a -> s {_getcrawlersresponseersNextToken = a})

-- | A list of crawler metadata.
getcrawlersresponseersCrawlers :: Lens' GetCrawlersResponse [Crawler]
getcrawlersresponseersCrawlers = lens _getcrawlersresponseersCrawlers (\s a -> s {_getcrawlersresponseersCrawlers = a}) . _Default . _Coerce

-- | -- | The response status code.
getcrawlersresponseersResponseStatus :: Lens' GetCrawlersResponse Int
getcrawlersresponseersResponseStatus = lens _getcrawlersresponseersResponseStatus (\s a -> s {_getcrawlersresponseersResponseStatus = a})

instance NFData GetCrawlersResponse
