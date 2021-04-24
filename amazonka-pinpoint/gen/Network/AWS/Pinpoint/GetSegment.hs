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
-- Module      : Network.AWS.Pinpoint.GetSegment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the configuration, dimension, and other settings for a specific segment that's associated with an application.
module Network.AWS.Pinpoint.GetSegment
  ( -- * Creating a Request
    getSegment,
    GetSegment,

    -- * Request Lenses
    gssSegmentId,
    gssApplicationId,

    -- * Destructuring the Response
    getSegmentResponse,
    GetSegmentResponse,

    -- * Response Lenses
    gsrrsResponseStatus,
    gsrrsSegmentResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSegment' smart constructor.
data GetSegment = GetSegment'
  { _gssSegmentId :: !Text,
    _gssApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gssSegmentId' - The unique identifier for the segment.
--
-- * 'gssApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getSegment ::
  -- | 'gssSegmentId'
  Text ->
  -- | 'gssApplicationId'
  Text ->
  GetSegment
getSegment pSegmentId_ pApplicationId_ =
  GetSegment'
    { _gssSegmentId = pSegmentId_,
      _gssApplicationId = pApplicationId_
    }

-- | The unique identifier for the segment.
gssSegmentId :: Lens' GetSegment Text
gssSegmentId = lens _gssSegmentId (\s a -> s {_gssSegmentId = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gssApplicationId :: Lens' GetSegment Text
gssApplicationId = lens _gssApplicationId (\s a -> s {_gssApplicationId = a})

instance AWSRequest GetSegment where
  type Rs GetSegment = GetSegmentResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetSegmentResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetSegment

instance NFData GetSegment

instance ToHeaders GetSegment where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSegment where
  toPath GetSegment' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gssApplicationId,
        "/segments/",
        toBS _gssSegmentId
      ]

instance ToQuery GetSegment where
  toQuery = const mempty

-- | /See:/ 'getSegmentResponse' smart constructor.
data GetSegmentResponse = GetSegmentResponse'
  { _gsrrsResponseStatus ::
      !Int,
    _gsrrsSegmentResponse ::
      !SegmentResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSegmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrrsResponseStatus' - -- | The response status code.
--
-- * 'gsrrsSegmentResponse' - Undocumented member.
getSegmentResponse ::
  -- | 'gsrrsResponseStatus'
  Int ->
  -- | 'gsrrsSegmentResponse'
  SegmentResponse ->
  GetSegmentResponse
getSegmentResponse pResponseStatus_ pSegmentResponse_ =
  GetSegmentResponse'
    { _gsrrsResponseStatus =
        pResponseStatus_,
      _gsrrsSegmentResponse = pSegmentResponse_
    }

-- | -- | The response status code.
gsrrsResponseStatus :: Lens' GetSegmentResponse Int
gsrrsResponseStatus = lens _gsrrsResponseStatus (\s a -> s {_gsrrsResponseStatus = a})

-- | Undocumented member.
gsrrsSegmentResponse :: Lens' GetSegmentResponse SegmentResponse
gsrrsSegmentResponse = lens _gsrrsSegmentResponse (\s a -> s {_gsrrsSegmentResponse = a})

instance NFData GetSegmentResponse
