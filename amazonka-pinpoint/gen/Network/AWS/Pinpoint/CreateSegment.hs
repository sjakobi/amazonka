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
-- Module      : Network.AWS.Pinpoint.CreateSegment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
module Network.AWS.Pinpoint.CreateSegment
  ( -- * Creating a Request
    createSegment,
    CreateSegment,

    -- * Request Lenses
    csApplicationId,
    csWriteSegmentRequest,

    -- * Destructuring the Response
    createSegmentResponse,
    CreateSegmentResponse,

    -- * Response Lenses
    csrrsResponseStatus,
    csrrsSegmentResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSegment' smart constructor.
data CreateSegment = CreateSegment'
  { _csApplicationId ::
      !Text,
    _csWriteSegmentRequest ::
      !WriteSegmentRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'csWriteSegmentRequest' - Undocumented member.
createSegment ::
  -- | 'csApplicationId'
  Text ->
  -- | 'csWriteSegmentRequest'
  WriteSegmentRequest ->
  CreateSegment
createSegment pApplicationId_ pWriteSegmentRequest_ =
  CreateSegment'
    { _csApplicationId = pApplicationId_,
      _csWriteSegmentRequest = pWriteSegmentRequest_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
csApplicationId :: Lens' CreateSegment Text
csApplicationId = lens _csApplicationId (\s a -> s {_csApplicationId = a})

-- | Undocumented member.
csWriteSegmentRequest :: Lens' CreateSegment WriteSegmentRequest
csWriteSegmentRequest = lens _csWriteSegmentRequest (\s a -> s {_csWriteSegmentRequest = a})

instance AWSRequest CreateSegment where
  type Rs CreateSegment = CreateSegmentResponse
  request = postJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          CreateSegmentResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable CreateSegment

instance NFData CreateSegment

instance ToHeaders CreateSegment where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSegment where
  toJSON CreateSegment' {..} =
    object
      ( catMaybes
          [ Just
              ("WriteSegmentRequest" .= _csWriteSegmentRequest)
          ]
      )

instance ToPath CreateSegment where
  toPath CreateSegment' {..} =
    mconcat
      ["/v1/apps/", toBS _csApplicationId, "/segments"]

instance ToQuery CreateSegment where
  toQuery = const mempty

-- | /See:/ 'createSegmentResponse' smart constructor.
data CreateSegmentResponse = CreateSegmentResponse'
  { _csrrsResponseStatus ::
      !Int,
    _csrrsSegmentResponse ::
      !SegmentResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateSegmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsResponseStatus' - -- | The response status code.
--
-- * 'csrrsSegmentResponse' - Undocumented member.
createSegmentResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  -- | 'csrrsSegmentResponse'
  SegmentResponse ->
  CreateSegmentResponse
createSegmentResponse
  pResponseStatus_
  pSegmentResponse_ =
    CreateSegmentResponse'
      { _csrrsResponseStatus =
          pResponseStatus_,
        _csrrsSegmentResponse = pSegmentResponse_
      }

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateSegmentResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

-- | Undocumented member.
csrrsSegmentResponse :: Lens' CreateSegmentResponse SegmentResponse
csrrsSegmentResponse = lens _csrrsSegmentResponse (\s a -> s {_csrrsSegmentResponse = a})

instance NFData CreateSegmentResponse
