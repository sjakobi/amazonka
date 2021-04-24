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
-- Module      : Network.AWS.Lightsail.GetDomains
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all domains in the user's account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetDomains
  ( -- * Creating a Request
    getDomains,
    GetDomains,

    -- * Request Lenses
    gddPageToken,

    -- * Destructuring the Response
    getDomainsResponse,
    GetDomainsResponse,

    -- * Response Lenses
    getrsDomains,
    getrsNextPageToken,
    getrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDomains' smart constructor.
newtype GetDomains = GetDomains'
  { _gddPageToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDomains' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetDomains@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getDomains ::
  GetDomains
getDomains = GetDomains' {_gddPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetDomains@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gddPageToken :: Lens' GetDomains (Maybe Text)
gddPageToken = lens _gddPageToken (\s a -> s {_gddPageToken = a})

instance AWSPager GetDomains where
  page rq rs
    | stop (rs ^. getrsNextPageToken) = Nothing
    | stop (rs ^. getrsDomains) = Nothing
    | otherwise =
      Just $ rq & gddPageToken .~ rs ^. getrsNextPageToken

instance AWSRequest GetDomains where
  type Rs GetDomains = GetDomainsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetDomainsResponse'
            <$> (x .?> "domains" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDomains

instance NFData GetDomains

instance ToHeaders GetDomains where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetDomains" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDomains where
  toJSON GetDomains' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _gddPageToken])

instance ToPath GetDomains where
  toPath = const "/"

instance ToQuery GetDomains where
  toQuery = const mempty

-- | /See:/ 'getDomainsResponse' smart constructor.
data GetDomainsResponse = GetDomainsResponse'
  { _getrsDomains ::
      !(Maybe [Domain]),
    _getrsNextPageToken ::
      !(Maybe Text),
    _getrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDomainsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getrsDomains' - An array of key-value pairs containing information about each of the domain entries in the user's account.
--
-- * 'getrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetDomains@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'getrsResponseStatus' - -- | The response status code.
getDomainsResponse ::
  -- | 'getrsResponseStatus'
  Int ->
  GetDomainsResponse
getDomainsResponse pResponseStatus_ =
  GetDomainsResponse'
    { _getrsDomains = Nothing,
      _getrsNextPageToken = Nothing,
      _getrsResponseStatus = pResponseStatus_
    }

-- | An array of key-value pairs containing information about each of the domain entries in the user's account.
getrsDomains :: Lens' GetDomainsResponse [Domain]
getrsDomains = lens _getrsDomains (\s a -> s {_getrsDomains = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetDomains@ request and specify the next page token using the @pageToken@ parameter.
getrsNextPageToken :: Lens' GetDomainsResponse (Maybe Text)
getrsNextPageToken = lens _getrsNextPageToken (\s a -> s {_getrsNextPageToken = a})

-- | -- | The response status code.
getrsResponseStatus :: Lens' GetDomainsResponse Int
getrsResponseStatus = lens _getrsResponseStatus (\s a -> s {_getrsResponseStatus = a})

instance NFData GetDomainsResponse
