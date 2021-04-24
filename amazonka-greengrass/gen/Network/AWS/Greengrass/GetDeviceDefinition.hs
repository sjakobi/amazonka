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
-- Module      : Network.AWS.Greengrass.GetDeviceDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a device definition.
module Network.AWS.Greengrass.GetDeviceDefinition
  ( -- * Creating a Request
    getDeviceDefinition,
    GetDeviceDefinition,

    -- * Request Lenses
    gddDeviceDefinitionId,

    -- * Destructuring the Response
    getDeviceDefinitionResponse,
    GetDeviceDefinitionResponse,

    -- * Response Lenses
    gddrrsCreationTimestamp,
    gddrrsLatestVersionARN,
    gddrrsLatestVersion,
    gddrrsARN,
    gddrrsId,
    gddrrsName,
    gddrrsLastUpdatedTimestamp,
    gddrrsTags,
    gddrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDeviceDefinition' smart constructor.
newtype GetDeviceDefinition = GetDeviceDefinition'
  { _gddDeviceDefinitionId ::
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

-- | Creates a value of 'GetDeviceDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddDeviceDefinitionId' - The ID of the device definition.
getDeviceDefinition ::
  -- | 'gddDeviceDefinitionId'
  Text ->
  GetDeviceDefinition
getDeviceDefinition pDeviceDefinitionId_ =
  GetDeviceDefinition'
    { _gddDeviceDefinitionId =
        pDeviceDefinitionId_
    }

-- | The ID of the device definition.
gddDeviceDefinitionId :: Lens' GetDeviceDefinition Text
gddDeviceDefinitionId = lens _gddDeviceDefinitionId (\s a -> s {_gddDeviceDefinitionId = a})

instance AWSRequest GetDeviceDefinition where
  type
    Rs GetDeviceDefinition =
      GetDeviceDefinitionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetDeviceDefinitionResponse'
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

instance Hashable GetDeviceDefinition

instance NFData GetDeviceDefinition

instance ToHeaders GetDeviceDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetDeviceDefinition where
  toPath GetDeviceDefinition' {..} =
    mconcat
      [ "/greengrass/definition/devices/",
        toBS _gddDeviceDefinitionId
      ]

instance ToQuery GetDeviceDefinition where
  toQuery = const mempty

-- | /See:/ 'getDeviceDefinitionResponse' smart constructor.
data GetDeviceDefinitionResponse = GetDeviceDefinitionResponse'
  { _gddrrsCreationTimestamp ::
      !(Maybe Text),
    _gddrrsLatestVersionARN ::
      !(Maybe Text),
    _gddrrsLatestVersion ::
      !(Maybe Text),
    _gddrrsARN ::
      !(Maybe Text),
    _gddrrsId ::
      !(Maybe Text),
    _gddrrsName ::
      !(Maybe Text),
    _gddrrsLastUpdatedTimestamp ::
      !(Maybe Text),
    _gddrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gddrrsResponseStatus ::
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

-- | Creates a value of 'GetDeviceDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'gddrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'gddrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'gddrrsARN' - The ARN of the definition.
--
-- * 'gddrrsId' - The ID of the definition.
--
-- * 'gddrrsName' - The name of the definition.
--
-- * 'gddrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'gddrrsTags' - Tag(s) attached to the resource arn.
--
-- * 'gddrrsResponseStatus' - -- | The response status code.
getDeviceDefinitionResponse ::
  -- | 'gddrrsResponseStatus'
  Int ->
  GetDeviceDefinitionResponse
getDeviceDefinitionResponse pResponseStatus_ =
  GetDeviceDefinitionResponse'
    { _gddrrsCreationTimestamp =
        Nothing,
      _gddrrsLatestVersionARN = Nothing,
      _gddrrsLatestVersion = Nothing,
      _gddrrsARN = Nothing,
      _gddrrsId = Nothing,
      _gddrrsName = Nothing,
      _gddrrsLastUpdatedTimestamp = Nothing,
      _gddrrsTags = Nothing,
      _gddrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
gddrrsCreationTimestamp :: Lens' GetDeviceDefinitionResponse (Maybe Text)
gddrrsCreationTimestamp = lens _gddrrsCreationTimestamp (\s a -> s {_gddrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
gddrrsLatestVersionARN :: Lens' GetDeviceDefinitionResponse (Maybe Text)
gddrrsLatestVersionARN = lens _gddrrsLatestVersionARN (\s a -> s {_gddrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
gddrrsLatestVersion :: Lens' GetDeviceDefinitionResponse (Maybe Text)
gddrrsLatestVersion = lens _gddrrsLatestVersion (\s a -> s {_gddrrsLatestVersion = a})

-- | The ARN of the definition.
gddrrsARN :: Lens' GetDeviceDefinitionResponse (Maybe Text)
gddrrsARN = lens _gddrrsARN (\s a -> s {_gddrrsARN = a})

-- | The ID of the definition.
gddrrsId :: Lens' GetDeviceDefinitionResponse (Maybe Text)
gddrrsId = lens _gddrrsId (\s a -> s {_gddrrsId = a})

-- | The name of the definition.
gddrrsName :: Lens' GetDeviceDefinitionResponse (Maybe Text)
gddrrsName = lens _gddrrsName (\s a -> s {_gddrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
gddrrsLastUpdatedTimestamp :: Lens' GetDeviceDefinitionResponse (Maybe Text)
gddrrsLastUpdatedTimestamp = lens _gddrrsLastUpdatedTimestamp (\s a -> s {_gddrrsLastUpdatedTimestamp = a})

-- | Tag(s) attached to the resource arn.
gddrrsTags :: Lens' GetDeviceDefinitionResponse (HashMap Text Text)
gddrrsTags = lens _gddrrsTags (\s a -> s {_gddrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gddrrsResponseStatus :: Lens' GetDeviceDefinitionResponse Int
gddrrsResponseStatus = lens _gddrrsResponseStatus (\s a -> s {_gddrrsResponseStatus = a})

instance NFData GetDeviceDefinitionResponse
