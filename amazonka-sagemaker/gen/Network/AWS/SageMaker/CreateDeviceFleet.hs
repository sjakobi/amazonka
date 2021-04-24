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
-- Module      : Network.AWS.SageMaker.CreateDeviceFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device fleet.
module Network.AWS.SageMaker.CreateDeviceFleet
  ( -- * Creating a Request
    createDeviceFleet,
    CreateDeviceFleet,

    -- * Request Lenses
    cdfRoleARN,
    cdfTags,
    cdfDescription,
    cdfDeviceFleetName,
    cdfOutputConfig,

    -- * Destructuring the Response
    createDeviceFleetResponse,
    CreateDeviceFleetResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createDeviceFleet' smart constructor.
data CreateDeviceFleet = CreateDeviceFleet'
  { _cdfRoleARN ::
      !(Maybe Text),
    _cdfTags :: !(Maybe [Tag]),
    _cdfDescription :: !(Maybe Text),
    _cdfDeviceFleetName :: !Text,
    _cdfOutputConfig ::
      !EdgeOutputConfig
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDeviceFleet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdfRoleARN' - The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
--
-- * 'cdfTags' - Creates tags for the specified fleet.
--
-- * 'cdfDescription' - A description of the fleet.
--
-- * 'cdfDeviceFleetName' - The name of the fleet that the device belongs to.
--
-- * 'cdfOutputConfig' - The output configuration for storing sample data collected by the fleet.
createDeviceFleet ::
  -- | 'cdfDeviceFleetName'
  Text ->
  -- | 'cdfOutputConfig'
  EdgeOutputConfig ->
  CreateDeviceFleet
createDeviceFleet pDeviceFleetName_ pOutputConfig_ =
  CreateDeviceFleet'
    { _cdfRoleARN = Nothing,
      _cdfTags = Nothing,
      _cdfDescription = Nothing,
      _cdfDeviceFleetName = pDeviceFleetName_,
      _cdfOutputConfig = pOutputConfig_
    }

-- | The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
cdfRoleARN :: Lens' CreateDeviceFleet (Maybe Text)
cdfRoleARN = lens _cdfRoleARN (\s a -> s {_cdfRoleARN = a})

-- | Creates tags for the specified fleet.
cdfTags :: Lens' CreateDeviceFleet [Tag]
cdfTags = lens _cdfTags (\s a -> s {_cdfTags = a}) . _Default . _Coerce

-- | A description of the fleet.
cdfDescription :: Lens' CreateDeviceFleet (Maybe Text)
cdfDescription = lens _cdfDescription (\s a -> s {_cdfDescription = a})

-- | The name of the fleet that the device belongs to.
cdfDeviceFleetName :: Lens' CreateDeviceFleet Text
cdfDeviceFleetName = lens _cdfDeviceFleetName (\s a -> s {_cdfDeviceFleetName = a})

-- | The output configuration for storing sample data collected by the fleet.
cdfOutputConfig :: Lens' CreateDeviceFleet EdgeOutputConfig
cdfOutputConfig = lens _cdfOutputConfig (\s a -> s {_cdfOutputConfig = a})

instance AWSRequest CreateDeviceFleet where
  type Rs CreateDeviceFleet = CreateDeviceFleetResponse
  request = postJSON sageMaker
  response = receiveNull CreateDeviceFleetResponse'

instance Hashable CreateDeviceFleet

instance NFData CreateDeviceFleet

instance ToHeaders CreateDeviceFleet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateDeviceFleet" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDeviceFleet where
  toJSON CreateDeviceFleet' {..} =
    object
      ( catMaybes
          [ ("RoleArn" .=) <$> _cdfRoleARN,
            ("Tags" .=) <$> _cdfTags,
            ("Description" .=) <$> _cdfDescription,
            Just ("DeviceFleetName" .= _cdfDeviceFleetName),
            Just ("OutputConfig" .= _cdfOutputConfig)
          ]
      )

instance ToPath CreateDeviceFleet where
  toPath = const "/"

instance ToQuery CreateDeviceFleet where
  toQuery = const mempty

-- | /See:/ 'createDeviceFleetResponse' smart constructor.
data CreateDeviceFleetResponse = CreateDeviceFleetResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDeviceFleetResponse' with the minimum fields required to make a request.
createDeviceFleetResponse ::
  CreateDeviceFleetResponse
createDeviceFleetResponse =
  CreateDeviceFleetResponse'

instance NFData CreateDeviceFleetResponse
