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
-- Module      : Network.AWS.Greengrass.CreateConnectorDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time.
module Network.AWS.Greengrass.CreateConnectorDefinition
  ( -- * Creating a Request
    createConnectorDefinition,
    CreateConnectorDefinition,

    -- * Request Lenses
    creName,
    creInitialVersion,
    creTags,
    creAmznClientToken,

    -- * Destructuring the Response
    createConnectorDefinitionResponse,
    CreateConnectorDefinitionResponse,

    -- * Response Lenses
    crsCreationTimestamp,
    crsLatestVersionARN,
    crsLatestVersion,
    crsARN,
    crsId,
    crsName,
    crsLastUpdatedTimestamp,
    crsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createConnectorDefinition' smart constructor.
data CreateConnectorDefinition = CreateConnectorDefinition'
  { _creName ::
      !(Maybe Text),
    _creInitialVersion ::
      !( Maybe
           ConnectorDefinitionVersion
       ),
    _creTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _creAmznClientToken ::
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

-- | Creates a value of 'CreateConnectorDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creName' - The name of the connector definition.
--
-- * 'creInitialVersion' - Information about the initial version of the connector definition.
--
-- * 'creTags' - Tag(s) to add to the new resource.
--
-- * 'creAmznClientToken' - A client token used to correlate requests and responses.
createConnectorDefinition ::
  CreateConnectorDefinition
createConnectorDefinition =
  CreateConnectorDefinition'
    { _creName = Nothing,
      _creInitialVersion = Nothing,
      _creTags = Nothing,
      _creAmznClientToken = Nothing
    }

-- | The name of the connector definition.
creName :: Lens' CreateConnectorDefinition (Maybe Text)
creName = lens _creName (\s a -> s {_creName = a})

-- | Information about the initial version of the connector definition.
creInitialVersion :: Lens' CreateConnectorDefinition (Maybe ConnectorDefinitionVersion)
creInitialVersion = lens _creInitialVersion (\s a -> s {_creInitialVersion = a})

-- | Tag(s) to add to the new resource.
creTags :: Lens' CreateConnectorDefinition (HashMap Text Text)
creTags = lens _creTags (\s a -> s {_creTags = a}) . _Default . _Map

-- | A client token used to correlate requests and responses.
creAmznClientToken :: Lens' CreateConnectorDefinition (Maybe Text)
creAmznClientToken = lens _creAmznClientToken (\s a -> s {_creAmznClientToken = a})

instance AWSRequest CreateConnectorDefinition where
  type
    Rs CreateConnectorDefinition =
      CreateConnectorDefinitionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateConnectorDefinitionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "LatestVersionArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdatedTimestamp")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateConnectorDefinition

instance NFData CreateConnectorDefinition

instance ToHeaders CreateConnectorDefinition where
  toHeaders CreateConnectorDefinition' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _creAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateConnectorDefinition where
  toJSON CreateConnectorDefinition' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _creName,
            ("InitialVersion" .=) <$> _creInitialVersion,
            ("tags" .=) <$> _creTags
          ]
      )

instance ToPath CreateConnectorDefinition where
  toPath = const "/greengrass/definition/connectors"

instance ToQuery CreateConnectorDefinition where
  toQuery = const mempty

-- | /See:/ 'createConnectorDefinitionResponse' smart constructor.
data CreateConnectorDefinitionResponse = CreateConnectorDefinitionResponse'
  { _crsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _crsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _crsLatestVersion ::
      !( Maybe
           Text
       ),
    _crsARN ::
      !( Maybe
           Text
       ),
    _crsId ::
      !( Maybe
           Text
       ),
    _crsName ::
      !( Maybe
           Text
       ),
    _crsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _crsResponseStatus ::
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

-- | Creates a value of 'CreateConnectorDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'crsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'crsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'crsARN' - The ARN of the definition.
--
-- * 'crsId' - The ID of the definition.
--
-- * 'crsName' - The name of the definition.
--
-- * 'crsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'crsResponseStatus' - -- | The response status code.
createConnectorDefinitionResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateConnectorDefinitionResponse
createConnectorDefinitionResponse pResponseStatus_ =
  CreateConnectorDefinitionResponse'
    { _crsCreationTimestamp =
        Nothing,
      _crsLatestVersionARN = Nothing,
      _crsLatestVersion = Nothing,
      _crsARN = Nothing,
      _crsId = Nothing,
      _crsName = Nothing,
      _crsLastUpdatedTimestamp = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
crsCreationTimestamp :: Lens' CreateConnectorDefinitionResponse (Maybe Text)
crsCreationTimestamp = lens _crsCreationTimestamp (\s a -> s {_crsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
crsLatestVersionARN :: Lens' CreateConnectorDefinitionResponse (Maybe Text)
crsLatestVersionARN = lens _crsLatestVersionARN (\s a -> s {_crsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
crsLatestVersion :: Lens' CreateConnectorDefinitionResponse (Maybe Text)
crsLatestVersion = lens _crsLatestVersion (\s a -> s {_crsLatestVersion = a})

-- | The ARN of the definition.
crsARN :: Lens' CreateConnectorDefinitionResponse (Maybe Text)
crsARN = lens _crsARN (\s a -> s {_crsARN = a})

-- | The ID of the definition.
crsId :: Lens' CreateConnectorDefinitionResponse (Maybe Text)
crsId = lens _crsId (\s a -> s {_crsId = a})

-- | The name of the definition.
crsName :: Lens' CreateConnectorDefinitionResponse (Maybe Text)
crsName = lens _crsName (\s a -> s {_crsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
crsLastUpdatedTimestamp :: Lens' CreateConnectorDefinitionResponse (Maybe Text)
crsLastUpdatedTimestamp = lens _crsLastUpdatedTimestamp (\s a -> s {_crsLastUpdatedTimestamp = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateConnectorDefinitionResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateConnectorDefinitionResponse
