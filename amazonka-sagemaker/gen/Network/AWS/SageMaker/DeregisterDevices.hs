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
-- Module      : Network.AWS.SageMaker.DeregisterDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deregisters the specified devices. After you deregister a device, you will need to re-register the devices.
module Network.AWS.SageMaker.DeregisterDevices
  ( -- * Creating a Request
    deregisterDevices,
    DeregisterDevices,

    -- * Request Lenses
    ddDeviceFleetName,
    ddDeviceNames,

    -- * Destructuring the Response
    deregisterDevicesResponse,
    DeregisterDevicesResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deregisterDevices' smart constructor.
data DeregisterDevices = DeregisterDevices'
  { _ddDeviceFleetName ::
      !Text,
    _ddDeviceNames :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeregisterDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDeviceFleetName' - The name of the fleet the devices belong to.
--
-- * 'ddDeviceNames' - The unique IDs of the devices.
deregisterDevices ::
  -- | 'ddDeviceFleetName'
  Text ->
  DeregisterDevices
deregisterDevices pDeviceFleetName_ =
  DeregisterDevices'
    { _ddDeviceFleetName =
        pDeviceFleetName_,
      _ddDeviceNames = mempty
    }

-- | The name of the fleet the devices belong to.
ddDeviceFleetName :: Lens' DeregisterDevices Text
ddDeviceFleetName = lens _ddDeviceFleetName (\s a -> s {_ddDeviceFleetName = a})

-- | The unique IDs of the devices.
ddDeviceNames :: Lens' DeregisterDevices [Text]
ddDeviceNames = lens _ddDeviceNames (\s a -> s {_ddDeviceNames = a}) . _Coerce

instance AWSRequest DeregisterDevices where
  type Rs DeregisterDevices = DeregisterDevicesResponse
  request = postJSON sageMaker
  response = receiveNull DeregisterDevicesResponse'

instance Hashable DeregisterDevices

instance NFData DeregisterDevices

instance ToHeaders DeregisterDevices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeregisterDevices" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeregisterDevices where
  toJSON DeregisterDevices' {..} =
    object
      ( catMaybes
          [ Just ("DeviceFleetName" .= _ddDeviceFleetName),
            Just ("DeviceNames" .= _ddDeviceNames)
          ]
      )

instance ToPath DeregisterDevices where
  toPath = const "/"

instance ToQuery DeregisterDevices where
  toQuery = const mempty

-- | /See:/ 'deregisterDevicesResponse' smart constructor.
data DeregisterDevicesResponse = DeregisterDevicesResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeregisterDevicesResponse' with the minimum fields required to make a request.
deregisterDevicesResponse ::
  DeregisterDevicesResponse
deregisterDevicesResponse =
  DeregisterDevicesResponse'

instance NFData DeregisterDevicesResponse
