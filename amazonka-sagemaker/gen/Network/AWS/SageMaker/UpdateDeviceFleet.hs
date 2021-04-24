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
-- Module      : Network.AWS.SageMaker.UpdateDeviceFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a fleet of devices.
module Network.AWS.SageMaker.UpdateDeviceFleet
  ( -- * Creating a Request
    updateDeviceFleet,
    UpdateDeviceFleet,

    -- * Request Lenses
    udfRoleARN,
    udfDescription,
    udfDeviceFleetName,
    udfOutputConfig,

    -- * Destructuring the Response
    updateDeviceFleetResponse,
    UpdateDeviceFleetResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateDeviceFleet' smart constructor.
data UpdateDeviceFleet = UpdateDeviceFleet'
  { _udfRoleARN ::
      !(Maybe Text),
    _udfDescription :: !(Maybe Text),
    _udfDeviceFleetName :: !Text,
    _udfOutputConfig ::
      !EdgeOutputConfig
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDeviceFleet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udfRoleARN' - The Amazon Resource Name (ARN) of the device.
--
-- * 'udfDescription' - Description of the fleet.
--
-- * 'udfDeviceFleetName' - The name of the fleet.
--
-- * 'udfOutputConfig' - Output configuration for storing sample data collected by the fleet.
updateDeviceFleet ::
  -- | 'udfDeviceFleetName'
  Text ->
  -- | 'udfOutputConfig'
  EdgeOutputConfig ->
  UpdateDeviceFleet
updateDeviceFleet pDeviceFleetName_ pOutputConfig_ =
  UpdateDeviceFleet'
    { _udfRoleARN = Nothing,
      _udfDescription = Nothing,
      _udfDeviceFleetName = pDeviceFleetName_,
      _udfOutputConfig = pOutputConfig_
    }

-- | The Amazon Resource Name (ARN) of the device.
udfRoleARN :: Lens' UpdateDeviceFleet (Maybe Text)
udfRoleARN = lens _udfRoleARN (\s a -> s {_udfRoleARN = a})

-- | Description of the fleet.
udfDescription :: Lens' UpdateDeviceFleet (Maybe Text)
udfDescription = lens _udfDescription (\s a -> s {_udfDescription = a})

-- | The name of the fleet.
udfDeviceFleetName :: Lens' UpdateDeviceFleet Text
udfDeviceFleetName = lens _udfDeviceFleetName (\s a -> s {_udfDeviceFleetName = a})

-- | Output configuration for storing sample data collected by the fleet.
udfOutputConfig :: Lens' UpdateDeviceFleet EdgeOutputConfig
udfOutputConfig = lens _udfOutputConfig (\s a -> s {_udfOutputConfig = a})

instance AWSRequest UpdateDeviceFleet where
  type Rs UpdateDeviceFleet = UpdateDeviceFleetResponse
  request = postJSON sageMaker
  response = receiveNull UpdateDeviceFleetResponse'

instance Hashable UpdateDeviceFleet

instance NFData UpdateDeviceFleet

instance ToHeaders UpdateDeviceFleet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateDeviceFleet" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDeviceFleet where
  toJSON UpdateDeviceFleet' {..} =
    object
      ( catMaybes
          [ ("RoleArn" .=) <$> _udfRoleARN,
            ("Description" .=) <$> _udfDescription,
            Just ("DeviceFleetName" .= _udfDeviceFleetName),
            Just ("OutputConfig" .= _udfOutputConfig)
          ]
      )

instance ToPath UpdateDeviceFleet where
  toPath = const "/"

instance ToQuery UpdateDeviceFleet where
  toQuery = const mempty

-- | /See:/ 'updateDeviceFleetResponse' smart constructor.
data UpdateDeviceFleetResponse = UpdateDeviceFleetResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateDeviceFleetResponse' with the minimum fields required to make a request.
updateDeviceFleetResponse ::
  UpdateDeviceFleetResponse
updateDeviceFleetResponse =
  UpdateDeviceFleetResponse'

instance NFData UpdateDeviceFleetResponse
