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
-- Module      : Network.AWS.Greengrass.GetCoreDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a core definition version.
module Network.AWS.Greengrass.GetCoreDefinition
  ( -- * Creating a Request
    getCoreDefinition,
    GetCoreDefinition,

    -- * Request Lenses
    gcdCoreDefinitionId,

    -- * Destructuring the Response
    getCoreDefinitionResponse,
    GetCoreDefinitionResponse,

    -- * Response Lenses
    gcdrrsCreationTimestamp,
    gcdrrsLatestVersionARN,
    gcdrrsLatestVersion,
    gcdrrsARN,
    gcdrrsId,
    gcdrrsName,
    gcdrrsLastUpdatedTimestamp,
    gcdrrsTags,
    gcdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCoreDefinition' smart constructor.
newtype GetCoreDefinition = GetCoreDefinition'
  { _gcdCoreDefinitionId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCoreDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdCoreDefinitionId' - The ID of the core definition.
getCoreDefinition ::
  -- | 'gcdCoreDefinitionId'
  Text ->
  GetCoreDefinition
getCoreDefinition pCoreDefinitionId_ =
  GetCoreDefinition'
    { _gcdCoreDefinitionId =
        pCoreDefinitionId_
    }

-- | The ID of the core definition.
gcdCoreDefinitionId :: Lens' GetCoreDefinition Text
gcdCoreDefinitionId = lens _gcdCoreDefinitionId (\s a -> s {_gcdCoreDefinitionId = a})

instance AWSRequest GetCoreDefinition where
  type Rs GetCoreDefinition = GetCoreDefinitionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetCoreDefinitionResponse'
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

instance Hashable GetCoreDefinition

instance NFData GetCoreDefinition

instance ToHeaders GetCoreDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetCoreDefinition where
  toPath GetCoreDefinition' {..} =
    mconcat
      [ "/greengrass/definition/cores/",
        toBS _gcdCoreDefinitionId
      ]

instance ToQuery GetCoreDefinition where
  toQuery = const mempty

-- | /See:/ 'getCoreDefinitionResponse' smart constructor.
data GetCoreDefinitionResponse = GetCoreDefinitionResponse'
  { _gcdrrsCreationTimestamp ::
      !(Maybe Text),
    _gcdrrsLatestVersionARN ::
      !(Maybe Text),
    _gcdrrsLatestVersion ::
      !(Maybe Text),
    _gcdrrsARN ::
      !(Maybe Text),
    _gcdrrsId ::
      !(Maybe Text),
    _gcdrrsName ::
      !(Maybe Text),
    _gcdrrsLastUpdatedTimestamp ::
      !(Maybe Text),
    _gcdrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gcdrrsResponseStatus ::
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

-- | Creates a value of 'GetCoreDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'gcdrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'gcdrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'gcdrrsARN' - The ARN of the definition.
--
-- * 'gcdrrsId' - The ID of the definition.
--
-- * 'gcdrrsName' - The name of the definition.
--
-- * 'gcdrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'gcdrrsTags' - Tag(s) attached to the resource arn.
--
-- * 'gcdrrsResponseStatus' - -- | The response status code.
getCoreDefinitionResponse ::
  -- | 'gcdrrsResponseStatus'
  Int ->
  GetCoreDefinitionResponse
getCoreDefinitionResponse pResponseStatus_ =
  GetCoreDefinitionResponse'
    { _gcdrrsCreationTimestamp =
        Nothing,
      _gcdrrsLatestVersionARN = Nothing,
      _gcdrrsLatestVersion = Nothing,
      _gcdrrsARN = Nothing,
      _gcdrrsId = Nothing,
      _gcdrrsName = Nothing,
      _gcdrrsLastUpdatedTimestamp = Nothing,
      _gcdrrsTags = Nothing,
      _gcdrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
gcdrrsCreationTimestamp :: Lens' GetCoreDefinitionResponse (Maybe Text)
gcdrrsCreationTimestamp = lens _gcdrrsCreationTimestamp (\s a -> s {_gcdrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
gcdrrsLatestVersionARN :: Lens' GetCoreDefinitionResponse (Maybe Text)
gcdrrsLatestVersionARN = lens _gcdrrsLatestVersionARN (\s a -> s {_gcdrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
gcdrrsLatestVersion :: Lens' GetCoreDefinitionResponse (Maybe Text)
gcdrrsLatestVersion = lens _gcdrrsLatestVersion (\s a -> s {_gcdrrsLatestVersion = a})

-- | The ARN of the definition.
gcdrrsARN :: Lens' GetCoreDefinitionResponse (Maybe Text)
gcdrrsARN = lens _gcdrrsARN (\s a -> s {_gcdrrsARN = a})

-- | The ID of the definition.
gcdrrsId :: Lens' GetCoreDefinitionResponse (Maybe Text)
gcdrrsId = lens _gcdrrsId (\s a -> s {_gcdrrsId = a})

-- | The name of the definition.
gcdrrsName :: Lens' GetCoreDefinitionResponse (Maybe Text)
gcdrrsName = lens _gcdrrsName (\s a -> s {_gcdrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
gcdrrsLastUpdatedTimestamp :: Lens' GetCoreDefinitionResponse (Maybe Text)
gcdrrsLastUpdatedTimestamp = lens _gcdrrsLastUpdatedTimestamp (\s a -> s {_gcdrrsLastUpdatedTimestamp = a})

-- | Tag(s) attached to the resource arn.
gcdrrsTags :: Lens' GetCoreDefinitionResponse (HashMap Text Text)
gcdrrsTags = lens _gcdrrsTags (\s a -> s {_gcdrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gcdrrsResponseStatus :: Lens' GetCoreDefinitionResponse Int
gcdrrsResponseStatus = lens _gcdrrsResponseStatus (\s a -> s {_gcdrrsResponseStatus = a})

instance NFData GetCoreDefinitionResponse
