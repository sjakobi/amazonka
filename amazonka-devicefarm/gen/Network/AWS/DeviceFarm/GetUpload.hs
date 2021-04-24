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
-- Module      : Network.AWS.DeviceFarm.GetUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about an upload.
module Network.AWS.DeviceFarm.GetUpload
  ( -- * Creating a Request
    getUpload,
    GetUpload,

    -- * Request Lenses
    guArn,

    -- * Destructuring the Response
    getUploadResponse,
    GetUploadResponse,

    -- * Response Lenses
    gurrsUpload,
    gurrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the get upload operation.
--
--
--
-- /See:/ 'getUpload' smart constructor.
newtype GetUpload = GetUpload' {_guArn :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guArn' - The upload's ARN.
getUpload ::
  -- | 'guArn'
  Text ->
  GetUpload
getUpload pArn_ = GetUpload' {_guArn = pArn_}

-- | The upload's ARN.
guArn :: Lens' GetUpload Text
guArn = lens _guArn (\s a -> s {_guArn = a})

instance AWSRequest GetUpload where
  type Rs GetUpload = GetUploadResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          GetUploadResponse'
            <$> (x .?> "upload") <*> (pure (fromEnum s))
      )

instance Hashable GetUpload

instance NFData GetUpload

instance ToHeaders GetUpload where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.GetUpload" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetUpload where
  toJSON GetUpload' {..} =
    object (catMaybes [Just ("arn" .= _guArn)])

instance ToPath GetUpload where
  toPath = const "/"

instance ToQuery GetUpload where
  toQuery = const mempty

-- | Represents the result of a get upload request.
--
--
--
-- /See:/ 'getUploadResponse' smart constructor.
data GetUploadResponse = GetUploadResponse'
  { _gurrsUpload ::
      !(Maybe Upload),
    _gurrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gurrsUpload' - An app or a set of one or more tests to upload or that have been uploaded.
--
-- * 'gurrsResponseStatus' - -- | The response status code.
getUploadResponse ::
  -- | 'gurrsResponseStatus'
  Int ->
  GetUploadResponse
getUploadResponse pResponseStatus_ =
  GetUploadResponse'
    { _gurrsUpload = Nothing,
      _gurrsResponseStatus = pResponseStatus_
    }

-- | An app or a set of one or more tests to upload or that have been uploaded.
gurrsUpload :: Lens' GetUploadResponse (Maybe Upload)
gurrsUpload = lens _gurrsUpload (\s a -> s {_gurrsUpload = a})

-- | -- | The response status code.
gurrsResponseStatus :: Lens' GetUploadResponse Int
gurrsResponseStatus = lens _gurrsResponseStatus (\s a -> s {_gurrsResponseStatus = a})

instance NFData GetUploadResponse
