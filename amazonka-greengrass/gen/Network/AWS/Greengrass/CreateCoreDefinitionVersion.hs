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
-- Module      : Network.AWS.Greengrass.CreateCoreDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.
module Network.AWS.Greengrass.CreateCoreDefinitionVersion
  ( -- * Creating a Request
    createCoreDefinitionVersion,
    CreateCoreDefinitionVersion,

    -- * Request Lenses
    cCores,
    cAmznClientToken,
    cCoreDefinitionId,

    -- * Destructuring the Response
    createCoreDefinitionVersionResponse,
    CreateCoreDefinitionVersionResponse,

    -- * Response Lenses
    crersCreationTimestamp,
    crersARN,
    crersId,
    crersVersion,
    crersResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createCoreDefinitionVersion' smart constructor.
data CreateCoreDefinitionVersion = CreateCoreDefinitionVersion'
  { _cCores ::
      !(Maybe [Core]),
    _cAmznClientToken ::
      !(Maybe Text),
    _cCoreDefinitionId ::
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

-- | Creates a value of 'CreateCoreDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCores' - A list of cores in the core definition version.
--
-- * 'cAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'cCoreDefinitionId' - The ID of the core definition.
createCoreDefinitionVersion ::
  -- | 'cCoreDefinitionId'
  Text ->
  CreateCoreDefinitionVersion
createCoreDefinitionVersion pCoreDefinitionId_ =
  CreateCoreDefinitionVersion'
    { _cCores = Nothing,
      _cAmznClientToken = Nothing,
      _cCoreDefinitionId = pCoreDefinitionId_
    }

-- | A list of cores in the core definition version.
cCores :: Lens' CreateCoreDefinitionVersion [Core]
cCores = lens _cCores (\s a -> s {_cCores = a}) . _Default . _Coerce

-- | A client token used to correlate requests and responses.
cAmznClientToken :: Lens' CreateCoreDefinitionVersion (Maybe Text)
cAmznClientToken = lens _cAmznClientToken (\s a -> s {_cAmznClientToken = a})

-- | The ID of the core definition.
cCoreDefinitionId :: Lens' CreateCoreDefinitionVersion Text
cCoreDefinitionId = lens _cCoreDefinitionId (\s a -> s {_cCoreDefinitionId = a})

instance AWSRequest CreateCoreDefinitionVersion where
  type
    Rs CreateCoreDefinitionVersion =
      CreateCoreDefinitionVersionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateCoreDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateCoreDefinitionVersion

instance NFData CreateCoreDefinitionVersion

instance ToHeaders CreateCoreDefinitionVersion where
  toHeaders CreateCoreDefinitionVersion' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateCoreDefinitionVersion where
  toJSON CreateCoreDefinitionVersion' {..} =
    object (catMaybes [("Cores" .=) <$> _cCores])

instance ToPath CreateCoreDefinitionVersion where
  toPath CreateCoreDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/cores/",
        toBS _cCoreDefinitionId,
        "/versions"
      ]

instance ToQuery CreateCoreDefinitionVersion where
  toQuery = const mempty

-- | /See:/ 'createCoreDefinitionVersionResponse' smart constructor.
data CreateCoreDefinitionVersionResponse = CreateCoreDefinitionVersionResponse'
  { _crersCreationTimestamp ::
      !( Maybe
           Text
       ),
    _crersARN ::
      !( Maybe
           Text
       ),
    _crersId ::
      !( Maybe
           Text
       ),
    _crersVersion ::
      !( Maybe
           Text
       ),
    _crersResponseStatus ::
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

-- | Creates a value of 'CreateCoreDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crersCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'crersARN' - The ARN of the version.
--
-- * 'crersId' - The ID of the parent definition that the version is associated with.
--
-- * 'crersVersion' - The ID of the version.
--
-- * 'crersResponseStatus' - -- | The response status code.
createCoreDefinitionVersionResponse ::
  -- | 'crersResponseStatus'
  Int ->
  CreateCoreDefinitionVersionResponse
createCoreDefinitionVersionResponse pResponseStatus_ =
  CreateCoreDefinitionVersionResponse'
    { _crersCreationTimestamp =
        Nothing,
      _crersARN = Nothing,
      _crersId = Nothing,
      _crersVersion = Nothing,
      _crersResponseStatus =
        pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the version was created.
crersCreationTimestamp :: Lens' CreateCoreDefinitionVersionResponse (Maybe Text)
crersCreationTimestamp = lens _crersCreationTimestamp (\s a -> s {_crersCreationTimestamp = a})

-- | The ARN of the version.
crersARN :: Lens' CreateCoreDefinitionVersionResponse (Maybe Text)
crersARN = lens _crersARN (\s a -> s {_crersARN = a})

-- | The ID of the parent definition that the version is associated with.
crersId :: Lens' CreateCoreDefinitionVersionResponse (Maybe Text)
crersId = lens _crersId (\s a -> s {_crersId = a})

-- | The ID of the version.
crersVersion :: Lens' CreateCoreDefinitionVersionResponse (Maybe Text)
crersVersion = lens _crersVersion (\s a -> s {_crersVersion = a})

-- | -- | The response status code.
crersResponseStatus :: Lens' CreateCoreDefinitionVersionResponse Int
crersResponseStatus = lens _crersResponseStatus (\s a -> s {_crersResponseStatus = a})

instance NFData CreateCoreDefinitionVersionResponse
