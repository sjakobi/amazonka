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
-- Module      : Network.AWS.Lightsail.GetBlueprints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of available instance images, or /blueprints/ . You can use a blueprint to create a new instance already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetBlueprints
  ( -- * Creating a Request
    getBlueprints,
    GetBlueprints,

    -- * Request Lenses
    gbPageToken,
    gbIncludeInactive,

    -- * Destructuring the Response
    getBlueprintsResponse,
    GetBlueprintsResponse,

    -- * Response Lenses
    gbrrsBlueprints,
    gbrrsNextPageToken,
    gbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBlueprints' smart constructor.
data GetBlueprints = GetBlueprints'
  { _gbPageToken ::
      !(Maybe Text),
    _gbIncludeInactive :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBlueprints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetBlueprints@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
--
-- * 'gbIncludeInactive' - A Boolean value indicating whether to include inactive results in your request.
getBlueprints ::
  GetBlueprints
getBlueprints =
  GetBlueprints'
    { _gbPageToken = Nothing,
      _gbIncludeInactive = Nothing
    }

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetBlueprints@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
gbPageToken :: Lens' GetBlueprints (Maybe Text)
gbPageToken = lens _gbPageToken (\s a -> s {_gbPageToken = a})

-- | A Boolean value indicating whether to include inactive results in your request.
gbIncludeInactive :: Lens' GetBlueprints (Maybe Bool)
gbIncludeInactive = lens _gbIncludeInactive (\s a -> s {_gbIncludeInactive = a})

instance AWSPager GetBlueprints where
  page rq rs
    | stop (rs ^. gbrrsNextPageToken) = Nothing
    | stop (rs ^. gbrrsBlueprints) = Nothing
    | otherwise =
      Just $ rq & gbPageToken .~ rs ^. gbrrsNextPageToken

instance AWSRequest GetBlueprints where
  type Rs GetBlueprints = GetBlueprintsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetBlueprintsResponse'
            <$> (x .?> "blueprints" .!@ mempty)
            <*> (x .?> "nextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetBlueprints

instance NFData GetBlueprints

instance ToHeaders GetBlueprints where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.GetBlueprints" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetBlueprints where
  toJSON GetBlueprints' {..} =
    object
      ( catMaybes
          [ ("pageToken" .=) <$> _gbPageToken,
            ("includeInactive" .=) <$> _gbIncludeInactive
          ]
      )

instance ToPath GetBlueprints where
  toPath = const "/"

instance ToQuery GetBlueprints where
  toQuery = const mempty

-- | /See:/ 'getBlueprintsResponse' smart constructor.
data GetBlueprintsResponse = GetBlueprintsResponse'
  { _gbrrsBlueprints ::
      !(Maybe [Blueprint]),
    _gbrrsNextPageToken ::
      !(Maybe Text),
    _gbrrsResponseStatus ::
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

-- | Creates a value of 'GetBlueprintsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbrrsBlueprints' - An array of key-value pairs that contains information about the available blueprints.
--
-- * 'gbrrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetBlueprints@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'gbrrsResponseStatus' - -- | The response status code.
getBlueprintsResponse ::
  -- | 'gbrrsResponseStatus'
  Int ->
  GetBlueprintsResponse
getBlueprintsResponse pResponseStatus_ =
  GetBlueprintsResponse'
    { _gbrrsBlueprints = Nothing,
      _gbrrsNextPageToken = Nothing,
      _gbrrsResponseStatus = pResponseStatus_
    }

-- | An array of key-value pairs that contains information about the available blueprints.
gbrrsBlueprints :: Lens' GetBlueprintsResponse [Blueprint]
gbrrsBlueprints = lens _gbrrsBlueprints (\s a -> s {_gbrrsBlueprints = a}) . _Default . _Coerce

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetBlueprints@ request and specify the next page token using the @pageToken@ parameter.
gbrrsNextPageToken :: Lens' GetBlueprintsResponse (Maybe Text)
gbrrsNextPageToken = lens _gbrrsNextPageToken (\s a -> s {_gbrrsNextPageToken = a})

-- | -- | The response status code.
gbrrsResponseStatus :: Lens' GetBlueprintsResponse Int
gbrrsResponseStatus = lens _gbrrsResponseStatus (\s a -> s {_gbrrsResponseStatus = a})

instance NFData GetBlueprintsResponse
