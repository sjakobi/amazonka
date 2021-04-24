{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DeviceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DeviceSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.EdgeModelSummary

-- | Summary of the device.
--
--
--
-- /See:/ 'deviceSummary' smart constructor.
data DeviceSummary = DeviceSummary'
  { _dsDeviceFleetName ::
      !(Maybe Text),
    _dsLatestHeartbeat :: !(Maybe POSIX),
    _dsRegistrationTime :: !(Maybe POSIX),
    _dsModels :: !(Maybe [EdgeModelSummary]),
    _dsIotThingName :: !(Maybe Text),
    _dsDescription :: !(Maybe Text),
    _dsDeviceName :: !Text,
    _dsDeviceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeviceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsDeviceFleetName' - The name of the fleet the device belongs to.
--
-- * 'dsLatestHeartbeat' - The last heartbeat received from the device.
--
-- * 'dsRegistrationTime' - The timestamp of the last registration or de-reregistration.
--
-- * 'dsModels' - Models on the device.
--
-- * 'dsIotThingName' - The AWS Internet of Things (IoT) object thing name associated with the device..
--
-- * 'dsDescription' - A description of the device.
--
-- * 'dsDeviceName' - The unique identifier of the device.
--
-- * 'dsDeviceARN' - Amazon Resource Name (ARN) of the device.
deviceSummary ::
  -- | 'dsDeviceName'
  Text ->
  -- | 'dsDeviceARN'
  Text ->
  DeviceSummary
deviceSummary pDeviceName_ pDeviceARN_ =
  DeviceSummary'
    { _dsDeviceFleetName = Nothing,
      _dsLatestHeartbeat = Nothing,
      _dsRegistrationTime = Nothing,
      _dsModels = Nothing,
      _dsIotThingName = Nothing,
      _dsDescription = Nothing,
      _dsDeviceName = pDeviceName_,
      _dsDeviceARN = pDeviceARN_
    }

-- | The name of the fleet the device belongs to.
dsDeviceFleetName :: Lens' DeviceSummary (Maybe Text)
dsDeviceFleetName = lens _dsDeviceFleetName (\s a -> s {_dsDeviceFleetName = a})

-- | The last heartbeat received from the device.
dsLatestHeartbeat :: Lens' DeviceSummary (Maybe UTCTime)
dsLatestHeartbeat = lens _dsLatestHeartbeat (\s a -> s {_dsLatestHeartbeat = a}) . mapping _Time

-- | The timestamp of the last registration or de-reregistration.
dsRegistrationTime :: Lens' DeviceSummary (Maybe UTCTime)
dsRegistrationTime = lens _dsRegistrationTime (\s a -> s {_dsRegistrationTime = a}) . mapping _Time

-- | Models on the device.
dsModels :: Lens' DeviceSummary [EdgeModelSummary]
dsModels = lens _dsModels (\s a -> s {_dsModels = a}) . _Default . _Coerce

-- | The AWS Internet of Things (IoT) object thing name associated with the device..
dsIotThingName :: Lens' DeviceSummary (Maybe Text)
dsIotThingName = lens _dsIotThingName (\s a -> s {_dsIotThingName = a})

-- | A description of the device.
dsDescription :: Lens' DeviceSummary (Maybe Text)
dsDescription = lens _dsDescription (\s a -> s {_dsDescription = a})

-- | The unique identifier of the device.
dsDeviceName :: Lens' DeviceSummary Text
dsDeviceName = lens _dsDeviceName (\s a -> s {_dsDeviceName = a})

-- | Amazon Resource Name (ARN) of the device.
dsDeviceARN :: Lens' DeviceSummary Text
dsDeviceARN = lens _dsDeviceARN (\s a -> s {_dsDeviceARN = a})

instance FromJSON DeviceSummary where
  parseJSON =
    withObject
      "DeviceSummary"
      ( \x ->
          DeviceSummary'
            <$> (x .:? "DeviceFleetName")
            <*> (x .:? "LatestHeartbeat")
            <*> (x .:? "RegistrationTime")
            <*> (x .:? "Models" .!= mempty)
            <*> (x .:? "IotThingName")
            <*> (x .:? "Description")
            <*> (x .: "DeviceName")
            <*> (x .: "DeviceArn")
      )

instance Hashable DeviceSummary

instance NFData DeviceSummary
