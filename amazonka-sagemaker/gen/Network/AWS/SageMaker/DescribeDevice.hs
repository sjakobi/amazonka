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
-- Module      : Network.AWS.SageMaker.DescribeDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the device.
module Network.AWS.SageMaker.DescribeDevice
  ( -- * Creating a Request
    describeDevice,
    DescribeDevice,

    -- * Request Lenses
    desNextToken,
    desDeviceName,
    desDeviceFleetName,

    -- * Destructuring the Response
    describeDeviceResponse,
    DescribeDeviceResponse,

    -- * Response Lenses
    ddrdrsNextToken,
    ddrdrsLatestHeartbeat,
    ddrdrsMaxModels,
    ddrdrsDeviceARN,
    ddrdrsModels,
    ddrdrsIotThingName,
    ddrdrsDescription,
    ddrdrsResponseStatus,
    ddrdrsDeviceName,
    ddrdrsDeviceFleetName,
    ddrdrsRegistrationTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeDevice' smart constructor.
data DescribeDevice = DescribeDevice'
  { _desNextToken ::
      !(Maybe Text),
    _desDeviceName :: !Text,
    _desDeviceFleetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desNextToken' - Next token of device description.
--
-- * 'desDeviceName' - The unique ID of the device.
--
-- * 'desDeviceFleetName' - The name of the fleet the devices belong to.
describeDevice ::
  -- | 'desDeviceName'
  Text ->
  -- | 'desDeviceFleetName'
  Text ->
  DescribeDevice
describeDevice pDeviceName_ pDeviceFleetName_ =
  DescribeDevice'
    { _desNextToken = Nothing,
      _desDeviceName = pDeviceName_,
      _desDeviceFleetName = pDeviceFleetName_
    }

-- | Next token of device description.
desNextToken :: Lens' DescribeDevice (Maybe Text)
desNextToken = lens _desNextToken (\s a -> s {_desNextToken = a})

-- | The unique ID of the device.
desDeviceName :: Lens' DescribeDevice Text
desDeviceName = lens _desDeviceName (\s a -> s {_desDeviceName = a})

-- | The name of the fleet the devices belong to.
desDeviceFleetName :: Lens' DescribeDevice Text
desDeviceFleetName = lens _desDeviceFleetName (\s a -> s {_desDeviceFleetName = a})

instance AWSRequest DescribeDevice where
  type Rs DescribeDevice = DescribeDeviceResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeDeviceResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "LatestHeartbeat")
            <*> (x .?> "MaxModels")
            <*> (x .?> "DeviceArn")
            <*> (x .?> "Models" .!@ mempty)
            <*> (x .?> "IotThingName")
            <*> (x .?> "Description")
            <*> (pure (fromEnum s))
            <*> (x .:> "DeviceName")
            <*> (x .:> "DeviceFleetName")
            <*> (x .:> "RegistrationTime")
      )

instance Hashable DescribeDevice

instance NFData DescribeDevice

instance ToHeaders DescribeDevice where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeDevice" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDevice where
  toJSON DescribeDevice' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _desNextToken,
            Just ("DeviceName" .= _desDeviceName),
            Just ("DeviceFleetName" .= _desDeviceFleetName)
          ]
      )

instance ToPath DescribeDevice where
  toPath = const "/"

instance ToQuery DescribeDevice where
  toQuery = const mempty

