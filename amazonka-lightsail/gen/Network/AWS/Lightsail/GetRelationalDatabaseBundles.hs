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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseBundles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of bundles that are available in Amazon Lightsail. A bundle describes the performance specifications for a database.
--
--
-- You can use a bundle ID to create a new database with explicit performance specifications.
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetRelationalDatabaseBundles
  ( -- * Creating a Request
    getRelationalDatabaseBundles,
    GetRelationalDatabaseBundles,

    -- * Request Lenses
    gPageToken,

    -- * Destructuring the Response
    getRelationalDatabaseBundlesResponse,
    GetRelationalDatabaseBundlesResponse,

    -- * Response Lenses
    grdbrrrsNextPageToken,
    grdbrrrsBundles,
    grdbrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabaseBundles' smart constructor.
newtype GetRelationalDatabaseBundles = GetRelationalDatabaseBundles'
  { _gPageToken ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRelationalDatabaseBundles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseBundles@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getRelationalDatabaseBundles ::
  GetRelationalDatabaseBundles
getRelationalDatabaseBundles =
  GetRelationalDatabaseBundles'
    { _gPageToken =
        Nothing
    }

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseBundles@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gPageToken :: Lens' GetRelationalDatabaseBundles (Maybe Text)
gPageToken = lens _gPageToken (\s a -> s {_gPageToken = a})

instance AWSPager GetRelationalDatabaseBundles where
  page rq rs
    | stop (rs ^. grdbrrrsNextPageToken) = Nothing
    | stop (rs ^. grdbrrrsBundles) = Nothing
    | otherwise =
      Just $ rq & gPageToken .~ rs ^. grdbrrrsNextPageToken

instance AWSRequest GetRelationalDatabaseBundles where
  type
    Rs GetRelationalDatabaseBundles =
      GetRelationalDatabaseBundlesResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabaseBundlesResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "bundles" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetRelationalDatabaseBundles

instance NFData GetRelationalDatabaseBundles

instance ToHeaders GetRelationalDatabaseBundles where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabaseBundles" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRelationalDatabaseBundles where
  toJSON GetRelationalDatabaseBundles' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _gPageToken])

instance ToPath GetRelationalDatabaseBundles where
  toPath = const "/"

instance ToQuery GetRelationalDatabaseBundles where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabaseBundlesResponse' smart constructor.
data GetRelationalDatabaseBundlesResponse = GetRelationalDatabaseBundlesResponse'
  { _grdbrrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _grdbrrrsBundles ::
      !( Maybe
           [RelationalDatabaseBundle]
       ),
    _grdbrrrsResponseStatus ::
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

-- | Creates a value of 'GetRelationalDatabaseBundlesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdbrrrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseBundles@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'grdbrrrsBundles' - An object describing the result of your get relational database bundles request.
--
-- * 'grdbrrrsResponseStatus' - -- | The response status code.
getRelationalDatabaseBundlesResponse ::
  -- | 'grdbrrrsResponseStatus'
  Int ->
  GetRelationalDatabaseBundlesResponse
getRelationalDatabaseBundlesResponse pResponseStatus_ =
  GetRelationalDatabaseBundlesResponse'
    { _grdbrrrsNextPageToken =
        Nothing,
      _grdbrrrsBundles = Nothing,
      _grdbrrrsResponseStatus =
        pResponseStatus_
    }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseBundles@ request and specify the next page token using the @pageToken@ parameter.
grdbrrrsNextPageToken :: Lens' GetRelationalDatabaseBundlesResponse (Maybe Text)
grdbrrrsNextPageToken = lens _grdbrrrsNextPageToken (\s a -> s {_grdbrrrsNextPageToken = a})

-- | An object describing the result of your get relational database bundles request.
grdbrrrsBundles :: Lens' GetRelationalDatabaseBundlesResponse [RelationalDatabaseBundle]
grdbrrrsBundles = lens _grdbrrrsBundles (\s a -> s {_grdbrrrsBundles = a}) . _Default . _Coerce

-- | -- | The response status code.
grdbrrrsResponseStatus :: Lens' GetRelationalDatabaseBundlesResponse Int
grdbrrrsResponseStatus = lens _grdbrrrsResponseStatus (\s a -> s {_grdbrrrsResponseStatus = a})

instance NFData GetRelationalDatabaseBundlesResponse
