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
-- Module      : Network.AWS.DeviceFarm.UpdateUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an uploaded test spec.
module Network.AWS.DeviceFarm.UpdateUpload
  ( -- * Creating a Request
    updateUpload,
    UpdateUpload,

    -- * Request Lenses
    uuContentType,
    uuEditContent,
    uuName,
    uuArn,

    -- * Destructuring the Response
    updateUploadResponse,
    UpdateUploadResponse,

    -- * Response Lenses
    uurrsUpload,
    uurrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateUpload' smart constructor.
data UpdateUpload = UpdateUpload'
  { _uuContentType ::
      !(Maybe Text),
    _uuEditContent :: !(Maybe Bool),
    _uuName :: !(Maybe Text),
    _uuArn :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuContentType' - The upload's content type (for example, @application/x-yaml@ ).
--
-- * 'uuEditContent' - Set to true if the YAML file has changed and must be updated. Otherwise, set to false.
--
-- * 'uuName' - The upload's test spec file name. The name must not contain any forward slashes (/). The test spec file name must end with the @.yaml@ or @.yml@ file extension.
--
-- * 'uuArn' - The Amazon Resource Name (ARN) of the uploaded test spec.
updateUpload ::
  -- | 'uuArn'
  Text ->
  UpdateUpload
updateUpload pArn_ =
  UpdateUpload'
    { _uuContentType = Nothing,
      _uuEditContent = Nothing,
      _uuName = Nothing,
      _uuArn = pArn_
    }

-- | The upload's content type (for example, @application/x-yaml@ ).
uuContentType :: Lens' UpdateUpload (Maybe Text)
uuContentType = lens _uuContentType (\s a -> s {_uuContentType = a})

-- | Set to true if the YAML file has changed and must be updated. Otherwise, set to false.
uuEditContent :: Lens' UpdateUpload (Maybe Bool)
uuEditContent = lens _uuEditContent (\s a -> s {_uuEditContent = a})

-- | The upload's test spec file name. The name must not contain any forward slashes (/). The test spec file name must end with the @.yaml@ or @.yml@ file extension.
uuName :: Lens' UpdateUpload (Maybe Text)
uuName = lens _uuName (\s a -> s {_uuName = a})

-- | The Amazon Resource Name (ARN) of the uploaded test spec.
uuArn :: Lens' UpdateUpload Text
uuArn = lens _uuArn (\s a -> s {_uuArn = a})

instance AWSRequest UpdateUpload where
  type Rs UpdateUpload = UpdateUploadResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          UpdateUploadResponse'
            <$> (x .?> "upload") <*> (pure (fromEnum s))
      )

instance Hashable UpdateUpload

instance NFData UpdateUpload

instance ToHeaders UpdateUpload where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.UpdateUpload" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateUpload where
  toJSON UpdateUpload' {..} =
    object
      ( catMaybes
          [ ("contentType" .=) <$> _uuContentType,
            ("editContent" .=) <$> _uuEditContent,
            ("name" .=) <$> _uuName,
            Just ("arn" .= _uuArn)
          ]
      )

instance ToPath UpdateUpload where
  toPath = const "/"

instance ToQuery UpdateUpload where
  toQuery = const mempty

-- | /See:/ 'updateUploadResponse' smart constructor.
data UpdateUploadResponse = UpdateUploadResponse'
  { _uurrsUpload ::
      !(Maybe Upload),
    _uurrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uurrsUpload' - A test spec uploaded to Device Farm.
--
-- * 'uurrsResponseStatus' - -- | The response status code.
updateUploadResponse ::
  -- | 'uurrsResponseStatus'
  Int ->
  UpdateUploadResponse
updateUploadResponse pResponseStatus_ =
  UpdateUploadResponse'
    { _uurrsUpload = Nothing,
      _uurrsResponseStatus = pResponseStatus_
    }

-- | A test spec uploaded to Device Farm.
uurrsUpload :: Lens' UpdateUploadResponse (Maybe Upload)
uurrsUpload = lens _uurrsUpload (\s a -> s {_uurrsUpload = a})

-- | -- | The response status code.
uurrsResponseStatus :: Lens' UpdateUploadResponse Int
uurrsResponseStatus = lens _uurrsResponseStatus (\s a -> s {_uurrsResponseStatus = a})

instance NFData UpdateUploadResponse
