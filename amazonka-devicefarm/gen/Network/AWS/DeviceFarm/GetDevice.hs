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
-- Module      : Network.AWS.DeviceFarm.GetDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a unique device type.
module Network.AWS.DeviceFarm.GetDevice
  ( -- * Creating a Request
    getDevice,
    GetDevice,

    -- * Request Lenses
    gdArn,

    -- * Destructuring the Response
    getDeviceResponse,
    GetDeviceResponse,

    -- * Response Lenses
    gdrrsDevice,
    gdrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the get device request.
--
--
--
-- /See:/ 'getDevice' smart constructor.
newtype GetDevice = GetDevice' {_gdArn :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdArn' - The device type's ARN.
getDevice ::
  -- | 'gdArn'
  Text ->
  GetDevice
getDevice pArn_ = GetDevice' {_gdArn = pArn_}

-- | The device type's ARN.
gdArn :: Lens' GetDevice Text
gdArn = lens _gdArn (\s a -> s {_gdArn = a})

instance AWSRequest GetDevice where
  type Rs GetDevice = GetDeviceResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          GetDeviceResponse'
            <$> (x .?> "device") <*> (pure (fromEnum s))
      )

instance Hashable GetDevice

instance NFData GetDevice

instance ToHeaders GetDevice where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.GetDevice" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDevice where
  toJSON GetDevice' {..} =
    object (catMaybes [Just ("arn" .= _gdArn)])

instance ToPath GetDevice where
  toPath = const "/"

instance ToQuery GetDevice where
  toQuery = const mempty

-- | Represents the result of a get device request.
--
--
--
-- /See:/ 'getDeviceResponse' smart constructor.
data GetDeviceResponse = GetDeviceResponse'
  { _gdrrsDevice ::
      !(Maybe Device),
    _gdrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDeviceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrrsDevice' - An object that contains information about the requested device.
--
-- * 'gdrrsResponseStatus' - -- | The response status code.
getDeviceResponse ::
  -- | 'gdrrsResponseStatus'
  Int ->
  GetDeviceResponse
getDeviceResponse pResponseStatus_ =
  GetDeviceResponse'
    { _gdrrsDevice = Nothing,
      _gdrrsResponseStatus = pResponseStatus_
    }

-- | An object that contains information about the requested device.
gdrrsDevice :: Lens' GetDeviceResponse (Maybe Device)
gdrrsDevice = lens _gdrrsDevice (\s a -> s {_gdrrsDevice = a})

-- | -- | The response status code.
gdrrsResponseStatus :: Lens' GetDeviceResponse Int
gdrrsResponseStatus = lens _gdrrsResponseStatus (\s a -> s {_gdrrsResponseStatus = a})

instance NFData GetDeviceResponse
