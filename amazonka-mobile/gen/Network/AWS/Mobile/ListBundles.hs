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
-- Module      : Network.AWS.Mobile.ListBundles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all available bundles.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Mobile.ListBundles
  ( -- * Creating a Request
    listBundles,
    ListBundles,

    -- * Request Lenses
    lbNextToken,
    lbMaxResults,

    -- * Destructuring the Response
    listBundlesResponse,
    ListBundlesResponse,

    -- * Response Lenses
    lbrrsNextToken,
    lbrrsBundleList,
    lbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Mobile.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request structure to request all available bundles.
--
--
--
-- /See:/ 'listBundles' smart constructor.
data ListBundles = ListBundles'
  { _lbNextToken ::
      !(Maybe Text),
    _lbMaxResults :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBundles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbNextToken' - Pagination token. Set to null to start listing bundles from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more bundles.
--
-- * 'lbMaxResults' - Maximum number of records to list in a single response.
listBundles ::
  ListBundles
listBundles =
  ListBundles'
    { _lbNextToken = Nothing,
      _lbMaxResults = Nothing
    }

-- | Pagination token. Set to null to start listing bundles from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more bundles.
lbNextToken :: Lens' ListBundles (Maybe Text)
lbNextToken = lens _lbNextToken (\s a -> s {_lbNextToken = a})

-- | Maximum number of records to list in a single response.
lbMaxResults :: Lens' ListBundles (Maybe Int)
lbMaxResults = lens _lbMaxResults (\s a -> s {_lbMaxResults = a})

instance AWSPager ListBundles where
  page rq rs
    | stop (rs ^. lbrrsNextToken) = Nothing
    | stop (rs ^. lbrrsBundleList) = Nothing
    | otherwise =
      Just $ rq & lbNextToken .~ rs ^. lbrrsNextToken

instance AWSRequest ListBundles where
  type Rs ListBundles = ListBundlesResponse
  request = get mobile
  response =
    receiveJSON
      ( \s h x ->
          ListBundlesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "bundleList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBundles

instance NFData ListBundles

instance ToHeaders ListBundles where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListBundles where
  toPath = const "/bundles"

instance ToQuery ListBundles where
  toQuery ListBundles' {..} =
    mconcat
      [ "nextToken" =: _lbNextToken,
        "maxResults" =: _lbMaxResults
      ]

-- | Result structure contains a list of all available bundles with details.
--
--
--
-- /See:/ 'listBundlesResponse' smart constructor.
data ListBundlesResponse = ListBundlesResponse'
  { _lbrrsNextToken ::
      !(Maybe Text),
    _lbrrsBundleList ::
      !(Maybe [BundleDetails]),
    _lbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBundlesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrrsNextToken' - Pagination token. If non-null pagination token is returned in a result, then pass its value in another request to fetch more entries.
--
-- * 'lbrrsBundleList' - A list of bundles.
--
-- * 'lbrrsResponseStatus' - -- | The response status code.
listBundlesResponse ::
  -- | 'lbrrsResponseStatus'
  Int ->
  ListBundlesResponse
listBundlesResponse pResponseStatus_ =
  ListBundlesResponse'
    { _lbrrsNextToken = Nothing,
      _lbrrsBundleList = Nothing,
      _lbrrsResponseStatus = pResponseStatus_
    }

-- | Pagination token. If non-null pagination token is returned in a result, then pass its value in another request to fetch more entries.
lbrrsNextToken :: Lens' ListBundlesResponse (Maybe Text)
lbrrsNextToken = lens _lbrrsNextToken (\s a -> s {_lbrrsNextToken = a})

-- | A list of bundles.
lbrrsBundleList :: Lens' ListBundlesResponse [BundleDetails]
lbrrsBundleList = lens _lbrrsBundleList (\s a -> s {_lbrrsBundleList = a}) . _Default . _Coerce

-- | -- | The response status code.
lbrrsResponseStatus :: Lens' ListBundlesResponse Int
lbrrsResponseStatus = lens _lbrrsResponseStatus (\s a -> s {_lbrrsResponseStatus = a})

instance NFData ListBundlesResponse
