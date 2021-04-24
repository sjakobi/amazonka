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
-- Module      : Network.AWS.Greengrass.CreateResourceDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.
module Network.AWS.Greengrass.CreateResourceDefinition
  ( -- * Creating a Request
    createResourceDefinition,
    CreateResourceDefinition,

    -- * Request Lenses
    crdName,
    crdInitialVersion,
    crdTags,
    crdAmznClientToken,

    -- * Destructuring the Response
    createResourceDefinitionResponse,
    CreateResourceDefinitionResponse,

    -- * Response Lenses
    crdrrsCreationTimestamp,
    crdrrsLatestVersionARN,
    crdrrsLatestVersion,
    crdrrsARN,
    crdrrsId,
    crdrrsName,
    crdrrsLastUpdatedTimestamp,
    crdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createResourceDefinition' smart constructor.
data CreateResourceDefinition = CreateResourceDefinition'
  { _crdName ::
      !(Maybe Text),
    _crdInitialVersion ::
      !( Maybe
           ResourceDefinitionVersion
       ),
    _crdTags ::
      !( Maybe
           (Map Text Text)
       ),
    _crdAmznClientToken ::
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

-- | Creates a value of 'CreateResourceDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crdName' - The name of the resource definition.
--
-- * 'crdInitialVersion' - Information about the initial version of the resource definition.
--
-- * 'crdTags' - Tag(s) to add to the new resource.
--
-- * 'crdAmznClientToken' - A client token used to correlate requests and responses.
createResourceDefinition ::
  CreateResourceDefinition
createResourceDefinition =
  CreateResourceDefinition'
    { _crdName = Nothing,
      _crdInitialVersion = Nothing,
      _crdTags = Nothing,
      _crdAmznClientToken = Nothing
    }

-- | The name of the resource definition.
crdName :: Lens' CreateResourceDefinition (Maybe Text)
crdName = lens _crdName (\s a -> s {_crdName = a})

-- | Information about the initial version of the resource definition.
crdInitialVersion :: Lens' CreateResourceDefinition (Maybe ResourceDefinitionVersion)
crdInitialVersion = lens _crdInitialVersion (\s a -> s {_crdInitialVersion = a})

-- | Tag(s) to add to the new resource.
crdTags :: Lens' CreateResourceDefinition (HashMap Text Text)
crdTags = lens _crdTags (\s a -> s {_crdTags = a}) . _Default . _Map

-- | A client token used to correlate requests and responses.
crdAmznClientToken :: Lens' CreateResourceDefinition (Maybe Text)
crdAmznClientToken = lens _crdAmznClientToken (\s a -> s {_crdAmznClientToken = a})

instance AWSRequest CreateResourceDefinition where
  type
    Rs CreateResourceDefinition =
      CreateResourceDefinitionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateResourceDefinitionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "LatestVersionArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdatedTimestamp")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateResourceDefinition

instance NFData CreateResourceDefinition

instance ToHeaders CreateResourceDefinition where
  toHeaders CreateResourceDefinition' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _crdAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateResourceDefinition where
  toJSON CreateResourceDefinition' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _crdName,
            ("InitialVersion" .=) <$> _crdInitialVersion,
            ("tags" .=) <$> _crdTags
          ]
      )

instance ToPath CreateResourceDefinition where
  toPath = const "/greengrass/definition/resources"

instance ToQuery CreateResourceDefinition where
  toQuery = const mempty

-- | /See:/ 'createResourceDefinitionResponse' smart constructor.
data CreateResourceDefinitionResponse = CreateResourceDefinitionResponse'
  { _crdrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _crdrrsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _crdrrsLatestVersion ::
      !( Maybe
           Text
       ),
    _crdrrsARN ::
      !( Maybe
           Text
       ),
    _crdrrsId ::
      !( Maybe
           Text
       ),
    _crdrrsName ::
      !( Maybe
           Text
       ),
    _crdrrsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _crdrrsResponseStatus ::
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

-- | Creates a value of 'CreateResourceDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crdrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'crdrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'crdrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'crdrrsARN' - The ARN of the definition.
--
-- * 'crdrrsId' - The ID of the definition.
--
-- * 'crdrrsName' - The name of the definition.
--
-- * 'crdrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'crdrrsResponseStatus' - -- | The response status code.
createResourceDefinitionResponse ::
  -- | 'crdrrsResponseStatus'
  Int ->
  CreateResourceDefinitionResponse
createResourceDefinitionResponse pResponseStatus_ =
  CreateResourceDefinitionResponse'
    { _crdrrsCreationTimestamp =
        Nothing,
      _crdrrsLatestVersionARN = Nothing,
      _crdrrsLatestVersion = Nothing,
      _crdrrsARN = Nothing,
      _crdrrsId = Nothing,
      _crdrrsName = Nothing,
      _crdrrsLastUpdatedTimestamp = Nothing,
      _crdrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
crdrrsCreationTimestamp :: Lens' CreateResourceDefinitionResponse (Maybe Text)
crdrrsCreationTimestamp = lens _crdrrsCreationTimestamp (\s a -> s {_crdrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
crdrrsLatestVersionARN :: Lens' CreateResourceDefinitionResponse (Maybe Text)
crdrrsLatestVersionARN = lens _crdrrsLatestVersionARN (\s a -> s {_crdrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
crdrrsLatestVersion :: Lens' CreateResourceDefinitionResponse (Maybe Text)
crdrrsLatestVersion = lens _crdrrsLatestVersion (\s a -> s {_crdrrsLatestVersion = a})

-- | The ARN of the definition.
crdrrsARN :: Lens' CreateResourceDefinitionResponse (Maybe Text)
crdrrsARN = lens _crdrrsARN (\s a -> s {_crdrrsARN = a})

-- | The ID of the definition.
crdrrsId :: Lens' CreateResourceDefinitionResponse (Maybe Text)
crdrrsId = lens _crdrrsId (\s a -> s {_crdrrsId = a})

-- | The name of the definition.
crdrrsName :: Lens' CreateResourceDefinitionResponse (Maybe Text)
crdrrsName = lens _crdrrsName (\s a -> s {_crdrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
crdrrsLastUpdatedTimestamp :: Lens' CreateResourceDefinitionResponse (Maybe Text)
crdrrsLastUpdatedTimestamp = lens _crdrrsLastUpdatedTimestamp (\s a -> s {_crdrrsLastUpdatedTimestamp = a})

-- | -- | The response status code.
crdrrsResponseStatus :: Lens' CreateResourceDefinitionResponse Int
crdrrsResponseStatus = lens _crdrrsResponseStatus (\s a -> s {_crdrrsResponseStatus = a})

instance NFData CreateResourceDefinitionResponse
