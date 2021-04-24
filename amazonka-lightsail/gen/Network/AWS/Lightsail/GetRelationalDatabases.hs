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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all of your databases in Amazon Lightsail.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetRelationalDatabases
  ( -- * Creating a Request
    getRelationalDatabases,
    GetRelationalDatabases,

    -- * Request Lenses
    grdPageToken,

    -- * Destructuring the Response
    getRelationalDatabasesResponse,
    GetRelationalDatabasesResponse,

    -- * Response Lenses
    grdrrrsNextPageToken,
    grdrrrsRelationalDatabases,
    grdrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabases' smart constructor.
newtype GetRelationalDatabases = GetRelationalDatabases'
  { _grdPageToken ::
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

-- | Creates a value of 'GetRelationalDatabases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabases@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getRelationalDatabases ::
  GetRelationalDatabases
getRelationalDatabases =
  GetRelationalDatabases' {_grdPageToken = Nothing}

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabases@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
grdPageToken :: Lens' GetRelationalDatabases (Maybe Text)
grdPageToken = lens _grdPageToken (\s a -> s {_grdPageToken = a})

instance AWSPager GetRelationalDatabases where
  page rq rs
    | stop (rs ^. grdrrrsNextPageToken) = Nothing
    | stop (rs ^. grdrrrsRelationalDatabases) = Nothing
    | otherwise =
      Just $
        rq
          & grdPageToken .~ rs ^. grdrrrsNextPageToken

instance AWSRequest GetRelationalDatabases where
  type
    Rs GetRelationalDatabases =
      GetRelationalDatabasesResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabasesResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "relationalDatabases" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetRelationalDatabases

instance NFData GetRelationalDatabases

instance ToHeaders GetRelationalDatabases where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabases" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRelationalDatabases where
  toJSON GetRelationalDatabases' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _grdPageToken])

instance ToPath GetRelationalDatabases where
  toPath = const "/"

instance ToQuery GetRelationalDatabases where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabasesResponse' smart constructor.
data GetRelationalDatabasesResponse = GetRelationalDatabasesResponse'
  { _grdrrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _grdrrrsRelationalDatabases ::
      !( Maybe
           [RelationalDatabase]
       ),
    _grdrrrsResponseStatus ::
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

-- | Creates a value of 'GetRelationalDatabasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdrrrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabases@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'grdrrrsRelationalDatabases' - An object describing the result of your get relational databases request.
--
-- * 'grdrrrsResponseStatus' - -- | The response status code.
getRelationalDatabasesResponse ::
  -- | 'grdrrrsResponseStatus'
  Int ->
  GetRelationalDatabasesResponse
getRelationalDatabasesResponse pResponseStatus_ =
  GetRelationalDatabasesResponse'
    { _grdrrrsNextPageToken =
        Nothing,
      _grdrrrsRelationalDatabases = Nothing,
      _grdrrrsResponseStatus = pResponseStatus_
    }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabases@ request and specify the next page token using the @pageToken@ parameter.
grdrrrsNextPageToken :: Lens' GetRelationalDatabasesResponse (Maybe Text)
grdrrrsNextPageToken = lens _grdrrrsNextPageToken (\s a -> s {_grdrrrsNextPageToken = a})

-- | An object describing the result of your get relational databases request.
grdrrrsRelationalDatabases :: Lens' GetRelationalDatabasesResponse [RelationalDatabase]
grdrrrsRelationalDatabases = lens _grdrrrsRelationalDatabases (\s a -> s {_grdrrrsRelationalDatabases = a}) . _Default . _Coerce

-- | -- | The response status code.
grdrrrsResponseStatus :: Lens' GetRelationalDatabasesResponse Int
grdrrrsResponseStatus = lens _grdrrrsResponseStatus (\s a -> s {_grdrrrsResponseStatus = a})

instance NFData GetRelationalDatabasesResponse
