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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseBlueprints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of available database blueprints in Amazon Lightsail. A blueprint describes the major engine version of a database.
--
--
-- You can use a blueprint ID to create a new database that runs a specific database engine.
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetRelationalDatabaseBlueprints
  ( -- * Creating a Request
    getRelationalDatabaseBlueprints,
    GetRelationalDatabaseBlueprints,

    -- * Request Lenses
    grdbPageToken,

    -- * Destructuring the Response
    getRelationalDatabaseBlueprintsResponse,
    GetRelationalDatabaseBlueprintsResponse,

    -- * Response Lenses
    grdbrrsBlueprints,
    grdbrrsNextPageToken,
    grdbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabaseBlueprints' smart constructor.
newtype GetRelationalDatabaseBlueprints = GetRelationalDatabaseBlueprints'
  { _grdbPageToken ::
      Maybe
        Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRelationalDatabaseBlueprints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdbPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseBlueprints@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
getRelationalDatabaseBlueprints ::
  GetRelationalDatabaseBlueprints
getRelationalDatabaseBlueprints =
  GetRelationalDatabaseBlueprints'
    { _grdbPageToken =
        Nothing
    }

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseBlueprints@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
grdbPageToken :: Lens' GetRelationalDatabaseBlueprints (Maybe Text)
grdbPageToken = lens _grdbPageToken (\s a -> s {_grdbPageToken = a})

instance AWSPager GetRelationalDatabaseBlueprints where
  page rq rs
    | stop (rs ^. grdbrrsNextPageToken) = Nothing
    | stop (rs ^. grdbrrsBlueprints) = Nothing
    | otherwise =
      Just $
        rq
          & grdbPageToken .~ rs ^. grdbrrsNextPageToken

instance AWSRequest GetRelationalDatabaseBlueprints where
  type
    Rs GetRelationalDatabaseBlueprints =
      GetRelationalDatabaseBlueprintsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabaseBlueprintsResponse'
            <$> (x .?> "blueprints" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRelationalDatabaseBlueprints

instance NFData GetRelationalDatabaseBlueprints

instance ToHeaders GetRelationalDatabaseBlueprints where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabaseBlueprints" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRelationalDatabaseBlueprints where
  toJSON GetRelationalDatabaseBlueprints' {..} =
    object
      (catMaybes [("pageToken" .=) <$> _grdbPageToken])

instance ToPath GetRelationalDatabaseBlueprints where
  toPath = const "/"

instance ToQuery GetRelationalDatabaseBlueprints where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabaseBlueprintsResponse' smart constructor.
data GetRelationalDatabaseBlueprintsResponse = GetRelationalDatabaseBlueprintsResponse'
  { _grdbrrsBlueprints ::
      !( Maybe
           [RelationalDatabaseBlueprint]
       ),
    _grdbrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _grdbrrsResponseStatus ::
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

-- | Creates a value of 'GetRelationalDatabaseBlueprintsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdbrrsBlueprints' - An object describing the result of your get relational database blueprints request.
--
-- * 'grdbrrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseBlueprints@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'grdbrrsResponseStatus' - -- | The response status code.
getRelationalDatabaseBlueprintsResponse ::
  -- | 'grdbrrsResponseStatus'
  Int ->
  GetRelationalDatabaseBlueprintsResponse
getRelationalDatabaseBlueprintsResponse
  pResponseStatus_ =
    GetRelationalDatabaseBlueprintsResponse'
      { _grdbrrsBlueprints =
          Nothing,
        _grdbrrsNextPageToken = Nothing,
        _grdbrrsResponseStatus =
          pResponseStatus_
      }

-- | An object describing the result of your get relational database blueprints request.
grdbrrsBlueprints :: Lens' GetRelationalDatabaseBlueprintsResponse [RelationalDatabaseBlueprint]
grdbrrsBlueprints = lens _grdbrrsBlueprints (\s a -> s {_grdbrrsBlueprints = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseBlueprints@ request and specify the next page token using the @pageToken@ parameter.
grdbrrsNextPageToken :: Lens' GetRelationalDatabaseBlueprintsResponse (Maybe Text)
grdbrrsNextPageToken = lens _grdbrrsNextPageToken (\s a -> s {_grdbrrsNextPageToken = a})

-- | -- | The response status code.
grdbrrsResponseStatus :: Lens' GetRelationalDatabaseBlueprintsResponse Int
grdbrrsResponseStatus = lens _grdbrrsResponseStatus (\s a -> s {_grdbrrsResponseStatus = a})

instance
  NFData
    GetRelationalDatabaseBlueprintsResponse
