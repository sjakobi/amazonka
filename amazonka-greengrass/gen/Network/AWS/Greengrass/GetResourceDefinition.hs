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
-- Module      : Network.AWS.Greengrass.GetResourceDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a resource definition, including its creation time and latest version.
module Network.AWS.Greengrass.GetResourceDefinition
  ( -- * Creating a Request
    getResourceDefinition,
    GetResourceDefinition,

    -- * Request Lenses
    grdResourceDefinitionId,

    -- * Destructuring the Response
    getResourceDefinitionResponse,
    GetResourceDefinitionResponse,

    -- * Response Lenses
    grdrrsCreationTimestamp,
    grdrrsLatestVersionARN,
    grdrrsLatestVersion,
    grdrrsARN,
    grdrrsId,
    grdrrsName,
    grdrrsLastUpdatedTimestamp,
    grdrrsTags,
    grdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getResourceDefinition' smart constructor.
newtype GetResourceDefinition = GetResourceDefinition'
  { _grdResourceDefinitionId ::
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

-- | Creates a value of 'GetResourceDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdResourceDefinitionId' - The ID of the resource definition.
getResourceDefinition ::
  -- | 'grdResourceDefinitionId'
  Text ->
  GetResourceDefinition
getResourceDefinition pResourceDefinitionId_ =
  GetResourceDefinition'
    { _grdResourceDefinitionId =
        pResourceDefinitionId_
    }

-- | The ID of the resource definition.
grdResourceDefinitionId :: Lens' GetResourceDefinition Text
grdResourceDefinitionId = lens _grdResourceDefinitionId (\s a -> s {_grdResourceDefinitionId = a})

instance AWSRequest GetResourceDefinition where
  type
    Rs GetResourceDefinition =
      GetResourceDefinitionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetResourceDefinitionResponse'
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

instance Hashable GetResourceDefinition

instance NFData GetResourceDefinition

instance ToHeaders GetResourceDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetResourceDefinition where
  toPath GetResourceDefinition' {..} =
    mconcat
      [ "/greengrass/definition/resources/",
        toBS _grdResourceDefinitionId
      ]

instance ToQuery GetResourceDefinition where
  toQuery = const mempty

-- | /See:/ 'getResourceDefinitionResponse' smart constructor.
data GetResourceDefinitionResponse = GetResourceDefinitionResponse'
  { _grdrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _grdrrsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _grdrrsLatestVersion ::
      !( Maybe
           Text
       ),
    _grdrrsARN ::
      !( Maybe
           Text
       ),
    _grdrrsId ::
      !( Maybe
           Text
       ),
    _grdrrsName ::
      !( Maybe
           Text
       ),
    _grdrrsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _grdrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _grdrrsResponseStatus ::
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

-- | Creates a value of 'GetResourceDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'grdrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'grdrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'grdrrsARN' - The ARN of the definition.
--
-- * 'grdrrsId' - The ID of the definition.
--
-- * 'grdrrsName' - The name of the definition.
--
-- * 'grdrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'grdrrsTags' - Tag(s) attached to the resource arn.
--
-- * 'grdrrsResponseStatus' - -- | The response status code.
getResourceDefinitionResponse ::
  -- | 'grdrrsResponseStatus'
  Int ->
  GetResourceDefinitionResponse
getResourceDefinitionResponse pResponseStatus_ =
  GetResourceDefinitionResponse'
    { _grdrrsCreationTimestamp =
        Nothing,
      _grdrrsLatestVersionARN = Nothing,
      _grdrrsLatestVersion = Nothing,
      _grdrrsARN = Nothing,
      _grdrrsId = Nothing,
      _grdrrsName = Nothing,
      _grdrrsLastUpdatedTimestamp = Nothing,
      _grdrrsTags = Nothing,
      _grdrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
grdrrsCreationTimestamp :: Lens' GetResourceDefinitionResponse (Maybe Text)
grdrrsCreationTimestamp = lens _grdrrsCreationTimestamp (\s a -> s {_grdrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
grdrrsLatestVersionARN :: Lens' GetResourceDefinitionResponse (Maybe Text)
grdrrsLatestVersionARN = lens _grdrrsLatestVersionARN (\s a -> s {_grdrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
grdrrsLatestVersion :: Lens' GetResourceDefinitionResponse (Maybe Text)
grdrrsLatestVersion = lens _grdrrsLatestVersion (\s a -> s {_grdrrsLatestVersion = a})

-- | The ARN of the definition.
grdrrsARN :: Lens' GetResourceDefinitionResponse (Maybe Text)
grdrrsARN = lens _grdrrsARN (\s a -> s {_grdrrsARN = a})

-- | The ID of the definition.
grdrrsId :: Lens' GetResourceDefinitionResponse (Maybe Text)
grdrrsId = lens _grdrrsId (\s a -> s {_grdrrsId = a})

-- | The name of the definition.
grdrrsName :: Lens' GetResourceDefinitionResponse (Maybe Text)
grdrrsName = lens _grdrrsName (\s a -> s {_grdrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
grdrrsLastUpdatedTimestamp :: Lens' GetResourceDefinitionResponse (Maybe Text)
grdrrsLastUpdatedTimestamp = lens _grdrrsLastUpdatedTimestamp (\s a -> s {_grdrrsLastUpdatedTimestamp = a})

-- | Tag(s) attached to the resource arn.
grdrrsTags :: Lens' GetResourceDefinitionResponse (HashMap Text Text)
grdrrsTags = lens _grdrrsTags (\s a -> s {_grdrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
grdrrsResponseStatus :: Lens' GetResourceDefinitionResponse Int
grdrrsResponseStatus = lens _grdrrsResponseStatus (\s a -> s {_grdrrsResponseStatus = a})

instance NFData GetResourceDefinitionResponse