-- | /See:/ 'describeDeviceResponse' smart constructor.
data DescribeDeviceResponse = DescribeDeviceResponse'
  { _ddrdrsNextToken ::
      !(Maybe Text),
    _ddrdrsLatestHeartbeat ::
      !(Maybe POSIX),
    _ddrdrsMaxModels ::
      !(Maybe Int),
    _ddrdrsDeviceARN ::
      !(Maybe Text),
    _ddrdrsModels ::
      !(Maybe [EdgeModel]),
    _ddrdrsIotThingName ::
      !(Maybe Text),
    _ddrdrsDescription ::
      !(Maybe Text),
    _ddrdrsResponseStatus ::
      !Int,
    _ddrdrsDeviceName ::
      !Text,
    _ddrdrsDeviceFleetName ::
      !Text,
    _ddrdrsRegistrationTime ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDeviceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrdrsNextToken' - The response from the last list when returning a list large enough to need tokening.
--
-- * 'ddrdrsLatestHeartbeat' - The last heartbeat received from the device.
--
-- * 'ddrdrsMaxModels' - The maximum number of models.
--
-- * 'ddrdrsDeviceARN' - The Amazon Resource Name (ARN) of the device.
--
-- * 'ddrdrsModels' - Models on the device.
--
-- * 'ddrdrsIotThingName' - The AWS Internet of Things (IoT) object thing name associated with the device.
--
-- * 'ddrdrsDescription' - A description of the device.
--
-- * 'ddrdrsResponseStatus' - -- | The response status code.
--
-- * 'ddrdrsDeviceName' - The unique identifier of the device.
--
-- * 'ddrdrsDeviceFleetName' - The name of the fleet the device belongs to.
--
-- * 'ddrdrsRegistrationTime' - The timestamp of the last registration or de-reregistration.
describeDeviceResponse ::
  -- | 'ddrdrsResponseStatus'
  Int ->
  -- | 'ddrdrsDeviceName'
  Text ->
  -- | 'ddrdrsDeviceFleetName'
  Text ->
  -- | 'ddrdrsRegistrationTime'
  UTCTime ->
  DescribeDeviceResponse
describeDeviceResponse
  pResponseStatus_
  pDeviceName_
  pDeviceFleetName_
  pRegistrationTime_ =
    DescribeDeviceResponse'
      { _ddrdrsNextToken = Nothing,
        _ddrdrsLatestHeartbeat = Nothing,
        _ddrdrsMaxModels = Nothing,
        _ddrdrsDeviceARN = Nothing,
        _ddrdrsModels = Nothing,
        _ddrdrsIotThingName = Nothing,
        _ddrdrsDescription = Nothing,
        _ddrdrsResponseStatus = pResponseStatus_,
        _ddrdrsDeviceName = pDeviceName_,
        _ddrdrsDeviceFleetName = pDeviceFleetName_,
        _ddrdrsRegistrationTime =
          _Time # pRegistrationTime_
      }

-- | The response from the last list when returning a list large enough to need tokening.
ddrdrsNextToken :: Lens' DescribeDeviceResponse (Maybe Text)
ddrdrsNextToken = lens _ddrdrsNextToken (\s a -> s {_ddrdrsNextToken = a})

-- | The last heartbeat received from the device.
ddrdrsLatestHeartbeat :: Lens' DescribeDeviceResponse (Maybe UTCTime)
ddrdrsLatestHeartbeat = lens _ddrdrsLatestHeartbeat (\s a -> s {_ddrdrsLatestHeartbeat = a}) . mapping _Time

-- | The maximum number of models.
ddrdrsMaxModels :: Lens' DescribeDeviceResponse (Maybe Int)
ddrdrsMaxModels = lens _ddrdrsMaxModels (\s a -> s {_ddrdrsMaxModels = a})

-- | The Amazon Resource Name (ARN) of the device.
ddrdrsDeviceARN :: Lens' DescribeDeviceResponse (Maybe Text)
ddrdrsDeviceARN = lens _ddrdrsDeviceARN (\s a -> s {_ddrdrsDeviceARN = a})

-- | Models on the device.
ddrdrsModels :: Lens' DescribeDeviceResponse [EdgeModel]
ddrdrsModels = lens _ddrdrsModels (\s a -> s {_ddrdrsModels = a}) . _Default . _Coerce

-- | The AWS Internet of Things (IoT) object thing name associated with the device.
ddrdrsIotThingName :: Lens' DescribeDeviceResponse (Maybe Text)
ddrdrsIotThingName = lens _ddrdrsIotThingName (\s a -> s {_ddrdrsIotThingName = a})

-- | A description of the device.
ddrdrsDescription :: Lens' DescribeDeviceResponse (Maybe Text)
ddrdrsDescription = lens _ddrdrsDescription (\s a -> s {_ddrdrsDescription = a})

-- | -- | The response status code.
ddrdrsResponseStatus :: Lens' DescribeDeviceResponse Int
ddrdrsResponseStatus = lens _ddrdrsResponseStatus (\s a -> s {_ddrdrsResponseStatus = a})

-- | The unique identifier of the device.
ddrdrsDeviceName :: Lens' DescribeDeviceResponse Text
ddrdrsDeviceName = lens _ddrdrsDeviceName (\s a -> s {_ddrdrsDeviceName = a})

-- | The name of the fleet the device belongs to.
ddrdrsDeviceFleetName :: Lens' DescribeDeviceResponse Text
ddrdrsDeviceFleetName = lens _ddrdrsDeviceFleetName (\s a -> s {_ddrdrsDeviceFleetName = a})

-- | The timestamp of the last registration or de-reregistration.
ddrdrsRegistrationTime :: Lens' DescribeDeviceResponse UTCTime
ddrdrsRegistrationTime = lens _ddrdrsRegistrationTime (\s a -> s {_ddrdrsRegistrationTime = a}) . _Time

instance NFData DescribeDeviceResponse
