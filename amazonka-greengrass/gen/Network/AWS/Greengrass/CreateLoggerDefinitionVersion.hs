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
-- Module      : Network.AWS.Greengrass.CreateLoggerDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of a logger definition that has already been defined.
module Network.AWS.Greengrass.CreateLoggerDefinitionVersion
  ( -- * Creating a Request
    createLoggerDefinitionVersion,
    CreateLoggerDefinitionVersion,

    -- * Request Lenses
    cldvLoggers,
    cldvAmznClientToken,
    cldvLoggerDefinitionId,

    -- * Destructuring the Response
    createLoggerDefinitionVersionResponse,
    CreateLoggerDefinitionVersionResponse,

    -- * Response Lenses
    cldvrrsCreationTimestamp,
    cldvrrsARN,
    cldvrrsId,
    cldvrrsVersion,
    cldvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createLoggerDefinitionVersion' smart constructor.
data CreateLoggerDefinitionVersion = CreateLoggerDefinitionVersion'
  { _cldvLoggers ::
      !( Maybe
           [GreengrassLogger]
       ),
    _cldvAmznClientToken ::
      !( Maybe
           Text
       ),
    _cldvLoggerDefinitionId ::
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

-- | Creates a value of 'CreateLoggerDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldvLoggers' - A list of loggers.
--
-- * 'cldvAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'cldvLoggerDefinitionId' - The ID of the logger definition.
createLoggerDefinitionVersion ::
  -- | 'cldvLoggerDefinitionId'
  Text ->
  CreateLoggerDefinitionVersion
createLoggerDefinitionVersion pLoggerDefinitionId_ =
  CreateLoggerDefinitionVersion'
    { _cldvLoggers =
        Nothing,
      _cldvAmznClientToken = Nothing,
      _cldvLoggerDefinitionId =
        pLoggerDefinitionId_
    }

-- | A list of loggers.
cldvLoggers :: Lens' CreateLoggerDefinitionVersion [GreengrassLogger]
cldvLoggers = lens _cldvLoggers (\s a -> s {_cldvLoggers = a}) . _Default . _Coerce

-- | A client token used to correlate requests and responses.
cldvAmznClientToken :: Lens' CreateLoggerDefinitionVersion (Maybe Text)
cldvAmznClientToken = lens _cldvAmznClientToken (\s a -> s {_cldvAmznClientToken = a})

-- | The ID of the logger definition.
cldvLoggerDefinitionId :: Lens' CreateLoggerDefinitionVersion Text
cldvLoggerDefinitionId = lens _cldvLoggerDefinitionId (\s a -> s {_cldvLoggerDefinitionId = a})

instance AWSRequest CreateLoggerDefinitionVersion where
  type
    Rs CreateLoggerDefinitionVersion =
      CreateLoggerDefinitionVersionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateLoggerDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateLoggerDefinitionVersion

instance NFData CreateLoggerDefinitionVersion

instance ToHeaders CreateLoggerDefinitionVersion where
  toHeaders CreateLoggerDefinitionVersion' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cldvAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateLoggerDefinitionVersion where
  toJSON CreateLoggerDefinitionVersion' {..} =
    object
      (catMaybes [("Loggers" .=) <$> _cldvLoggers])

instance ToPath CreateLoggerDefinitionVersion where
  toPath CreateLoggerDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/loggers/",
        toBS _cldvLoggerDefinitionId,
        "/versions"
      ]

instance ToQuery CreateLoggerDefinitionVersion where
  toQuery = const mempty

-- | /See:/ 'createLoggerDefinitionVersionResponse' smart constructor.
data CreateLoggerDefinitionVersionResponse = CreateLoggerDefinitionVersionResponse'
  { _cldvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _cldvrrsARN ::
      !( Maybe
           Text
       ),
    _cldvrrsId ::
      !( Maybe
           Text
       ),
    _cldvrrsVersion ::
      !( Maybe
           Text
       ),
    _cldvrrsResponseStatus ::
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

-- | Creates a value of 'CreateLoggerDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'cldvrrsARN' - The ARN of the version.
--
-- * 'cldvrrsId' - The ID of the parent definition that the version is associated with.
--
-- * 'cldvrrsVersion' - The ID of the version.
--
-- * 'cldvrrsResponseStatus' - -- | The response status code.
createLoggerDefinitionVersionResponse ::
  -- | 'cldvrrsResponseStatus'
  Int ->
  CreateLoggerDefinitionVersionResponse
createLoggerDefinitionVersionResponse
  pResponseStatus_ =
    CreateLoggerDefinitionVersionResponse'
      { _cldvrrsCreationTimestamp =
          Nothing,
        _cldvrrsARN = Nothing,
        _cldvrrsId = Nothing,
        _cldvrrsVersion = Nothing,
        _cldvrrsResponseStatus =
          pResponseStatus_
      }

-- | The time, in milliseconds since the epoch, when the version was created.
cldvrrsCreationTimestamp :: Lens' CreateLoggerDefinitionVersionResponse (Maybe Text)
cldvrrsCreationTimestamp = lens _cldvrrsCreationTimestamp (\s a -> s {_cldvrrsCreationTimestamp = a})

-- | The ARN of the version.
cldvrrsARN :: Lens' CreateLoggerDefinitionVersionResponse (Maybe Text)
cldvrrsARN = lens _cldvrrsARN (\s a -> s {_cldvrrsARN = a})

-- | The ID of the parent definition that the version is associated with.
cldvrrsId :: Lens' CreateLoggerDefinitionVersionResponse (Maybe Text)
cldvrrsId = lens _cldvrrsId (\s a -> s {_cldvrrsId = a})

-- | The ID of the version.
cldvrrsVersion :: Lens' CreateLoggerDefinitionVersionResponse (Maybe Text)
cldvrrsVersion = lens _cldvrrsVersion (\s a -> s {_cldvrrsVersion = a})

-- | -- | The response status code.
cldvrrsResponseStatus :: Lens' CreateLoggerDefinitionVersionResponse Int
cldvrrsResponseStatus = lens _cldvrrsResponseStatus (\s a -> s {_cldvrrsResponseStatus = a})

instance NFData CreateLoggerDefinitionVersionResponse
