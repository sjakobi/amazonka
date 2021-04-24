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
-- Module      : Network.AWS.Greengrass.GetConnectorDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a connector definition.
module Network.AWS.Greengrass.GetConnectorDefinition
  ( -- * Creating a Request
    getConnectorDefinition,
    GetConnectorDefinition,

    -- * Request Lenses
    gcdConnectorDefinitionId,

    -- * Destructuring the Response
    getConnectorDefinitionResponse,
    GetConnectorDefinitionResponse,

    -- * Response Lenses
    getrsCreationTimestamp,
    getrsLatestVersionARN,
    getrsLatestVersion,
    getrsARN,
    getrsId,
    getrsName,
    getrsLastUpdatedTimestamp,
    getrsTags,
    getrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getConnectorDefinition' smart constructor.
newtype GetConnectorDefinition = GetConnectorDefinition'
  { _gcdConnectorDefinitionId ::
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

-- | Creates a value of 'GetConnectorDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdConnectorDefinitionId' - The ID of the connector definition.
getConnectorDefinition ::
  -- | 'gcdConnectorDefinitionId'
  Text ->
  GetConnectorDefinition
getConnectorDefinition pConnectorDefinitionId_ =
  GetConnectorDefinition'
    { _gcdConnectorDefinitionId =
        pConnectorDefinitionId_
    }

-- | The ID of the connector definition.
gcdConnectorDefinitionId :: Lens' GetConnectorDefinition Text
gcdConnectorDefinitionId = lens _gcdConnectorDefinitionId (\s a -> s {_gcdConnectorDefinitionId = a})

instance AWSRequest GetConnectorDefinition where
  type
    Rs GetConnectorDefinition =
      GetConnectorDefinitionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetConnectorDefinitionResponse'
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

instance Hashable GetConnectorDefinition

instance NFData GetConnectorDefinition

instance ToHeaders GetConnectorDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetConnectorDefinition where
  toPath GetConnectorDefinition' {..} =
    mconcat
      [ "/greengrass/definition/connectors/",
        toBS _gcdConnectorDefinitionId
      ]

instance ToQuery GetConnectorDefinition where
  toQuery = const mempty

-- | /See:/ 'getConnectorDefinitionResponse' smart constructor.
data GetConnectorDefinitionResponse = GetConnectorDefinitionResponse'
  { _getrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _getrsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _getrsLatestVersion ::
      !( Maybe
           Text
       ),
    _getrsARN ::
      !( Maybe
           Text
       ),
    _getrsId ::
      !( Maybe
           Text
       ),
    _getrsName ::
      !( Maybe
           Text
       ),
    _getrsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _getrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _getrsResponseStatus ::
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

-- | Creates a value of 'GetConnectorDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'getrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'getrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'getrsARN' - The ARN of the definition.
--
-- * 'getrsId' - The ID of the definition.
--
-- * 'getrsName' - The name of the definition.
--
-- * 'getrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'getrsTags' - Tag(s) attached to the resource arn.
--
-- * 'getrsResponseStatus' - -- | The response status code.
getConnectorDefinitionResponse ::
  -- | 'getrsResponseStatus'
  Int ->
  GetConnectorDefinitionResponse
getConnectorDefinitionResponse pResponseStatus_ =
  GetConnectorDefinitionResponse'
    { _getrsCreationTimestamp =
        Nothing,
      _getrsLatestVersionARN = Nothing,
      _getrsLatestVersion = Nothing,
      _getrsARN = Nothing,
      _getrsId = Nothing,
      _getrsName = Nothing,
      _getrsLastUpdatedTimestamp = Nothing,
      _getrsTags = Nothing,
      _getrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
getrsCreationTimestamp :: Lens' GetConnectorDefinitionResponse (Maybe Text)
getrsCreationTimestamp = lens _getrsCreationTimestamp (\s a -> s {_getrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
getrsLatestVersionARN :: Lens' GetConnectorDefinitionResponse (Maybe Text)
getrsLatestVersionARN = lens _getrsLatestVersionARN (\s a -> s {_getrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
getrsLatestVersion :: Lens' GetConnectorDefinitionResponse (Maybe Text)
getrsLatestVersion = lens _getrsLatestVersion (\s a -> s {_getrsLatestVersion = a})

-- | The ARN of the definition.
getrsARN :: Lens' GetConnectorDefinitionResponse (Maybe Text)
getrsARN = lens _getrsARN (\s a -> s {_getrsARN = a})

-- | The ID of the definition.
getrsId :: Lens' GetConnectorDefinitionResponse (Maybe Text)
getrsId = lens _getrsId (\s a -> s {_getrsId = a})

-- | The name of the definition.
getrsName :: Lens' GetConnectorDefinitionResponse (Maybe Text)
getrsName = lens _getrsName (\s a -> s {_getrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
getrsLastUpdatedTimestamp :: Lens' GetConnectorDefinitionResponse (Maybe Text)
getrsLastUpdatedTimestamp = lens _getrsLastUpdatedTimestamp (\s a -> s {_getrsLastUpdatedTimestamp = a})

-- | Tag(s) attached to the resource arn.
getrsTags :: Lens' GetConnectorDefinitionResponse (HashMap Text Text)
getrsTags = lens _getrsTags (\s a -> s {_getrsTags = a}) . _Default . _Map

-- | -- | The response status code.
getrsResponseStatus :: Lens' GetConnectorDefinitionResponse Int
getrsResponseStatus = lens _getrsResponseStatus (\s a -> s {_getrsResponseStatus = a})

instance NFData GetConnectorDefinitionResponse
