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
-- Module      : Network.AWS.Greengrass.CreateFunctionDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.
module Network.AWS.Greengrass.CreateFunctionDefinition
  ( -- * Creating a Request
    createFunctionDefinition,
    CreateFunctionDefinition,

    -- * Request Lenses
    cfdName,
    cfdInitialVersion,
    cfdTags,
    cfdAmznClientToken,

    -- * Destructuring the Response
    createFunctionDefinitionResponse,
    CreateFunctionDefinitionResponse,

    -- * Response Lenses
    cfdrrsCreationTimestamp,
    cfdrrsLatestVersionARN,
    cfdrrsLatestVersion,
    cfdrrsARN,
    cfdrrsId,
    cfdrrsName,
    cfdrrsLastUpdatedTimestamp,
    cfdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createFunctionDefinition' smart constructor.
data CreateFunctionDefinition = CreateFunctionDefinition'
  { _cfdName ::
      !(Maybe Text),
    _cfdInitialVersion ::
      !( Maybe
           FunctionDefinitionVersion
       ),
    _cfdTags ::
      !( Maybe
           (Map Text Text)
       ),
    _cfdAmznClientToken ::
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

-- | Creates a value of 'CreateFunctionDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdName' - The name of the function definition.
--
-- * 'cfdInitialVersion' - Information about the initial version of the function definition.
--
-- * 'cfdTags' - Tag(s) to add to the new resource.
--
-- * 'cfdAmznClientToken' - A client token used to correlate requests and responses.
createFunctionDefinition ::
  CreateFunctionDefinition
createFunctionDefinition =
  CreateFunctionDefinition'
    { _cfdName = Nothing,
      _cfdInitialVersion = Nothing,
      _cfdTags = Nothing,
      _cfdAmznClientToken = Nothing
    }

-- | The name of the function definition.
cfdName :: Lens' CreateFunctionDefinition (Maybe Text)
cfdName = lens _cfdName (\s a -> s {_cfdName = a})

-- | Information about the initial version of the function definition.
cfdInitialVersion :: Lens' CreateFunctionDefinition (Maybe FunctionDefinitionVersion)
cfdInitialVersion = lens _cfdInitialVersion (\s a -> s {_cfdInitialVersion = a})

-- | Tag(s) to add to the new resource.
cfdTags :: Lens' CreateFunctionDefinition (HashMap Text Text)
cfdTags = lens _cfdTags (\s a -> s {_cfdTags = a}) . _Default . _Map

-- | A client token used to correlate requests and responses.
cfdAmznClientToken :: Lens' CreateFunctionDefinition (Maybe Text)
cfdAmznClientToken = lens _cfdAmznClientToken (\s a -> s {_cfdAmznClientToken = a})

instance AWSRequest CreateFunctionDefinition where
  type
    Rs CreateFunctionDefinition =
      CreateFunctionDefinitionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateFunctionDefinitionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "LatestVersionArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdatedTimestamp")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateFunctionDefinition

instance NFData CreateFunctionDefinition

instance ToHeaders CreateFunctionDefinition where
  toHeaders CreateFunctionDefinition' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cfdAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateFunctionDefinition where
  toJSON CreateFunctionDefinition' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _cfdName,
            ("InitialVersion" .=) <$> _cfdInitialVersion,
            ("tags" .=) <$> _cfdTags
          ]
      )

instance ToPath CreateFunctionDefinition where
  toPath = const "/greengrass/definition/functions"

instance ToQuery CreateFunctionDefinition where
  toQuery = const mempty

-- | /See:/ 'createFunctionDefinitionResponse' smart constructor.
data CreateFunctionDefinitionResponse = CreateFunctionDefinitionResponse'
  { _cfdrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _cfdrrsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _cfdrrsLatestVersion ::
      !( Maybe
           Text
       ),
    _cfdrrsARN ::
      !( Maybe
           Text
       ),
    _cfdrrsId ::
      !( Maybe
           Text
       ),
    _cfdrrsName ::
      !( Maybe
           Text
       ),
    _cfdrrsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _cfdrrsResponseStatus ::
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

-- | Creates a value of 'CreateFunctionDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'cfdrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'cfdrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'cfdrrsARN' - The ARN of the definition.
--
-- * 'cfdrrsId' - The ID of the definition.
--
-- * 'cfdrrsName' - The name of the definition.
--
-- * 'cfdrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'cfdrrsResponseStatus' - -- | The response status code.
createFunctionDefinitionResponse ::
  -- | 'cfdrrsResponseStatus'
  Int ->
  CreateFunctionDefinitionResponse
createFunctionDefinitionResponse pResponseStatus_ =
  CreateFunctionDefinitionResponse'
    { _cfdrrsCreationTimestamp =
        Nothing,
      _cfdrrsLatestVersionARN = Nothing,
      _cfdrrsLatestVersion = Nothing,
      _cfdrrsARN = Nothing,
      _cfdrrsId = Nothing,
      _cfdrrsName = Nothing,
      _cfdrrsLastUpdatedTimestamp = Nothing,
      _cfdrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
cfdrrsCreationTimestamp :: Lens' CreateFunctionDefinitionResponse (Maybe Text)
cfdrrsCreationTimestamp = lens _cfdrrsCreationTimestamp (\s a -> s {_cfdrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
cfdrrsLatestVersionARN :: Lens' CreateFunctionDefinitionResponse (Maybe Text)
cfdrrsLatestVersionARN = lens _cfdrrsLatestVersionARN (\s a -> s {_cfdrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
cfdrrsLatestVersion :: Lens' CreateFunctionDefinitionResponse (Maybe Text)
cfdrrsLatestVersion = lens _cfdrrsLatestVersion (\s a -> s {_cfdrrsLatestVersion = a})

-- | The ARN of the definition.
cfdrrsARN :: Lens' CreateFunctionDefinitionResponse (Maybe Text)
cfdrrsARN = lens _cfdrrsARN (\s a -> s {_cfdrrsARN = a})

-- | The ID of the definition.
cfdrrsId :: Lens' CreateFunctionDefinitionResponse (Maybe Text)
cfdrrsId = lens _cfdrrsId (\s a -> s {_cfdrrsId = a})

-- | The name of the definition.
cfdrrsName :: Lens' CreateFunctionDefinitionResponse (Maybe Text)
cfdrrsName = lens _cfdrrsName (\s a -> s {_cfdrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
cfdrrsLastUpdatedTimestamp :: Lens' CreateFunctionDefinitionResponse (Maybe Text)
cfdrrsLastUpdatedTimestamp = lens _cfdrrsLastUpdatedTimestamp (\s a -> s {_cfdrrsLastUpdatedTimestamp = a})

-- | -- | The response status code.
cfdrrsResponseStatus :: Lens' CreateFunctionDefinitionResponse Int
cfdrrsResponseStatus = lens _cfdrrsResponseStatus (\s a -> s {_cfdrrsResponseStatus = a})

instance NFData CreateFunctionDefinitionResponse
