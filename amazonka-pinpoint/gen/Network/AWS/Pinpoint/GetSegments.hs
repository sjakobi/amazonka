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
-- Module      : Network.AWS.Pinpoint.GetSegments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the configuration, dimension, and other settings for all the segments that are associated with an application.
module Network.AWS.Pinpoint.GetSegments
  ( -- * Creating a Request
    getSegments,
    GetSegments,

    -- * Request Lenses
    gsPageSize,
    gsToken,
    gsApplicationId,

    -- * Destructuring the Response
    getSegmentsResponse,
    GetSegmentsResponse,

    -- * Response Lenses
    getrsResponseStatus,
    getrsSegmentsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSegments' smart constructor.
data GetSegments = GetSegments'
  { _gsPageSize ::
      !(Maybe Text),
    _gsToken :: !(Maybe Text),
    _gsApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSegments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'gsToken' - The NextToken string that specifies which page of results to return in a paginated response.
--
-- * 'gsApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getSegments ::
  -- | 'gsApplicationId'
  Text ->
  GetSegments
getSegments pApplicationId_ =
  GetSegments'
    { _gsPageSize = Nothing,
      _gsToken = Nothing,
      _gsApplicationId = pApplicationId_
    }

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
gsPageSize :: Lens' GetSegments (Maybe Text)
gsPageSize = lens _gsPageSize (\s a -> s {_gsPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
gsToken :: Lens' GetSegments (Maybe Text)
gsToken = lens _gsToken (\s a -> s {_gsToken = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gsApplicationId :: Lens' GetSegments Text
gsApplicationId = lens _gsApplicationId (\s a -> s {_gsApplicationId = a})

instance AWSRequest GetSegments where
  type Rs GetSegments = GetSegmentsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetSegmentsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetSegments

instance NFData GetSegments

instance ToHeaders GetSegments where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSegments where
  toPath GetSegments' {..} =
    mconcat
      ["/v1/apps/", toBS _gsApplicationId, "/segments"]

instance ToQuery GetSegments where
  toQuery GetSegments' {..} =
    mconcat
      ["page-size" =: _gsPageSize, "token" =: _gsToken]

-- | /See:/ 'getSegmentsResponse' smart constructor.
data GetSegmentsResponse = GetSegmentsResponse'
  { _getrsResponseStatus ::
      !Int,
    _getrsSegmentsResponse ::
      !SegmentsResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSegmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getrsResponseStatus' - -- | The response status code.
--
-- * 'getrsSegmentsResponse' - Undocumented member.
getSegmentsResponse ::
  -- | 'getrsResponseStatus'
  Int ->
  -- | 'getrsSegmentsResponse'
  SegmentsResponse ->
  GetSegmentsResponse
getSegmentsResponse
  pResponseStatus_
  pSegmentsResponse_ =
    GetSegmentsResponse'
      { _getrsResponseStatus =
          pResponseStatus_,
        _getrsSegmentsResponse = pSegmentsResponse_
      }

-- | -- | The response status code.
getrsResponseStatus :: Lens' GetSegmentsResponse Int
getrsResponseStatus = lens _getrsResponseStatus (\s a -> s {_getrsResponseStatus = a})

-- | Undocumented member.
getrsSegmentsResponse :: Lens' GetSegmentsResponse SegmentsResponse
getrsSegmentsResponse = lens _getrsSegmentsResponse (\s a -> s {_getrsSegmentsResponse = a})

instance NFData GetSegmentsResponse
