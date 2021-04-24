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
-- Module      : Network.AWS.SageMaker.DescribeDeviceFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A description of the fleet the device belongs to.
module Network.AWS.SageMaker.DescribeDeviceFleet
  ( -- * Creating a Request
    describeDeviceFleet,
    DescribeDeviceFleet,

    -- * Request Lenses
    dDeviceFleetName,

    -- * Destructuring the Response
    describeDeviceFleetResponse,
    DescribeDeviceFleetResponse,

    -- * Response Lenses
    ddfrrsRoleARN,
    ddfrrsIotRoleAlias,
    ddfrrsDescription,
    ddfrrsResponseStatus,
    ddfrrsDeviceFleetName,
    ddfrrsDeviceFleetARN,
    ddfrrsOutputConfig,
    ddfrrsCreationTime,
    ddfrrsLastModifiedTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeDeviceFleet' smart constructor.
newtype DescribeDeviceFleet = DescribeDeviceFleet'
  { _dDeviceFleetName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDeviceFleet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDeviceFleetName' - The name of the fleet.
describeDeviceFleet ::
  -- | 'dDeviceFleetName'
  Text ->
  DescribeDeviceFleet
describeDeviceFleet pDeviceFleetName_ =
  DescribeDeviceFleet'
    { _dDeviceFleetName =
        pDeviceFleetName_
    }

-- | The name of the fleet.
dDeviceFleetName :: Lens' DescribeDeviceFleet Text
dDeviceFleetName = lens _dDeviceFleetName (\s a -> s {_dDeviceFleetName = a})

instance AWSRequest DescribeDeviceFleet where
  type
    Rs DescribeDeviceFleet =
      DescribeDeviceFleetResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeDeviceFleetResponse'
            <$> (x .?> "RoleArn")
            <*> (x .?> "IotRoleAlias")
            <*> (x .?> "Description")
            <*> (pure (fromEnum s))
            <*> (x .:> "DeviceFleetName")
            <*> (x .:> "DeviceFleetArn")
            <*> (x .:> "OutputConfig")
            <*> (x .:> "CreationTime")
            <*> (x .:> "LastModifiedTime")
      )

instance Hashable DescribeDeviceFleet

instance NFData DescribeDeviceFleet

instance ToHeaders DescribeDeviceFleet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeDeviceFleet" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDeviceFleet where
  toJSON DescribeDeviceFleet' {..} =
    object
      ( catMaybes
          [Just ("DeviceFleetName" .= _dDeviceFleetName)]
      )

instance ToPath DescribeDeviceFleet where
  toPath = const "/"

instance ToQuery DescribeDeviceFleet where
  toQuery = const mempty

-- | /See:/ 'describeDeviceFleetResponse' smart constructor.
data DescribeDeviceFleetResponse = DescribeDeviceFleetResponse'
  { _ddfrrsRoleARN ::
      !(Maybe Text),
    _ddfrrsIotRoleAlias ::
      !(Maybe Text),
    _ddfrrsDescription ::
      !(Maybe Text),
    _ddfrrsResponseStatus ::
      !Int,
    _ddfrrsDeviceFleetName ::
      !Text,
    _ddfrrsDeviceFleetARN ::
      !Text,
    _ddfrrsOutputConfig ::
      !EdgeOutputConfig,
    _ddfrrsCreationTime ::
      !POSIX,
    _ddfrrsLastModifiedTime ::
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

-- | Creates a value of 'DescribeDeviceFleetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddfrrsRoleARN' - The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
--
-- * 'ddfrrsIotRoleAlias' - The Amazon Resource Name (ARN) alias created in AWS Internet of Things (IoT).
--
-- * 'ddfrrsDescription' - A description of the fleet.
--
-- * 'ddfrrsResponseStatus' - -- | The response status code.
--
-- * 'ddfrrsDeviceFleetName' - The name of the fleet.
--
-- * 'ddfrrsDeviceFleetARN' - The The Amazon Resource Name (ARN) of the fleet.
--
-- * 'ddfrrsOutputConfig' - The output configuration for storing sampled data.
--
-- * 'ddfrrsCreationTime' - Timestamp of when the device fleet was created.
--
-- * 'ddfrrsLastModifiedTime' - Timestamp of when the device fleet was last updated.
describeDeviceFleetResponse ::
  -- | 'ddfrrsResponseStatus'
  Int ->
  -- | 'ddfrrsDeviceFleetName'
  Text ->
  -- | 'ddfrrsDeviceFleetARN'
  Text ->
  -- | 'ddfrrsOutputConfig'
  EdgeOutputConfig ->
  -- | 'ddfrrsCreationTime'
  UTCTime ->
  -- | 'ddfrrsLastModifiedTime'
  UTCTime ->
  DescribeDeviceFleetResponse
describeDeviceFleetResponse
  pResponseStatus_
  pDeviceFleetName_
  pDeviceFleetARN_
  pOutputConfig_
  pCreationTime_
  pLastModifiedTime_ =
    DescribeDeviceFleetResponse'
      { _ddfrrsRoleARN =
          Nothing,
        _ddfrrsIotRoleAlias = Nothing,
        _ddfrrsDescription = Nothing,
        _ddfrrsResponseStatus = pResponseStatus_,
        _ddfrrsDeviceFleetName = pDeviceFleetName_,
        _ddfrrsDeviceFleetARN = pDeviceFleetARN_,
        _ddfrrsOutputConfig = pOutputConfig_,
        _ddfrrsCreationTime = _Time # pCreationTime_,
        _ddfrrsLastModifiedTime =
          _Time # pLastModifiedTime_
      }

-- | The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
ddfrrsRoleARN :: Lens' DescribeDeviceFleetResponse (Maybe Text)
ddfrrsRoleARN = lens _ddfrrsRoleARN (\s a -> s {_ddfrrsRoleARN = a})

-- | The Amazon Resource Name (ARN) alias created in AWS Internet of Things (IoT).
ddfrrsIotRoleAlias :: Lens' DescribeDeviceFleetResponse (Maybe Text)
ddfrrsIotRoleAlias = lens _ddfrrsIotRoleAlias (\s a -> s {_ddfrrsIotRoleAlias = a})

-- | A description of the fleet.
ddfrrsDescription :: Lens' DescribeDeviceFleetResponse (Maybe Text)
ddfrrsDescription = lens _ddfrrsDescription (\s a -> s {_ddfrrsDescription = a})

-- | -- | The response status code.
ddfrrsResponseStatus :: Lens' DescribeDeviceFleetResponse Int
ddfrrsResponseStatus = lens _ddfrrsResponseStatus (\s a -> s {_ddfrrsResponseStatus = a})

-- | The name of the fleet.
ddfrrsDeviceFleetName :: Lens' DescribeDeviceFleetResponse Text
ddfrrsDeviceFleetName = lens _ddfrrsDeviceFleetName (\s a -> s {_ddfrrsDeviceFleetName = a})

-- | The The Amazon Resource Name (ARN) of the fleet.
ddfrrsDeviceFleetARN :: Lens' DescribeDeviceFleetResponse Text
ddfrrsDeviceFleetARN = lens _ddfrrsDeviceFleetARN (\s a -> s {_ddfrrsDeviceFleetARN = a})

-- | The output configuration for storing sampled data.
ddfrrsOutputConfig :: Lens' DescribeDeviceFleetResponse EdgeOutputConfig
ddfrrsOutputConfig = lens _ddfrrsOutputConfig (\s a -> s {_ddfrrsOutputConfig = a})

-- | Timestamp of when the device fleet was created.
ddfrrsCreationTime :: Lens' DescribeDeviceFleetResponse UTCTime
ddfrrsCreationTime = lens _ddfrrsCreationTime (\s a -> s {_ddfrrsCreationTime = a}) . _Time

-- | Timestamp of when the device fleet was last updated.
ddfrrsLastModifiedTime :: Lens' DescribeDeviceFleetResponse UTCTime
ddfrrsLastModifiedTime = lens _ddfrrsLastModifiedTime (\s a -> s {_ddfrrsLastModifiedTime = a}) . _Time

instance NFData DescribeDeviceFleetResponse
