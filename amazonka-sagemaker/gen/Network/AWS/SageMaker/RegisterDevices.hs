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
-- Module      : Network.AWS.SageMaker.RegisterDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Register devices.
module Network.AWS.SageMaker.RegisterDevices
  ( -- * Creating a Request
    registerDevices,
    RegisterDevices,

    -- * Request Lenses
    rdTags,
    rdDeviceFleetName,
    rdDevices,

    -- * Destructuring the Response
    registerDevicesResponse,
    RegisterDevicesResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'registerDevices' smart constructor.
data RegisterDevices = RegisterDevices'
  { _rdTags ::
      !(Maybe [Tag]),
    _rdDeviceFleetName :: !Text,
    _rdDevices :: ![Device]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdTags' - The tags associated with devices.
--
-- * 'rdDeviceFleetName' - The name of the fleet.
--
-- * 'rdDevices' - A list of devices to register with SageMaker Edge Manager.
registerDevices ::
  -- | 'rdDeviceFleetName'
  Text ->
  RegisterDevices
registerDevices pDeviceFleetName_ =
  RegisterDevices'
    { _rdTags = Nothing,
      _rdDeviceFleetName = pDeviceFleetName_,
      _rdDevices = mempty
    }

-- | The tags associated with devices.
rdTags :: Lens' RegisterDevices [Tag]
rdTags = lens _rdTags (\s a -> s {_rdTags = a}) . _Default . _Coerce

-- | The name of the fleet.
rdDeviceFleetName :: Lens' RegisterDevices Text
rdDeviceFleetName = lens _rdDeviceFleetName (\s a -> s {_rdDeviceFleetName = a})

-- | A list of devices to register with SageMaker Edge Manager.
rdDevices :: Lens' RegisterDevices [Device]
rdDevices = lens _rdDevices (\s a -> s {_rdDevices = a}) . _Coerce

instance AWSRequest RegisterDevices where
  type Rs RegisterDevices = RegisterDevicesResponse
  request = postJSON sageMaker
  response = receiveNull RegisterDevicesResponse'

instance Hashable RegisterDevices

instance NFData RegisterDevices

instance ToHeaders RegisterDevices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.RegisterDevices" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RegisterDevices where
  toJSON RegisterDevices' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _rdTags,
            Just ("DeviceFleetName" .= _rdDeviceFleetName),
            Just ("Devices" .= _rdDevices)
          ]
      )

instance ToPath RegisterDevices where
  toPath = const "/"

instance ToQuery RegisterDevices where
  toQuery = const mempty

-- | /See:/ 'registerDevicesResponse' smart constructor.
data RegisterDevicesResponse = RegisterDevicesResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RegisterDevicesResponse' with the minimum fields required to make a request.
registerDevicesResponse ::
  RegisterDevicesResponse
registerDevicesResponse = RegisterDevicesResponse'

instance NFData RegisterDevicesResponse
