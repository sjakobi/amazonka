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
-- Module      : Network.AWS.Greengrass.CreateFunctionDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a Lambda function definition that has already been defined.
module Network.AWS.Greengrass.CreateFunctionDefinitionVersion
  ( -- * Creating a Request
    createFunctionDefinitionVersion,
    CreateFunctionDefinitionVersion,

    -- * Request Lenses
    cfdvFunctions,
    cfdvDefaultConfig,
    cfdvAmznClientToken,
    cfdvFunctionDefinitionId,

    -- * Destructuring the Response
    createFunctionDefinitionVersionResponse,
    CreateFunctionDefinitionVersionResponse,

    -- * Response Lenses
    cfdvrrsCreationTimestamp,
    cfdvrrsARN,
    cfdvrrsId,
    cfdvrrsVersion,
    cfdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Information needed to create a function definition version.
--
-- /See:/ 'createFunctionDefinitionVersion' smart constructor.
data CreateFunctionDefinitionVersion = CreateFunctionDefinitionVersion'
  { _cfdvFunctions ::
      !( Maybe
           [Function]
       ),
    _cfdvDefaultConfig ::
      !( Maybe
           FunctionDefaultConfig
       ),
    _cfdvAmznClientToken ::
      !( Maybe
           Text
       ),
    _cfdvFunctionDefinitionId ::
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

-- | Creates a value of 'CreateFunctionDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdvFunctions' - A list of Lambda functions in this function definition version.
--
-- * 'cfdvDefaultConfig' - The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
--
-- * 'cfdvAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'cfdvFunctionDefinitionId' - The ID of the Lambda function definition.
createFunctionDefinitionVersion ::
  -- | 'cfdvFunctionDefinitionId'
  Text ->
  CreateFunctionDefinitionVersion
createFunctionDefinitionVersion
  pFunctionDefinitionId_ =
    CreateFunctionDefinitionVersion'
      { _cfdvFunctions =
          Nothing,
        _cfdvDefaultConfig = Nothing,
        _cfdvAmznClientToken = Nothing,
        _cfdvFunctionDefinitionId =
          pFunctionDefinitionId_
      }

-- | A list of Lambda functions in this function definition version.
cfdvFunctions :: Lens' CreateFunctionDefinitionVersion [Function]
cfdvFunctions = lens _cfdvFunctions (\s a -> s {_cfdvFunctions = a}) . _Default . _Coerce

-- | The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
cfdvDefaultConfig :: Lens' CreateFunctionDefinitionVersion (Maybe FunctionDefaultConfig)
cfdvDefaultConfig = lens _cfdvDefaultConfig (\s a -> s {_cfdvDefaultConfig = a})

-- | A client token used to correlate requests and responses.
cfdvAmznClientToken :: Lens' CreateFunctionDefinitionVersion (Maybe Text)
cfdvAmznClientToken = lens _cfdvAmznClientToken (\s a -> s {_cfdvAmznClientToken = a})

-- | The ID of the Lambda function definition.
cfdvFunctionDefinitionId :: Lens' CreateFunctionDefinitionVersion Text
cfdvFunctionDefinitionId = lens _cfdvFunctionDefinitionId (\s a -> s {_cfdvFunctionDefinitionId = a})

instance AWSRequest CreateFunctionDefinitionVersion where
  type
    Rs CreateFunctionDefinitionVersion =
      CreateFunctionDefinitionVersionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateFunctionDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateFunctionDefinitionVersion

instance NFData CreateFunctionDefinitionVersion

instance ToHeaders CreateFunctionDefinitionVersion where
  toHeaders CreateFunctionDefinitionVersion' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cfdvAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateFunctionDefinitionVersion where
  toJSON CreateFunctionDefinitionVersion' {..} =
    object
      ( catMaybes
          [ ("Functions" .=) <$> _cfdvFunctions,
            ("DefaultConfig" .=) <$> _cfdvDefaultConfig
          ]
      )

instance ToPath CreateFunctionDefinitionVersion where
  toPath CreateFunctionDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/functions/",
        toBS _cfdvFunctionDefinitionId,
        "/versions"
      ]

instance ToQuery CreateFunctionDefinitionVersion where
  toQuery = const mempty

-- | /See:/ 'createFunctionDefinitionVersionResponse' smart constructor.
data CreateFunctionDefinitionVersionResponse = CreateFunctionDefinitionVersionResponse'
  { _cfdvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _cfdvrrsARN ::
      !( Maybe
           Text
       ),
    _cfdvrrsId ::
      !( Maybe
           Text
       ),
    _cfdvrrsVersion ::
      !( Maybe
           Text
       ),
    _cfdvrrsResponseStatus ::
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

-- | Creates a value of 'CreateFunctionDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'cfdvrrsARN' - The ARN of the version.
--
-- * 'cfdvrrsId' - The ID of the parent definition that the version is associated with.
--
-- * 'cfdvrrsVersion' - The ID of the version.
--
-- * 'cfdvrrsResponseStatus' - -- | The response status code.
createFunctionDefinitionVersionResponse ::
  -- | 'cfdvrrsResponseStatus'
  Int ->
  CreateFunctionDefinitionVersionResponse
createFunctionDefinitionVersionResponse
  pResponseStatus_ =
    CreateFunctionDefinitionVersionResponse'
      { _cfdvrrsCreationTimestamp =
          Nothing,
        _cfdvrrsARN = Nothing,
        _cfdvrrsId = Nothing,
        _cfdvrrsVersion = Nothing,
        _cfdvrrsResponseStatus =
          pResponseStatus_
      }

-- | The time, in milliseconds since the epoch, when the version was created.
cfdvrrsCreationTimestamp :: Lens' CreateFunctionDefinitionVersionResponse (Maybe Text)
cfdvrrsCreationTimestamp = lens _cfdvrrsCreationTimestamp (\s a -> s {_cfdvrrsCreationTimestamp = a})

-- | The ARN of the version.
cfdvrrsARN :: Lens' CreateFunctionDefinitionVersionResponse (Maybe Text)
cfdvrrsARN = lens _cfdvrrsARN (\s a -> s {_cfdvrrsARN = a})

-- | The ID of the parent definition that the version is associated with.
cfdvrrsId :: Lens' CreateFunctionDefinitionVersionResponse (Maybe Text)
cfdvrrsId = lens _cfdvrrsId (\s a -> s {_cfdvrrsId = a})

-- | The ID of the version.
cfdvrrsVersion :: Lens' CreateFunctionDefinitionVersionResponse (Maybe Text)
cfdvrrsVersion = lens _cfdvrrsVersion (\s a -> s {_cfdvrrsVersion = a})

-- | -- | The response status code.
cfdvrrsResponseStatus :: Lens' CreateFunctionDefinitionVersionResponse Int
cfdvrrsResponseStatus = lens _cfdvrrsResponseStatus (\s a -> s {_cfdvrrsResponseStatus = a})

instance
  NFData
    CreateFunctionDefinitionVersionResponse
