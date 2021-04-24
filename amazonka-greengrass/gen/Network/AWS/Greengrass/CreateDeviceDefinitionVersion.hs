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
-- Module      : Network.AWS.Greengrass.CreateDeviceDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a device definition that has already been defined.
module Network.AWS.Greengrass.CreateDeviceDefinitionVersion
  ( -- * Creating a Request
    createDeviceDefinitionVersion,
    CreateDeviceDefinitionVersion,

    -- * Request Lenses
    cddvDevices,
    cddvAmznClientToken,
    cddvDeviceDefinitionId,

    -- * Destructuring the Response
    createDeviceDefinitionVersionResponse,
    CreateDeviceDefinitionVersionResponse,

    -- * Response Lenses
    cddvrrsCreationTimestamp,
    cddvrrsARN,
    cddvrrsId,
    cddvrrsVersion,
    cddvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDeviceDefinitionVersion' smart constructor.
data CreateDeviceDefinitionVersion = CreateDeviceDefinitionVersion'
  { _cddvDevices ::
      !( Maybe
           [Device]
       ),
    _cddvAmznClientToken ::
      !( Maybe
           Text
       ),
    _cddvDeviceDefinitionId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDeviceDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddvDevices' - A list of devices in the definition version.
--
-- * 'cddvAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'cddvDeviceDefinitionId' - The ID of the device definition.
createDeviceDefinitionVersion ::
  -- | 'cddvDeviceDefinitionId'
  Text ->
  CreateDeviceDefinitionVersion
createDeviceDefinitionVersion pDeviceDefinitionId_ =
  CreateDeviceDefinitionVersion'
    { _cddvDevices =
        Nothing,
      _cddvAmznClientToken = Nothing,
      _cddvDeviceDefinitionId =
        pDeviceDefinitionId_
    }

-- | A list of devices in the definition version.
cddvDevices :: Lens' CreateDeviceDefinitionVersion [Device]
cddvDevices = lens _cddvDevices (\s a -> s {_cddvDevices = a}) . _Default . _Coerce

-- | A client token used to correlate requests and responses.
cddvAmznClientToken :: Lens' CreateDeviceDefinitionVersion (Maybe Text)
cddvAmznClientToken = lens _cddvAmznClientToken (\s a -> s {_cddvAmznClientToken = a})

-- | The ID of the device definition.
cddvDeviceDefinitionId :: Lens' CreateDeviceDefinitionVersion Text
cddvDeviceDefinitionId = lens _cddvDeviceDefinitionId (\s a -> s {_cddvDeviceDefinitionId = a})

instance AWSRequest CreateDeviceDefinitionVersion where
  type
    Rs CreateDeviceDefinitionVersion =
      CreateDeviceDefinitionVersionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateDeviceDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDeviceDefinitionVersion

instance NFData CreateDeviceDefinitionVersion

instance ToHeaders CreateDeviceDefinitionVersion where
  toHeaders CreateDeviceDefinitionVersion' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cddvAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateDeviceDefinitionVersion where
  toJSON CreateDeviceDefinitionVersion' {..} =
    object
      (catMaybes [("Devices" .=) <$> _cddvDevices])

instance ToPath CreateDeviceDefinitionVersion where
  toPath CreateDeviceDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/devices/",
        toBS _cddvDeviceDefinitionId,
        "/versions"
      ]

instance ToQuery CreateDeviceDefinitionVersion where
  toQuery = const mempty

-- | /See:/ 'createDeviceDefinitionVersionResponse' smart constructor.
data CreateDeviceDefinitionVersionResponse = CreateDeviceDefinitionVersionResponse'
  { _cddvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _cddvrrsARN ::
      !( Maybe
           Text
       ),
    _cddvrrsId ::
      !( Maybe
           Text
       ),
    _cddvrrsVersion ::
      !( Maybe
           Text
       ),
    _cddvrrsResponseStatus ::
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

-- | Creates a value of 'CreateDeviceDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'cddvrrsARN' - The ARN of the version.
--
-- * 'cddvrrsId' - The ID of the parent definition that the version is associated with.
--
-- * 'cddvrrsVersion' - The ID of the version.
--
-- * 'cddvrrsResponseStatus' - -- | The response status code.
createDeviceDefinitionVersionResponse ::
  -- | 'cddvrrsResponseStatus'
  Int ->
  CreateDeviceDefinitionVersionResponse
createDeviceDefinitionVersionResponse
  pResponseStatus_ =
    CreateDeviceDefinitionVersionResponse'
      { _cddvrrsCreationTimestamp =
          Nothing,
        _cddvrrsARN = Nothing,
        _cddvrrsId = Nothing,
        _cddvrrsVersion = Nothing,
        _cddvrrsResponseStatus =
          pResponseStatus_
      }

-- | The time, in milliseconds since the epoch, when the version was created.
cddvrrsCreationTimestamp :: Lens' CreateDeviceDefinitionVersionResponse (Maybe Text)
cddvrrsCreationTimestamp = lens _cddvrrsCreationTimestamp (\s a -> s {_cddvrrsCreationTimestamp = a})

-- | The ARN of the version.
cddvrrsARN :: Lens' CreateDeviceDefinitionVersionResponse (Maybe Text)
cddvrrsARN = lens _cddvrrsARN (\s a -> s {_cddvrrsARN = a})

-- | The ID of the parent definition that the version is associated with.
cddvrrsId :: Lens' CreateDeviceDefinitionVersionResponse (Maybe Text)
cddvrrsId = lens _cddvrrsId (\s a -> s {_cddvrrsId = a})

-- | The ID of the version.
cddvrrsVersion :: Lens' CreateDeviceDefinitionVersionResponse (Maybe Text)
cddvrrsVersion = lens _cddvrrsVersion (\s a -> s {_cddvrrsVersion = a})

-- | -- | The response status code.
cddvrrsResponseStatus :: Lens' CreateDeviceDefinitionVersionResponse Int
cddvrrsResponseStatus = lens _cddvrrsResponseStatus (\s a -> s {_cddvrrsResponseStatus = a})

instance NFData CreateDeviceDefinitionVersionResponse
