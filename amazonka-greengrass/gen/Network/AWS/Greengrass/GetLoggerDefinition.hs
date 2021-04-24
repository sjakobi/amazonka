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
-- Module      : Network.AWS.Greengrass.GetLoggerDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a logger definition.
module Network.AWS.Greengrass.GetLoggerDefinition
  ( -- * Creating a Request
    getLoggerDefinition,
    GetLoggerDefinition,

    -- * Request Lenses
    gldLoggerDefinitionId,

    -- * Destructuring the Response
    getLoggerDefinitionResponse,
    GetLoggerDefinitionResponse,

    -- * Response Lenses
    gldrrsCreationTimestamp,
    gldrrsLatestVersionARN,
    gldrrsLatestVersion,
    gldrrsARN,
    gldrrsId,
    gldrrsName,
    gldrrsLastUpdatedTimestamp,
    gldrrsTags,
    gldrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLoggerDefinition' smart constructor.
newtype GetLoggerDefinition = GetLoggerDefinition'
  { _gldLoggerDefinitionId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetLoggerDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gldLoggerDefinitionId' - The ID of the logger definition.
getLoggerDefinition ::
  -- | 'gldLoggerDefinitionId'
  Text ->
  GetLoggerDefinition
getLoggerDefinition pLoggerDefinitionId_ =
  GetLoggerDefinition'
    { _gldLoggerDefinitionId =
        pLoggerDefinitionId_
    }

-- | The ID of the logger definition.
gldLoggerDefinitionId :: Lens' GetLoggerDefinition Text
gldLoggerDefinitionId = lens _gldLoggerDefinitionId (\s a -> s {_gldLoggerDefinitionId = a})

instance AWSRequest GetLoggerDefinition where
  type
    Rs GetLoggerDefinition =
      GetLoggerDefinitionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetLoggerDefinitionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "LatestVersionArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdatedTimestamp")
            <*> (x .?> "tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetLoggerDefinition

instance NFData GetLoggerDefinition

instance ToHeaders GetLoggerDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetLoggerDefinition where
  toPath GetLoggerDefinition' {..} =
    mconcat
      [ "/greengrass/definition/loggers/",
        toBS _gldLoggerDefinitionId
      ]

instance ToQuery GetLoggerDefinition where
  toQuery = const mempty

-- | /See:/ 'getLoggerDefinitionResponse' smart constructor.
data GetLoggerDefinitionResponse = GetLoggerDefinitionResponse'
  { _gldrrsCreationTimestamp ::
      !(Maybe Text),
    _gldrrsLatestVersionARN ::
      !(Maybe Text),
    _gldrrsLatestVersion ::
      !(Maybe Text),
    _gldrrsARN ::
      !(Maybe Text),
    _gldrrsId ::
      !(Maybe Text),
    _gldrrsName ::
      !(Maybe Text),
    _gldrrsLastUpdatedTimestamp ::
      !(Maybe Text),
    _gldrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gldrrsResponseStatus ::
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

-- | Creates a value of 'GetLoggerDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gldrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'gldrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'gldrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'gldrrsARN' - The ARN of the definition.
--
-- * 'gldrrsId' - The ID of the definition.
--
-- * 'gldrrsName' - The name of the definition.
--
-- * 'gldrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'gldrrsTags' - Tag(s) attached to the resource arn.
--
-- * 'gldrrsResponseStatus' - -- | The response status code.
getLoggerDefinitionResponse ::
  -- | 'gldrrsResponseStatus'
  Int ->
  GetLoggerDefinitionResponse
getLoggerDefinitionResponse pResponseStatus_ =
  GetLoggerDefinitionResponse'
    { _gldrrsCreationTimestamp =
        Nothing,
      _gldrrsLatestVersionARN = Nothing,
      _gldrrsLatestVersion = Nothing,
      _gldrrsARN = Nothing,
      _gldrrsId = Nothing,
      _gldrrsName = Nothing,
      _gldrrsLastUpdatedTimestamp = Nothing,
      _gldrrsTags = Nothing,
      _gldrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
gldrrsCreationTimestamp :: Lens' GetLoggerDefinitionResponse (Maybe Text)
gldrrsCreationTimestamp = lens _gldrrsCreationTimestamp (\s a -> s {_gldrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
gldrrsLatestVersionARN :: Lens' GetLoggerDefinitionResponse (Maybe Text)
gldrrsLatestVersionARN = lens _gldrrsLatestVersionARN (\s a -> s {_gldrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
gldrrsLatestVersion :: Lens' GetLoggerDefinitionResponse (Maybe Text)
gldrrsLatestVersion = lens _gldrrsLatestVersion (\s a -> s {_gldrrsLatestVersion = a})

-- | The ARN of the definition.
gldrrsARN :: Lens' GetLoggerDefinitionResponse (Maybe Text)
gldrrsARN = lens _gldrrsARN (\s a -> s {_gldrrsARN = a})

-- | The ID of the definition.
gldrrsId :: Lens' GetLoggerDefinitionResponse (Maybe Text)
gldrrsId = lens _gldrrsId (\s a -> s {_gldrrsId = a})

-- | The name of the definition.
gldrrsName :: Lens' GetLoggerDefinitionResponse (Maybe Text)
gldrrsName = lens _gldrrsName (\s a -> s {_gldrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
gldrrsLastUpdatedTimestamp :: Lens' GetLoggerDefinitionResponse (Maybe Text)
gldrrsLastUpdatedTimestamp = lens _gldrrsLastUpdatedTimestamp (\s a -> s {_gldrrsLastUpdatedTimestamp = a})

-- | Tag(s) attached to the resource arn.
gldrrsTags :: Lens' GetLoggerDefinitionResponse (HashMap Text Text)
gldrrsTags = lens _gldrrsTags (\s a -> s {_gldrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gldrrsResponseStatus :: Lens' GetLoggerDefinitionResponse Int
gldrrsResponseStatus = lens _gldrrsResponseStatus (\s a -> s {_gldrrsResponseStatus = a})

instance NFData GetLoggerDefinitionResponse
