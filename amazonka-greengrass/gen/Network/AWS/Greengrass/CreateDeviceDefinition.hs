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
-- Module      : Network.AWS.Greengrass.CreateDeviceDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.
module Network.AWS.Greengrass.CreateDeviceDefinition
  ( -- * Creating a Request
    createDeviceDefinition,
    CreateDeviceDefinition,

    -- * Request Lenses
    cddName,
    cddInitialVersion,
    cddTags,
    cddAmznClientToken,

    -- * Destructuring the Response
    createDeviceDefinitionResponse,
    CreateDeviceDefinitionResponse,

    -- * Response Lenses
    cddrrsCreationTimestamp,
    cddrrsLatestVersionARN,
    cddrrsLatestVersion,
    cddrrsARN,
    cddrrsId,
    cddrrsName,
    cddrrsLastUpdatedTimestamp,
    cddrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDeviceDefinition' smart constructor.
data CreateDeviceDefinition = CreateDeviceDefinition'
  { _cddName ::
      !(Maybe Text),
    _cddInitialVersion ::
      !( Maybe
           DeviceDefinitionVersion
       ),
    _cddTags ::
      !(Maybe (Map Text Text)),
    _cddAmznClientToken ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDeviceDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddName' - The name of the device definition.
--
-- * 'cddInitialVersion' - Information about the initial version of the device definition.
--
-- * 'cddTags' - Tag(s) to add to the new resource.
--
-- * 'cddAmznClientToken' - A client token used to correlate requests and responses.
createDeviceDefinition ::
  CreateDeviceDefinition
createDeviceDefinition =
  CreateDeviceDefinition'
    { _cddName = Nothing,
      _cddInitialVersion = Nothing,
      _cddTags = Nothing,
      _cddAmznClientToken = Nothing
    }

-- | The name of the device definition.
cddName :: Lens' CreateDeviceDefinition (Maybe Text)
cddName = lens _cddName (\s a -> s {_cddName = a})

-- | Information about the initial version of the device definition.
cddInitialVersion :: Lens' CreateDeviceDefinition (Maybe DeviceDefinitionVersion)
cddInitialVersion = lens _cddInitialVersion (\s a -> s {_cddInitialVersion = a})

-- | Tag(s) to add to the new resource.
cddTags :: Lens' CreateDeviceDefinition (HashMap Text Text)
cddTags = lens _cddTags (\s a -> s {_cddTags = a}) . _Default . _Map

-- | A client token used to correlate requests and responses.
cddAmznClientToken :: Lens' CreateDeviceDefinition (Maybe Text)
cddAmznClientToken = lens _cddAmznClientToken (\s a -> s {_cddAmznClientToken = a})

instance AWSRequest CreateDeviceDefinition where
  type
    Rs CreateDeviceDefinition =
      CreateDeviceDefinitionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateDeviceDefinitionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "LatestVersionArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdatedTimestamp")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDeviceDefinition

instance NFData CreateDeviceDefinition

instance ToHeaders CreateDeviceDefinition where
  toHeaders CreateDeviceDefinition' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cddAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateDeviceDefinition where
  toJSON CreateDeviceDefinition' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _cddName,
            ("InitialVersion" .=) <$> _cddInitialVersion,
            ("tags" .=) <$> _cddTags
          ]
      )

instance ToPath CreateDeviceDefinition where
  toPath = const "/greengrass/definition/devices"

instance ToQuery CreateDeviceDefinition where
  toQuery = const mempty

-- | /See:/ 'createDeviceDefinitionResponse' smart constructor.
data CreateDeviceDefinitionResponse = CreateDeviceDefinitionResponse'
  { _cddrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _cddrrsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _cddrrsLatestVersion ::
      !( Maybe
           Text
       ),
    _cddrrsARN ::
      !( Maybe
           Text
       ),
    _cddrrsId ::
      !( Maybe
           Text
       ),
    _cddrrsName ::
      !( Maybe
           Text
       ),
    _cddrrsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _cddrrsResponseStatus ::
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

-- | Creates a value of 'CreateDeviceDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'cddrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'cddrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'cddrrsARN' - The ARN of the definition.
--
-- * 'cddrrsId' - The ID of the definition.
--
-- * 'cddrrsName' - The name of the definition.
--
-- * 'cddrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'cddrrsResponseStatus' - -- | The response status code.
createDeviceDefinitionResponse ::
  -- | 'cddrrsResponseStatus'
  Int ->
  CreateDeviceDefinitionResponse
createDeviceDefinitionResponse pResponseStatus_ =
  CreateDeviceDefinitionResponse'
    { _cddrrsCreationTimestamp =
        Nothing,
      _cddrrsLatestVersionARN = Nothing,
      _cddrrsLatestVersion = Nothing,
      _cddrrsARN = Nothing,
      _cddrrsId = Nothing,
      _cddrrsName = Nothing,
      _cddrrsLastUpdatedTimestamp = Nothing,
      _cddrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
cddrrsCreationTimestamp :: Lens' CreateDeviceDefinitionResponse (Maybe Text)
cddrrsCreationTimestamp = lens _cddrrsCreationTimestamp (\s a -> s {_cddrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
cddrrsLatestVersionARN :: Lens' CreateDeviceDefinitionResponse (Maybe Text)
cddrrsLatestVersionARN = lens _cddrrsLatestVersionARN (\s a -> s {_cddrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
cddrrsLatestVersion :: Lens' CreateDeviceDefinitionResponse (Maybe Text)
cddrrsLatestVersion = lens _cddrrsLatestVersion (\s a -> s {_cddrrsLatestVersion = a})

-- | The ARN of the definition.
cddrrsARN :: Lens' CreateDeviceDefinitionResponse (Maybe Text)
cddrrsARN = lens _cddrrsARN (\s a -> s {_cddrrsARN = a})

-- | The ID of the definition.
cddrrsId :: Lens' CreateDeviceDefinitionResponse (Maybe Text)
cddrrsId = lens _cddrrsId (\s a -> s {_cddrrsId = a})

-- | The name of the definition.
cddrrsName :: Lens' CreateDeviceDefinitionResponse (Maybe Text)
cddrrsName = lens _cddrrsName (\s a -> s {_cddrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
cddrrsLastUpdatedTimestamp :: Lens' CreateDeviceDefinitionResponse (Maybe Text)
cddrrsLastUpdatedTimestamp = lens _cddrrsLastUpdatedTimestamp (\s a -> s {_cddrrsLastUpdatedTimestamp = a})

-- | -- | The response status code.
cddrrsResponseStatus :: Lens' CreateDeviceDefinitionResponse Int
cddrrsResponseStatus = lens _cddrrsResponseStatus (\s a -> s {_cddrrsResponseStatus = a})

instance NFData CreateDeviceDefinitionResponse
