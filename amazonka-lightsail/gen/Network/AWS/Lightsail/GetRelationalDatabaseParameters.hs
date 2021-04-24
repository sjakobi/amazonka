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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all of the runtime parameters offered by the underlying database software, or engine, for a specific database in Amazon Lightsail.
--
--
-- In addition to the parameter names and values, this operation returns other information about each parameter. This information includes whether changes require a reboot, whether the parameter is modifiable, the allowed values, and the data types.
--
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetRelationalDatabaseParameters
  ( -- * Creating a Request
    getRelationalDatabaseParameters,
    GetRelationalDatabaseParameters,

    -- * Request Lenses
    grdpPageToken,
    grdpRelationalDatabaseName,

    -- * Destructuring the Response
    getRelationalDatabaseParametersResponse,
    GetRelationalDatabaseParametersResponse,

    -- * Response Lenses
    grdprrsNextPageToken,
    grdprrsParameters,
    grdprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabaseParameters' smart constructor.
data GetRelationalDatabaseParameters = GetRelationalDatabaseParameters'
  { _grdpPageToken ::
      !( Maybe
           Text
       ),
    _grdpRelationalDatabaseName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRelationalDatabaseParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdpPageToken' - The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseParameters@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
--
-- * 'grdpRelationalDatabaseName' - The name of your database for which to get parameters.
getRelationalDatabaseParameters ::
  -- | 'grdpRelationalDatabaseName'
  Text ->
  GetRelationalDatabaseParameters
getRelationalDatabaseParameters
  pRelationalDatabaseName_ =
    GetRelationalDatabaseParameters'
      { _grdpPageToken =
          Nothing,
        _grdpRelationalDatabaseName =
          pRelationalDatabaseName_
      }

-- | The token to advance to the next page of results from your request. To get a page token, perform an initial @GetRelationalDatabaseParameters@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
grdpPageToken :: Lens' GetRelationalDatabaseParameters (Maybe Text)
grdpPageToken = lens _grdpPageToken (\s a -> s {_grdpPageToken = a})

-- | The name of your database for which to get parameters.
grdpRelationalDatabaseName :: Lens' GetRelationalDatabaseParameters Text
grdpRelationalDatabaseName = lens _grdpRelationalDatabaseName (\s a -> s {_grdpRelationalDatabaseName = a})

instance AWSPager GetRelationalDatabaseParameters where
  page rq rs
    | stop (rs ^. grdprrsNextPageToken) = Nothing
    | stop (rs ^. grdprrsParameters) = Nothing
    | otherwise =
      Just $
        rq
          & grdpPageToken .~ rs ^. grdprrsNextPageToken

instance AWSRequest GetRelationalDatabaseParameters where
  type
    Rs GetRelationalDatabaseParameters =
      GetRelationalDatabaseParametersResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabaseParametersResponse'
            <$> (x .?> "nextPageToken")
            <*> (x .?> "parameters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetRelationalDatabaseParameters

instance NFData GetRelationalDatabaseParameters

instance ToHeaders GetRelationalDatabaseParameters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabaseParameters" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRelationalDatabaseParameters where
  toJSON GetRelationalDatabaseParameters' {..} =
    object
      ( catMaybes
          [ ("pageToken" .=) <$> _grdpPageToken,
            Just
              ( "relationalDatabaseName"
                  .= _grdpRelationalDatabaseName
              )
          ]
      )

instance ToPath GetRelationalDatabaseParameters where
  toPath = const "/"

instance ToQuery GetRelationalDatabaseParameters where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabaseParametersResponse' smart constructor.
data GetRelationalDatabaseParametersResponse = GetRelationalDatabaseParametersResponse'
  { _grdprrsNextPageToken ::
      !( Maybe
           Text
       ),
    _grdprrsParameters ::
      !( Maybe
           [RelationalDatabaseParameter]
       ),
    _grdprrsResponseStatus ::
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

-- | Creates a value of 'GetRelationalDatabaseParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdprrsNextPageToken' - The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseParameters@ request and specify the next page token using the @pageToken@ parameter.
--
-- * 'grdprrsParameters' - An object describing the result of your get relational database parameters request.
--
-- * 'grdprrsResponseStatus' - -- | The response status code.
getRelationalDatabaseParametersResponse ::
  -- | 'grdprrsResponseStatus'
  Int ->
  GetRelationalDatabaseParametersResponse
getRelationalDatabaseParametersResponse
  pResponseStatus_ =
    GetRelationalDatabaseParametersResponse'
      { _grdprrsNextPageToken =
          Nothing,
        _grdprrsParameters = Nothing,
        _grdprrsResponseStatus =
          pResponseStatus_
      }

-- | The token to advance to the next page of results from your request. A next page token is not returned if there are no more results to display. To get the next page of results, perform another @GetRelationalDatabaseParameters@ request and specify the next page token using the @pageToken@ parameter.
grdprrsNextPageToken :: Lens' GetRelationalDatabaseParametersResponse (Maybe Text)
grdprrsNextPageToken = lens _grdprrsNextPageToken (\s a -> s {_grdprrsNextPageToken = a})

-- | An object describing the result of your get relational database parameters request.
grdprrsParameters :: Lens' GetRelationalDatabaseParametersResponse [RelationalDatabaseParameter]
grdprrsParameters = lens _grdprrsParameters (\s a -> s {_grdprrsParameters = a}) . _Default . _Coerce

-- | -- | The response status code.
grdprrsResponseStatus :: Lens' GetRelationalDatabaseParametersResponse Int
grdprrsResponseStatus = lens _grdprrsResponseStatus (\s a -> s {_grdprrsResponseStatus = a})

instance
  NFData
    GetRelationalDatabaseParametersResponse
