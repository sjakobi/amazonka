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
-- Module      : Network.AWS.SageMaker.UpdateDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more devices in a fleet.
module Network.AWS.SageMaker.UpdateDevices
  ( -- * Creating a Request
    updateDevices,
    UpdateDevices,

    -- * Request Lenses
    udDeviceFleetName,
    udDevices,

    -- * Destructuring the Response
    updateDevicesResponse,
    UpdateDevicesResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateDevices' smart constructor.
data UpdateDevices = UpdateDevices'
  { _udDeviceFleetName ::
      !Text,
    _udDevices :: ![Device]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udDeviceFleetName' - The name of the fleet the devices belong to.
--
-- * 'udDevices' - List of devices to register with Edge Manager agent.
updateDevices ::
  -- | 'udDeviceFleetName'
  Text ->
  UpdateDevices
updateDevices pDeviceFleetName_ =
  UpdateDevices'
    { _udDeviceFleetName =
        pDeviceFleetName_,
      _udDevices = mempty
    }

-- | The name of the fleet the devices belong to.
udDeviceFleetName :: Lens' UpdateDevices Text
udDeviceFleetName = lens _udDeviceFleetName (\s a -> s {_udDeviceFleetName = a})

-- | List of devices to register with Edge Manager agent.
udDevices :: Lens' UpdateDevices [Device]
udDevices = lens _udDevices (\s a -> s {_udDevices = a}) . _Coerce

instance AWSRequest UpdateDevices where
  type Rs UpdateDevices = UpdateDevicesResponse
  request = postJSON sageMaker
  response = receiveNull UpdateDevicesResponse'

instance Hashable UpdateDevices

instance NFData UpdateDevices

instance ToHeaders UpdateDevices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateDevices" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDevices where
  toJSON UpdateDevices' {..} =
    object
      ( catMaybes
          [ Just ("DeviceFleetName" .= _udDeviceFleetName),
            Just ("Devices" .= _udDevices)
          ]
      )

instance ToPath UpdateDevices where
  toPath = const "/"

instance ToQuery UpdateDevices where
  toQuery = const mempty

-- | /See:/ 'updateDevicesResponse' smart constructor.
data UpdateDevicesResponse = UpdateDevicesResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateDevicesResponse' with the minimum fields required to make a request.
updateDevicesResponse ::
  UpdateDevicesResponse
updateDevicesResponse = UpdateDevicesResponse'

instance NFData UpdateDevicesResponse
