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
-- Module      : Network.AWS.Pinpoint.GetSegmentVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the configuration, dimension, and other settings for a specific version of a segment that's associated with an application.
module Network.AWS.Pinpoint.GetSegmentVersion
  ( -- * Creating a Request
    getSegmentVersion,
    GetSegmentVersion,

    -- * Request Lenses
    gsvsSegmentId,
    gsvsVersion,
    gsvsApplicationId,

    -- * Destructuring the Response
    getSegmentVersionResponse,
    GetSegmentVersionResponse,

    -- * Response Lenses
    gsvrsrsResponseStatus,
    gsvrsrsSegmentResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSegmentVersion' smart constructor.
data GetSegmentVersion = GetSegmentVersion'
  { _gsvsSegmentId ::
      !Text,
    _gsvsVersion :: !Text,
    _gsvsApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSegmentVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsvsSegmentId' - The unique identifier for the segment.
--
-- * 'gsvsVersion' - The unique version number (Version property) for the campaign version.
--
-- * 'gsvsApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getSegmentVersion ::
  -- | 'gsvsSegmentId'
  Text ->
  -- | 'gsvsVersion'
  Text ->
  -- | 'gsvsApplicationId'
  Text ->
  GetSegmentVersion
getSegmentVersion
  pSegmentId_
  pVersion_
  pApplicationId_ =
    GetSegmentVersion'
      { _gsvsSegmentId = pSegmentId_,
        _gsvsVersion = pVersion_,
        _gsvsApplicationId = pApplicationId_
      }

-- | The unique identifier for the segment.
gsvsSegmentId :: Lens' GetSegmentVersion Text
gsvsSegmentId = lens _gsvsSegmentId (\s a -> s {_gsvsSegmentId = a})

-- | The unique version number (Version property) for the campaign version.
gsvsVersion :: Lens' GetSegmentVersion Text
gsvsVersion = lens _gsvsVersion (\s a -> s {_gsvsVersion = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gsvsApplicationId :: Lens' GetSegmentVersion Text
gsvsApplicationId = lens _gsvsApplicationId (\s a -> s {_gsvsApplicationId = a})

instance AWSRequest GetSegmentVersion where
  type Rs GetSegmentVersion = GetSegmentVersionResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetSegmentVersionResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetSegmentVersion

instance NFData GetSegmentVersion

instance ToHeaders GetSegmentVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSegmentVersion where
  toPath GetSegmentVersion' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gsvsApplicationId,
        "/segments/",
        toBS _gsvsSegmentId,
        "/versions/",
        toBS _gsvsVersion
      ]

instance ToQuery GetSegmentVersion where
  toQuery = const mempty

-- | /See:/ 'getSegmentVersionResponse' smart constructor.
data GetSegmentVersionResponse = GetSegmentVersionResponse'
  { _gsvrsrsResponseStatus ::
      !Int,
    _gsvrsrsSegmentResponse ::
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

-- | Creates a value of 'GetSegmentVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsvrsrsResponseStatus' - -- | The response status code.
--
-- * 'gsvrsrsSegmentResponse' - Undocumented member.
getSegmentVersionResponse ::
  -- | 'gsvrsrsResponseStatus'
  Int ->
  -- | 'gsvrsrsSegmentResponse'
  SegmentResponse ->
  GetSegmentVersionResponse
getSegmentVersionResponse
  pResponseStatus_
  pSegmentResponse_ =
    GetSegmentVersionResponse'
      { _gsvrsrsResponseStatus =
          pResponseStatus_,
        _gsvrsrsSegmentResponse = pSegmentResponse_
      }

-- | -- | The response status code.
gsvrsrsResponseStatus :: Lens' GetSegmentVersionResponse Int
gsvrsrsResponseStatus = lens _gsvrsrsResponseStatus (\s a -> s {_gsvrsrsResponseStatus = a})

-- | Undocumented member.
gsvrsrsSegmentResponse :: Lens' GetSegmentVersionResponse SegmentResponse
gsvrsrsSegmentResponse = lens _gsvrsrsSegmentResponse (\s a -> s {_gsvrsrsSegmentResponse = a})

instance NFData GetSegmentVersionResponse
