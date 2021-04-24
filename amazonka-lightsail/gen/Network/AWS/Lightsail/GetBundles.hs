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
-- Module      : Network.AWS.Lightsail.GetBundles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or /instance/ ).
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetBundles
  ( -- * Creating a Request
    getBundles,
    GetBundles,

    -- * Request Lenses
    gbsPageToken,
    gbsIncludeInactive,

    -- * Destructuring the Response
    getBundlesResponse,
    GetBundlesResponse,

    -- * Response Lenses
    gbrbrsNextPageToken,
    gbrbrsBundles,
    gbrbrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBundles' smart constructor.
data GetBundles = GetBundles'
  { _gbsPageToken ::
      !(Maybe Text),
    _gbsIncludeInactive :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBundles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbsPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetBundles@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
--
-- * 'gbsIncludeInactive' - A Boolean value that indicates whether to include inactive bundle results in your request.
getBundles ::
  GetBundles
getBundles =
  GetBundles'
    { _gbsPageToken = Nothing,
      _gbsIncludeInactive = Nothing
    }

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetBundles@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gbsPageToken :: Lens' GetBundles (Maybe Text)
gbsPageToken = lens _gbsPageToken (\s a -> s {_gbsPageToken = a})

-- | A Boolean value that indicates whether to include inactive bundle results in your request.
gbsIncludeInactive :: Lens' GetBundles (Maybe Bool)
gbsIncludeInactive = lens _gbsIncludeInactive (\s a -> s {_gbsIncludeInactive = a})

instance AWSPager GetBundles where
  page rq rs
    | stop (rs ^. gbrbrsNextPageToken) = Nothing
    | stop (rs ^. gbrbrsBundles) = Nothing
    | otherwise =
      Just $ rq & gbsPageToken .~ rs ^. gbrbrsNextPageToken

instance AWSRequest GetBundles where
  type Rs GetBundles = GetBundlesResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetBundlesResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "bundles" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetBundles

instance NFData GetBundles

instance ToHeaders GetBundles where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetBundles" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetBundles where
  toJSON GetBundles' {..} =
    object
      ( catMaybes
          [ ("pageToken" .=) <$> _gbsPageToken,
            ("includeInactive" .=) <$> _gbsIncludeInactive
          ]
      )

instance ToPath GetBundles where
  toPath = const "/"

instance ToQuery GetBundles where
  toQuery = const mempty

-- | /See:/ 'getBundlesResponse' smart constructor.
data GetBundlesResponse = GetBundlesResponse'
  { _gbrbrsNextPageToken ::
      !(Maybe Text),
    _gbrbrsBundles ::
      !(Maybe [Bundle]),
    _gbrbrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBundlesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbrbrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetBundles@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'gbrbrsBundles' - An array of key-value pairs that contains information about the available bundles.
--
-- * 'gbrbrsResponseStatus' - -- | The response status code.
getBundlesResponse ::
  -- | 'gbrbrsResponseStatus'
  Int ->
  GetBundlesResponse
getBundlesResponse pResponseStatus_ =
  GetBundlesResponse'
    { _gbrbrsNextPageToken = Nothing,
      _gbrbrsBundles = Nothing,
      _gbrbrsResponseStatus = pResponseStatus_
    }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetBundles@ request and specify the next page token using the @pageToken@ parameter.
gbrbrsNextPageToken :: Lens' GetBundlesResponse (Maybe Text)
gbrbrsNextPageToken = lens _gbrbrsNextPageToken (\s a -> s {_gbrbrsNextPageToken = a})

-- | An array of key-value pairs that contains information about the available bundles.
gbrbrsBundles :: Lens' GetBundlesResponse [Bundle]
gbrbrsBundles = lens _gbrbrsBundles (\s a -> s {_gbrbrsBundles = a}) . _Default . _Coerce

-- | -- | The response status code.
gbrbrsResponseStatus :: Lens' GetBundlesResponse Int
gbrbrsResponseStatus = lens _gbrbrsResponseStatus (\s a -> s {_gbrbrsResponseStatus = a})

instance NFData GetBundlesResponse
