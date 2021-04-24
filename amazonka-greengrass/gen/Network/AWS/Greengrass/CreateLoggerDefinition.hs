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
-- Module      : Network.AWS.Greengrass.CreateLoggerDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.
module Network.AWS.Greengrass.CreateLoggerDefinition
  ( -- * Creating a Request
    createLoggerDefinition,
    CreateLoggerDefinition,

    -- * Request Lenses
    cldName,
    cldInitialVersion,
    cldTags,
    cldAmznClientToken,

    -- * Destructuring the Response
    createLoggerDefinitionResponse,
    CreateLoggerDefinitionResponse,

    -- * Response Lenses
    cldrrsCreationTimestamp,
    cldrrsLatestVersionARN,
    cldrrsLatestVersion,
    cldrrsARN,
    cldrrsId,
    cldrrsName,
    cldrrsLastUpdatedTimestamp,
    cldrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createLoggerDefinition' smart constructor.
data CreateLoggerDefinition = CreateLoggerDefinition'
  { _cldName ::
      !(Maybe Text),
    _cldInitialVersion ::
      !( Maybe
           LoggerDefinitionVersion
       ),
    _cldTags ::
      !(Maybe (Map Text Text)),
    _cldAmznClientToken ::
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

-- | Creates a value of 'CreateLoggerDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldName' - The name of the logger definition.
--
-- * 'cldInitialVersion' - Information about the initial version of the logger definition.
--
-- * 'cldTags' - Tag(s) to add to the new resource.
--
-- * 'cldAmznClientToken' - A client token used to correlate requests and responses.
createLoggerDefinition ::
  CreateLoggerDefinition
createLoggerDefinition =
  CreateLoggerDefinition'
    { _cldName = Nothing,
      _cldInitialVersion = Nothing,
      _cldTags = Nothing,
      _cldAmznClientToken = Nothing
    }

-- | The name of the logger definition.
cldName :: Lens' CreateLoggerDefinition (Maybe Text)
cldName = lens _cldName (\s a -> s {_cldName = a})

-- | Information about the initial version of the logger definition.
cldInitialVersion :: Lens' CreateLoggerDefinition (Maybe LoggerDefinitionVersion)
cldInitialVersion = lens _cldInitialVersion (\s a -> s {_cldInitialVersion = a})

-- | Tag(s) to add to the new resource.
cldTags :: Lens' CreateLoggerDefinition (HashMap Text Text)
cldTags = lens _cldTags (\s a -> s {_cldTags = a}) . _Default . _Map

-- | A client token used to correlate requests and responses.
cldAmznClientToken :: Lens' CreateLoggerDefinition (Maybe Text)
cldAmznClientToken = lens _cldAmznClientToken (\s a -> s {_cldAmznClientToken = a})

instance AWSRequest CreateLoggerDefinition where
  type
    Rs CreateLoggerDefinition =
      CreateLoggerDefinitionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateLoggerDefinitionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "LatestVersionArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdatedTimestamp")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateLoggerDefinition

instance NFData CreateLoggerDefinition

instance ToHeaders CreateLoggerDefinition where
  toHeaders CreateLoggerDefinition' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cldAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateLoggerDefinition where
  toJSON CreateLoggerDefinition' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _cldName,
            ("InitialVersion" .=) <$> _cldInitialVersion,
            ("tags" .=) <$> _cldTags
          ]
      )

instance ToPath CreateLoggerDefinition where
  toPath = const "/greengrass/definition/loggers"

instance ToQuery CreateLoggerDefinition where
  toQuery = const mempty

-- | /See:/ 'createLoggerDefinitionResponse' smart constructor.
data CreateLoggerDefinitionResponse = CreateLoggerDefinitionResponse'
  { _cldrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _cldrrsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _cldrrsLatestVersion ::
      !( Maybe
           Text
       ),
    _cldrrsARN ::
      !( Maybe
           Text
       ),
    _cldrrsId ::
      !( Maybe
           Text
       ),
    _cldrrsName ::
      !( Maybe
           Text
       ),
    _cldrrsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _cldrrsResponseStatus ::
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

-- | Creates a value of 'CreateLoggerDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'cldrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'cldrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'cldrrsARN' - The ARN of the definition.
--
-- * 'cldrrsId' - The ID of the definition.
--
-- * 'cldrrsName' - The name of the definition.
--
-- * 'cldrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'cldrrsResponseStatus' - -- | The response status code.
createLoggerDefinitionResponse ::
  -- | 'cldrrsResponseStatus'
  Int ->
  CreateLoggerDefinitionResponse
createLoggerDefinitionResponse pResponseStatus_ =
  CreateLoggerDefinitionResponse'
    { _cldrrsCreationTimestamp =
        Nothing,
      _cldrrsLatestVersionARN = Nothing,
      _cldrrsLatestVersion = Nothing,
      _cldrrsARN = Nothing,
      _cldrrsId = Nothing,
      _cldrrsName = Nothing,
      _cldrrsLastUpdatedTimestamp = Nothing,
      _cldrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
cldrrsCreationTimestamp :: Lens' CreateLoggerDefinitionResponse (Maybe Text)
cldrrsCreationTimestamp = lens _cldrrsCreationTimestamp (\s a -> s {_cldrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
cldrrsLatestVersionARN :: Lens' CreateLoggerDefinitionResponse (Maybe Text)
cldrrsLatestVersionARN = lens _cldrrsLatestVersionARN (\s a -> s {_cldrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
cldrrsLatestVersion :: Lens' CreateLoggerDefinitionResponse (Maybe Text)
cldrrsLatestVersion = lens _cldrrsLatestVersion (\s a -> s {_cldrrsLatestVersion = a})

-- | The ARN of the definition.
cldrrsARN :: Lens' CreateLoggerDefinitionResponse (Maybe Text)
cldrrsARN = lens _cldrrsARN (\s a -> s {_cldrrsARN = a})

-- | The ID of the definition.
cldrrsId :: Lens' CreateLoggerDefinitionResponse (Maybe Text)
cldrrsId = lens _cldrrsId (\s a -> s {_cldrrsId = a})

-- | The name of the definition.
cldrrsName :: Lens' CreateLoggerDefinitionResponse (Maybe Text)
cldrrsName = lens _cldrrsName (\s a -> s {_cldrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
cldrrsLastUpdatedTimestamp :: Lens' CreateLoggerDefinitionResponse (Maybe Text)
cldrrsLastUpdatedTimestamp = lens _cldrrsLastUpdatedTimestamp (\s a -> s {_cldrrsLastUpdatedTimestamp = a})

-- | -- | The response status code.
cldrrsResponseStatus :: Lens' CreateLoggerDefinitionResponse Int
cldrrsResponseStatus = lens _cldrrsResponseStatus (\s a -> s {_cldrrsResponseStatus = a})

instance NFData CreateLoggerDefinitionResponse
