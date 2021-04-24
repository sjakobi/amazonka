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
-- Module      : Network.AWS.Greengrass.CreateGroupVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a group which has already been defined.
module Network.AWS.Greengrass.CreateGroupVersion
  ( -- * Creating a Request
    createGroupVersion,
    CreateGroupVersion,

    -- * Request Lenses
    cgvCoreDefinitionVersionARN,
    cgvConnectorDefinitionVersionARN,
    cgvSubscriptionDefinitionVersionARN,
    cgvLoggerDefinitionVersionARN,
    cgvResourceDefinitionVersionARN,
    cgvFunctionDefinitionVersionARN,
    cgvAmznClientToken,
    cgvDeviceDefinitionVersionARN,
    cgvGroupId,

    -- * Destructuring the Response
    createGroupVersionResponse,
    CreateGroupVersionResponse,

    -- * Response Lenses
    cgvrrsCreationTimestamp,
    cgvrrsARN,
    cgvrrsId,
    cgvrrsVersion,
    cgvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createGroupVersion' smart constructor.
data CreateGroupVersion = CreateGroupVersion'
  { _cgvCoreDefinitionVersionARN ::
      !(Maybe Text),
    _cgvConnectorDefinitionVersionARN ::
      !(Maybe Text),
    _cgvSubscriptionDefinitionVersionARN ::
      !(Maybe Text),
    _cgvLoggerDefinitionVersionARN ::
      !(Maybe Text),
    _cgvResourceDefinitionVersionARN ::
      !(Maybe Text),
    _cgvFunctionDefinitionVersionARN ::
      !(Maybe Text),
    _cgvAmznClientToken ::
      !(Maybe Text),
    _cgvDeviceDefinitionVersionARN ::
      !(Maybe Text),
    _cgvGroupId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGroupVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgvCoreDefinitionVersionARN' - The ARN of the core definition version for this group.
--
-- * 'cgvConnectorDefinitionVersionARN' - The ARN of the connector definition version for this group.
--
-- * 'cgvSubscriptionDefinitionVersionARN' - The ARN of the subscription definition version for this group.
--
-- * 'cgvLoggerDefinitionVersionARN' - The ARN of the logger definition version for this group.
--
-- * 'cgvResourceDefinitionVersionARN' - The ARN of the resource definition version for this group.
--
-- * 'cgvFunctionDefinitionVersionARN' - The ARN of the function definition version for this group.
--
-- * 'cgvAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'cgvDeviceDefinitionVersionARN' - The ARN of the device definition version for this group.
--
-- * 'cgvGroupId' - The ID of the Greengrass group.
createGroupVersion ::
  -- | 'cgvGroupId'
  Text ->
  CreateGroupVersion
createGroupVersion pGroupId_ =
  CreateGroupVersion'
    { _cgvCoreDefinitionVersionARN =
        Nothing,
      _cgvConnectorDefinitionVersionARN = Nothing,
      _cgvSubscriptionDefinitionVersionARN = Nothing,
      _cgvLoggerDefinitionVersionARN = Nothing,
      _cgvResourceDefinitionVersionARN = Nothing,
      _cgvFunctionDefinitionVersionARN = Nothing,
      _cgvAmznClientToken = Nothing,
      _cgvDeviceDefinitionVersionARN = Nothing,
      _cgvGroupId = pGroupId_
    }

-- | The ARN of the core definition version for this group.
cgvCoreDefinitionVersionARN :: Lens' CreateGroupVersion (Maybe Text)
cgvCoreDefinitionVersionARN = lens _cgvCoreDefinitionVersionARN (\s a -> s {_cgvCoreDefinitionVersionARN = a})

-- | The ARN of the connector definition version for this group.
cgvConnectorDefinitionVersionARN :: Lens' CreateGroupVersion (Maybe Text)
cgvConnectorDefinitionVersionARN = lens _cgvConnectorDefinitionVersionARN (\s a -> s {_cgvConnectorDefinitionVersionARN = a})

-- | The ARN of the subscription definition version for this group.
cgvSubscriptionDefinitionVersionARN :: Lens' CreateGroupVersion (Maybe Text)
cgvSubscriptionDefinitionVersionARN = lens _cgvSubscriptionDefinitionVersionARN (\s a -> s {_cgvSubscriptionDefinitionVersionARN = a})

-- | The ARN of the logger definition version for this group.
cgvLoggerDefinitionVersionARN :: Lens' CreateGroupVersion (Maybe Text)
cgvLoggerDefinitionVersionARN = lens _cgvLoggerDefinitionVersionARN (\s a -> s {_cgvLoggerDefinitionVersionARN = a})

-- | The ARN of the resource definition version for this group.
cgvResourceDefinitionVersionARN :: Lens' CreateGroupVersion (Maybe Text)
cgvResourceDefinitionVersionARN = lens _cgvResourceDefinitionVersionARN (\s a -> s {_cgvResourceDefinitionVersionARN = a})

-- | The ARN of the function definition version for this group.
cgvFunctionDefinitionVersionARN :: Lens' CreateGroupVersion (Maybe Text)
cgvFunctionDefinitionVersionARN = lens _cgvFunctionDefinitionVersionARN (\s a -> s {_cgvFunctionDefinitionVersionARN = a})

-- | A client token used to correlate requests and responses.
cgvAmznClientToken :: Lens' CreateGroupVersion (Maybe Text)
cgvAmznClientToken = lens _cgvAmznClientToken (\s a -> s {_cgvAmznClientToken = a})

-- | The ARN of the device definition version for this group.
cgvDeviceDefinitionVersionARN :: Lens' CreateGroupVersion (Maybe Text)
cgvDeviceDefinitionVersionARN = lens _cgvDeviceDefinitionVersionARN (\s a -> s {_cgvDeviceDefinitionVersionARN = a})

-- | The ID of the Greengrass group.
cgvGroupId :: Lens' CreateGroupVersion Text
cgvGroupId = lens _cgvGroupId (\s a -> s {_cgvGroupId = a})

instance AWSRequest CreateGroupVersion where
  type
    Rs CreateGroupVersion =
      CreateGroupVersionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateGroupVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateGroupVersion

instance NFData CreateGroupVersion

instance ToHeaders CreateGroupVersion where
  toHeaders CreateGroupVersion' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cgvAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateGroupVersion where
  toJSON CreateGroupVersion' {..} =
    object
      ( catMaybes
          [ ("CoreDefinitionVersionArn" .=)
              <$> _cgvCoreDefinitionVersionARN,
            ("ConnectorDefinitionVersionArn" .=)
              <$> _cgvConnectorDefinitionVersionARN,
            ("SubscriptionDefinitionVersionArn" .=)
              <$> _cgvSubscriptionDefinitionVersionARN,
            ("LoggerDefinitionVersionArn" .=)
              <$> _cgvLoggerDefinitionVersionARN,
            ("ResourceDefinitionVersionArn" .=)
              <$> _cgvResourceDefinitionVersionARN,
            ("FunctionDefinitionVersionArn" .=)
              <$> _cgvFunctionDefinitionVersionARN,
            ("DeviceDefinitionVersionArn" .=)
              <$> _cgvDeviceDefinitionVersionARN
          ]
      )

instance ToPath CreateGroupVersion where
  toPath CreateGroupVersion' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _cgvGroupId,
        "/versions"
      ]

instance ToQuery CreateGroupVersion where
  toQuery = const mempty

-- | /See:/ 'createGroupVersionResponse' smart constructor.
data CreateGroupVersionResponse = CreateGroupVersionResponse'
  { _cgvrrsCreationTimestamp ::
      !(Maybe Text),
    _cgvrrsARN ::
      !(Maybe Text),
    _cgvrrsId ::
      !(Maybe Text),
    _cgvrrsVersion ::
      !(Maybe Text),
    _cgvrrsResponseStatus ::
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

-- | Creates a value of 'CreateGroupVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'cgvrrsARN' - The ARN of the version.
--
-- * 'cgvrrsId' - The ID of the parent definition that the version is associated with.
--
-- * 'cgvrrsVersion' - The ID of the version.
--
-- * 'cgvrrsResponseStatus' - -- | The response status code.
createGroupVersionResponse ::
  -- | 'cgvrrsResponseStatus'
  Int ->
  CreateGroupVersionResponse
createGroupVersionResponse pResponseStatus_ =
  CreateGroupVersionResponse'
    { _cgvrrsCreationTimestamp =
        Nothing,
      _cgvrrsARN = Nothing,
      _cgvrrsId = Nothing,
      _cgvrrsVersion = Nothing,
      _cgvrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the version was created.
cgvrrsCreationTimestamp :: Lens' CreateGroupVersionResponse (Maybe Text)
cgvrrsCreationTimestamp = lens _cgvrrsCreationTimestamp (\s a -> s {_cgvrrsCreationTimestamp = a})

-- | The ARN of the version.
cgvrrsARN :: Lens' CreateGroupVersionResponse (Maybe Text)
cgvrrsARN = lens _cgvrrsARN (\s a -> s {_cgvrrsARN = a})

-- | The ID of the parent definition that the version is associated with.
cgvrrsId :: Lens' CreateGroupVersionResponse (Maybe Text)
cgvrrsId = lens _cgvrrsId (\s a -> s {_cgvrrsId = a})

-- | The ID of the version.
cgvrrsVersion :: Lens' CreateGroupVersionResponse (Maybe Text)
cgvrrsVersion = lens _cgvrrsVersion (\s a -> s {_cgvrrsVersion = a})

-- | -- | The response status code.
cgvrrsResponseStatus :: Lens' CreateGroupVersionResponse Int
cgvrrsResponseStatus = lens _cgvrrsResponseStatus (\s a -> s {_cgvrrsResponseStatus = a})

instance NFData CreateGroupVersionResponse
