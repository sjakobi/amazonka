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
-- Module      : Network.AWS.Greengrass.CreateResourceDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a resource definition that has already been defined.
module Network.AWS.Greengrass.CreateResourceDefinitionVersion
  ( -- * Creating a Request
    createResourceDefinitionVersion,
    CreateResourceDefinitionVersion,

    -- * Request Lenses
    crdvResources,
    crdvAmznClientToken,
    crdvResourceDefinitionId,

    -- * Destructuring the Response
    createResourceDefinitionVersionResponse,
    CreateResourceDefinitionVersionResponse,

    -- * Response Lenses
    crdvrrsCreationTimestamp,
    crdvrrsARN,
    crdvrrsId,
    crdvrrsVersion,
    crdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createResourceDefinitionVersion' smart constructor.
data CreateResourceDefinitionVersion = CreateResourceDefinitionVersion'
  { _crdvResources ::
      !( Maybe
           [Resource]
       ),
    _crdvAmznClientToken ::
      !( Maybe
           Text
       ),
    _crdvResourceDefinitionId ::
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

-- | Creates a value of 'CreateResourceDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crdvResources' - A list of resources.
--
-- * 'crdvAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'crdvResourceDefinitionId' - The ID of the resource definition.
createResourceDefinitionVersion ::
  -- | 'crdvResourceDefinitionId'
  Text ->
  CreateResourceDefinitionVersion
createResourceDefinitionVersion
  pResourceDefinitionId_ =
    CreateResourceDefinitionVersion'
      { _crdvResources =
          Nothing,
        _crdvAmznClientToken = Nothing,
        _crdvResourceDefinitionId =
          pResourceDefinitionId_
      }

-- | A list of resources.
crdvResources :: Lens' CreateResourceDefinitionVersion [Resource]
crdvResources = lens _crdvResources (\s a -> s {_crdvResources = a}) . _Default . _Coerce

-- | A client token used to correlate requests and responses.
crdvAmznClientToken :: Lens' CreateResourceDefinitionVersion (Maybe Text)
crdvAmznClientToken = lens _crdvAmznClientToken (\s a -> s {_crdvAmznClientToken = a})

-- | The ID of the resource definition.
crdvResourceDefinitionId :: Lens' CreateResourceDefinitionVersion Text
crdvResourceDefinitionId = lens _crdvResourceDefinitionId (\s a -> s {_crdvResourceDefinitionId = a})

instance AWSRequest CreateResourceDefinitionVersion where
  type
    Rs CreateResourceDefinitionVersion =
      CreateResourceDefinitionVersionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateResourceDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateResourceDefinitionVersion

instance NFData CreateResourceDefinitionVersion

instance ToHeaders CreateResourceDefinitionVersion where
  toHeaders CreateResourceDefinitionVersion' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _crdvAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateResourceDefinitionVersion where
  toJSON CreateResourceDefinitionVersion' {..} =
    object
      (catMaybes [("Resources" .=) <$> _crdvResources])

instance ToPath CreateResourceDefinitionVersion where
  toPath CreateResourceDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/resources/",
        toBS _crdvResourceDefinitionId,
        "/versions"
      ]

instance ToQuery CreateResourceDefinitionVersion where
  toQuery = const mempty

-- | /See:/ 'createResourceDefinitionVersionResponse' smart constructor.
data CreateResourceDefinitionVersionResponse = CreateResourceDefinitionVersionResponse'
  { _crdvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _crdvrrsARN ::
      !( Maybe
           Text
       ),
    _crdvrrsId ::
      !( Maybe
           Text
       ),
    _crdvrrsVersion ::
      !( Maybe
           Text
       ),
    _crdvrrsResponseStatus ::
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

-- | Creates a value of 'CreateResourceDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crdvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'crdvrrsARN' - The ARN of the version.
--
-- * 'crdvrrsId' - The ID of the parent definition that the version is associated with.
--
-- * 'crdvrrsVersion' - The ID of the version.
--
-- * 'crdvrrsResponseStatus' - -- | The response status code.
createResourceDefinitionVersionResponse ::
  -- | 'crdvrrsResponseStatus'
  Int ->
  CreateResourceDefinitionVersionResponse
createResourceDefinitionVersionResponse
  pResponseStatus_ =
    CreateResourceDefinitionVersionResponse'
      { _crdvrrsCreationTimestamp =
          Nothing,
        _crdvrrsARN = Nothing,
        _crdvrrsId = Nothing,
        _crdvrrsVersion = Nothing,
        _crdvrrsResponseStatus =
          pResponseStatus_
      }

-- | The time, in milliseconds since the epoch, when the version was created.
crdvrrsCreationTimestamp :: Lens' CreateResourceDefinitionVersionResponse (Maybe Text)
crdvrrsCreationTimestamp = lens _crdvrrsCreationTimestamp (\s a -> s {_crdvrrsCreationTimestamp = a})

-- | The ARN of the version.
crdvrrsARN :: Lens' CreateResourceDefinitionVersionResponse (Maybe Text)
crdvrrsARN = lens _crdvrrsARN (\s a -> s {_crdvrrsARN = a})

-- | The ID of the parent definition that the version is associated with.
crdvrrsId :: Lens' CreateResourceDefinitionVersionResponse (Maybe Text)
crdvrrsId = lens _crdvrrsId (\s a -> s {_crdvrrsId = a})

-- | The ID of the version.
crdvrrsVersion :: Lens' CreateResourceDefinitionVersionResponse (Maybe Text)
crdvrrsVersion = lens _crdvrrsVersion (\s a -> s {_crdvrrsVersion = a})

-- | -- | The response status code.
crdvrrsResponseStatus :: Lens' CreateResourceDefinitionVersionResponse Int
crdvrrsResponseStatus = lens _crdvrrsResponseStatus (\s a -> s {_crdvrrsResponseStatus = a})

instance
  NFData
    CreateResourceDefinitionVersionResponse
