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
-- Module      : Network.AWS.Greengrass.CreateConnectorDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a connector definition which has already been defined.
module Network.AWS.Greengrass.CreateConnectorDefinitionVersion
  ( -- * Creating a Request
    createConnectorDefinitionVersion,
    CreateConnectorDefinitionVersion,

    -- * Request Lenses
    ccdvConnectors,
    ccdvAmznClientToken,
    ccdvConnectorDefinitionId,

    -- * Destructuring the Response
    createConnectorDefinitionVersionResponse,
    CreateConnectorDefinitionVersionResponse,

    -- * Response Lenses
    ccdvrrsCreationTimestamp,
    ccdvrrsARN,
    ccdvrrsId,
    ccdvrrsVersion,
    ccdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createConnectorDefinitionVersion' smart constructor.
data CreateConnectorDefinitionVersion = CreateConnectorDefinitionVersion'
  { _ccdvConnectors ::
      !( Maybe
           [Connector]
       ),
    _ccdvAmznClientToken ::
      !( Maybe
           Text
       ),
    _ccdvConnectorDefinitionId ::
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

-- | Creates a value of 'CreateConnectorDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdvConnectors' - A list of references to connectors in this version, with their corresponding configuration settings.
--
-- * 'ccdvAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'ccdvConnectorDefinitionId' - The ID of the connector definition.
createConnectorDefinitionVersion ::
  -- | 'ccdvConnectorDefinitionId'
  Text ->
  CreateConnectorDefinitionVersion
createConnectorDefinitionVersion
  pConnectorDefinitionId_ =
    CreateConnectorDefinitionVersion'
      { _ccdvConnectors =
          Nothing,
        _ccdvAmznClientToken = Nothing,
        _ccdvConnectorDefinitionId =
          pConnectorDefinitionId_
      }

-- | A list of references to connectors in this version, with their corresponding configuration settings.
ccdvConnectors :: Lens' CreateConnectorDefinitionVersion [Connector]
ccdvConnectors = lens _ccdvConnectors (\s a -> s {_ccdvConnectors = a}) . _Default . _Coerce

-- | A client token used to correlate requests and responses.
ccdvAmznClientToken :: Lens' CreateConnectorDefinitionVersion (Maybe Text)
ccdvAmznClientToken = lens _ccdvAmznClientToken (\s a -> s {_ccdvAmznClientToken = a})

-- | The ID of the connector definition.
ccdvConnectorDefinitionId :: Lens' CreateConnectorDefinitionVersion Text
ccdvConnectorDefinitionId = lens _ccdvConnectorDefinitionId (\s a -> s {_ccdvConnectorDefinitionId = a})

instance AWSRequest CreateConnectorDefinitionVersion where
  type
    Rs CreateConnectorDefinitionVersion =
      CreateConnectorDefinitionVersionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateConnectorDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateConnectorDefinitionVersion

instance NFData CreateConnectorDefinitionVersion

instance ToHeaders CreateConnectorDefinitionVersion where
  toHeaders CreateConnectorDefinitionVersion' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _ccdvAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateConnectorDefinitionVersion where
  toJSON CreateConnectorDefinitionVersion' {..} =
    object
      (catMaybes [("Connectors" .=) <$> _ccdvConnectors])

instance ToPath CreateConnectorDefinitionVersion where
  toPath CreateConnectorDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/connectors/",
        toBS _ccdvConnectorDefinitionId,
        "/versions"
      ]

instance ToQuery CreateConnectorDefinitionVersion where
  toQuery = const mempty

-- | /See:/ 'createConnectorDefinitionVersionResponse' smart constructor.
data CreateConnectorDefinitionVersionResponse = CreateConnectorDefinitionVersionResponse'
  { _ccdvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _ccdvrrsARN ::
      !( Maybe
           Text
       ),
    _ccdvrrsId ::
      !( Maybe
           Text
       ),
    _ccdvrrsVersion ::
      !( Maybe
           Text
       ),
    _ccdvrrsResponseStatus ::
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

-- | Creates a value of 'CreateConnectorDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'ccdvrrsARN' - The ARN of the version.
--
-- * 'ccdvrrsId' - The ID of the parent definition that the version is associated with.
--
-- * 'ccdvrrsVersion' - The ID of the version.
--
-- * 'ccdvrrsResponseStatus' - -- | The response status code.
createConnectorDefinitionVersionResponse ::
  -- | 'ccdvrrsResponseStatus'
  Int ->
  CreateConnectorDefinitionVersionResponse
createConnectorDefinitionVersionResponse
  pResponseStatus_ =
    CreateConnectorDefinitionVersionResponse'
      { _ccdvrrsCreationTimestamp =
          Nothing,
        _ccdvrrsARN = Nothing,
        _ccdvrrsId = Nothing,
        _ccdvrrsVersion = Nothing,
        _ccdvrrsResponseStatus =
          pResponseStatus_
      }

-- | The time, in milliseconds since the epoch, when the version was created.
ccdvrrsCreationTimestamp :: Lens' CreateConnectorDefinitionVersionResponse (Maybe Text)
ccdvrrsCreationTimestamp = lens _ccdvrrsCreationTimestamp (\s a -> s {_ccdvrrsCreationTimestamp = a})

-- | The ARN of the version.
ccdvrrsARN :: Lens' CreateConnectorDefinitionVersionResponse (Maybe Text)
ccdvrrsARN = lens _ccdvrrsARN (\s a -> s {_ccdvrrsARN = a})

-- | The ID of the parent definition that the version is associated with.
ccdvrrsId :: Lens' CreateConnectorDefinitionVersionResponse (Maybe Text)
ccdvrrsId = lens _ccdvrrsId (\s a -> s {_ccdvrrsId = a})

-- | The ID of the version.
ccdvrrsVersion :: Lens' CreateConnectorDefinitionVersionResponse (Maybe Text)
ccdvrrsVersion = lens _ccdvrrsVersion (\s a -> s {_ccdvrrsVersion = a})

-- | -- | The response status code.
ccdvrrsResponseStatus :: Lens' CreateConnectorDefinitionVersionResponse Int
ccdvrrsResponseStatus = lens _ccdvrrsResponseStatus (\s a -> s {_ccdvrrsResponseStatus = a})

instance
  NFData
    CreateConnectorDefinitionVersionResponse
