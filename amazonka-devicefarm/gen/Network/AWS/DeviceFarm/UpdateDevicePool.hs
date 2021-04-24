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
-- Module      : Network.AWS.DeviceFarm.UpdateDevicePool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).
module Network.AWS.DeviceFarm.UpdateDevicePool
  ( -- * Creating a Request
    updateDevicePool,
    UpdateDevicePool,

    -- * Request Lenses
    udpClearMaxDevices,
    udpRules,
    udpName,
    udpMaxDevices,
    udpDescription,
    udpArn,

    -- * Destructuring the Response
    updateDevicePoolResponse,
    UpdateDevicePoolResponse,

    -- * Response Lenses
    udprrsDevicePool,
    udprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the update device pool operation.
--
--
--
-- /See:/ 'updateDevicePool' smart constructor.
data UpdateDevicePool = UpdateDevicePool'
  { _udpClearMaxDevices ::
      !(Maybe Bool),
    _udpRules :: !(Maybe [Rule]),
    _udpName :: !(Maybe Text),
    _udpMaxDevices :: !(Maybe Int),
    _udpDescription :: !(Maybe Text),
    _udpArn :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDevicePool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udpClearMaxDevices' - Sets whether the @maxDevices@ parameter applies to your device pool. If you set this parameter to @true@ , the @maxDevices@ parameter does not apply, and Device Farm does not limit the number of devices that it adds to your device pool. In this case, Device Farm adds all available devices that meet the criteria specified in the @rules@ parameter. If you use this parameter in your request, you cannot use the @maxDevices@ parameter in the same request.
--
-- * 'udpRules' - Represents the rules to modify for the device pool. Updating rules is optional. If you update rules for your request, the update replaces the existing rules.
--
-- * 'udpName' - A string that represents the name of the device pool to update.
--
-- * 'udpMaxDevices' - The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are available and that meet the criteria that you assign for the @rules@ parameter. Depending on how many devices meet these constraints, your device pool might contain fewer devices than the value for this parameter. By specifying the maximum number of devices, you can control the costs that you incur by running tests. If you use this parameter in your request, you cannot use the @clearMaxDevices@ parameter in the same request.
--
-- * 'udpDescription' - A description of the device pool to update.
--
-- * 'udpArn' - The Amazon Resource Name (ARN) of the Device Farm device pool to update.
updateDevicePool ::
  -- | 'udpArn'
  Text ->
  UpdateDevicePool
updateDevicePool pArn_ =
  UpdateDevicePool'
    { _udpClearMaxDevices = Nothing,
      _udpRules = Nothing,
      _udpName = Nothing,
      _udpMaxDevices = Nothing,
      _udpDescription = Nothing,
      _udpArn = pArn_
    }

-- | Sets whether the @maxDevices@ parameter applies to your device pool. If you set this parameter to @true@ , the @maxDevices@ parameter does not apply, and Device Farm does not limit the number of devices that it adds to your device pool. In this case, Device Farm adds all available devices that meet the criteria specified in the @rules@ parameter. If you use this parameter in your request, you cannot use the @maxDevices@ parameter in the same request.
udpClearMaxDevices :: Lens' UpdateDevicePool (Maybe Bool)
udpClearMaxDevices = lens _udpClearMaxDevices (\s a -> s {_udpClearMaxDevices = a})

-- | Represents the rules to modify for the device pool. Updating rules is optional. If you update rules for your request, the update replaces the existing rules.
udpRules :: Lens' UpdateDevicePool [Rule]
udpRules = lens _udpRules (\s a -> s {_udpRules = a}) . _Default . _Coerce

-- | A string that represents the name of the device pool to update.
udpName :: Lens' UpdateDevicePool (Maybe Text)
udpName = lens _udpName (\s a -> s {_udpName = a})

-- | The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are available and that meet the criteria that you assign for the @rules@ parameter. Depending on how many devices meet these constraints, your device pool might contain fewer devices than the value for this parameter. By specifying the maximum number of devices, you can control the costs that you incur by running tests. If you use this parameter in your request, you cannot use the @clearMaxDevices@ parameter in the same request.
udpMaxDevices :: Lens' UpdateDevicePool (Maybe Int)
udpMaxDevices = lens _udpMaxDevices (\s a -> s {_udpMaxDevices = a})

-- | A description of the device pool to update.
udpDescription :: Lens' UpdateDevicePool (Maybe Text)
udpDescription = lens _udpDescription (\s a -> s {_udpDescription = a})

-- | The Amazon Resource Name (ARN) of the Device Farm device pool to update.
udpArn :: Lens' UpdateDevicePool Text
udpArn = lens _udpArn (\s a -> s {_udpArn = a})

instance AWSRequest UpdateDevicePool where
  type Rs UpdateDevicePool = UpdateDevicePoolResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          UpdateDevicePoolResponse'
            <$> (x .?> "devicePool") <*> (pure (fromEnum s))
      )

instance Hashable UpdateDevicePool

instance NFData UpdateDevicePool

instance ToHeaders UpdateDevicePool where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.UpdateDevicePool" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDevicePool where
  toJSON UpdateDevicePool' {..} =
    object
      ( catMaybes
          [ ("clearMaxDevices" .=) <$> _udpClearMaxDevices,
            ("rules" .=) <$> _udpRules,
            ("name" .=) <$> _udpName,
            ("maxDevices" .=) <$> _udpMaxDevices,
            ("description" .=) <$> _udpDescription,
            Just ("arn" .= _udpArn)
          ]
      )

instance ToPath UpdateDevicePool where
  toPath = const "/"

instance ToQuery UpdateDevicePool where
  toQuery = const mempty

-- | Represents the result of an update device pool request.
--
--
--
-- /See:/ 'updateDevicePoolResponse' smart constructor.
data UpdateDevicePoolResponse = UpdateDevicePoolResponse'
  { _udprrsDevicePool ::
      !(Maybe DevicePool),
    _udprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateDevicePoolResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udprrsDevicePool' - The device pool you just updated.
--
-- * 'udprrsResponseStatus' - -- | The response status code.
updateDevicePoolResponse ::
  -- | 'udprrsResponseStatus'
  Int ->
  UpdateDevicePoolResponse
updateDevicePoolResponse pResponseStatus_ =
  UpdateDevicePoolResponse'
    { _udprrsDevicePool =
        Nothing,
      _udprrsResponseStatus = pResponseStatus_
    }

-- | The device pool you just updated.
udprrsDevicePool :: Lens' UpdateDevicePoolResponse (Maybe DevicePool)
udprrsDevicePool = lens _udprrsDevicePool (\s a -> s {_udprrsDevicePool = a})

-- | -- | The response status code.
udprrsResponseStatus :: Lens' UpdateDevicePoolResponse Int
udprrsResponseStatus = lens _udprrsResponseStatus (\s a -> s {_udprrsResponseStatus = a})

instance NFData UpdateDevicePoolResponse
