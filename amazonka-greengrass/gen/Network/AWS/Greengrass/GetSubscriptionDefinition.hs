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
-- Module      : Network.AWS.Greengrass.GetSubscriptionDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a subscription definition.
module Network.AWS.Greengrass.GetSubscriptionDefinition
  ( -- * Creating a Request
    getSubscriptionDefinition,
    GetSubscriptionDefinition,

    -- * Request Lenses
    gsdSubscriptionDefinitionId,

    -- * Destructuring the Response
    getSubscriptionDefinitionResponse,
    GetSubscriptionDefinitionResponse,

    -- * Response Lenses
    gsdrrsCreationTimestamp,
    gsdrrsLatestVersionARN,
    gsdrrsLatestVersion,
    gsdrrsARN,
    gsdrrsId,
    gsdrrsName,
    gsdrrsLastUpdatedTimestamp,
    gsdrrsTags,
    gsdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSubscriptionDefinition' smart constructor.
newtype GetSubscriptionDefinition = GetSubscriptionDefinition'
  { _gsdSubscriptionDefinitionId ::
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

-- | Creates a value of 'GetSubscriptionDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdSubscriptionDefinitionId' - The ID of the subscription definition.
getSubscriptionDefinition ::
  -- | 'gsdSubscriptionDefinitionId'
  Text ->
  GetSubscriptionDefinition
getSubscriptionDefinition pSubscriptionDefinitionId_ =
  GetSubscriptionDefinition'
    { _gsdSubscriptionDefinitionId =
        pSubscriptionDefinitionId_
    }

-- | The ID of the subscription definition.
gsdSubscriptionDefinitionId :: Lens' GetSubscriptionDefinition Text
gsdSubscriptionDefinitionId = lens _gsdSubscriptionDefinitionId (\s a -> s {_gsdSubscriptionDefinitionId = a})

instance AWSRequest GetSubscriptionDefinition where
  type
    Rs GetSubscriptionDefinition =
      GetSubscriptionDefinitionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetSubscriptionDefinitionResponse'
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

instance Hashable GetSubscriptionDefinition

instance NFData GetSubscriptionDefinition

instance ToHeaders GetSubscriptionDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSubscriptionDefinition where
  toPath GetSubscriptionDefinition' {..} =
    mconcat
      [ "/greengrass/definition/subscriptions/",
        toBS _gsdSubscriptionDefinitionId
      ]

instance ToQuery GetSubscriptionDefinition where
  toQuery = const mempty

-- | /See:/ 'getSubscriptionDefinitionResponse' smart constructor.
data GetSubscriptionDefinitionResponse = GetSubscriptionDefinitionResponse'
  { _gsdrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _gsdrrsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _gsdrrsLatestVersion ::
      !( Maybe
           Text
       ),
    _gsdrrsARN ::
      !( Maybe
           Text
       ),
    _gsdrrsId ::
      !( Maybe
           Text
       ),
    _gsdrrsName ::
      !( Maybe
           Text
       ),
    _gsdrrsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _gsdrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gsdrrsResponseStatus ::
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

-- | Creates a value of 'GetSubscriptionDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'gsdrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'gsdrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'gsdrrsARN' - The ARN of the definition.
--
-- * 'gsdrrsId' - The ID of the definition.
--
-- * 'gsdrrsName' - The name of the definition.
--
-- * 'gsdrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'gsdrrsTags' - Tag(s) attached to the resource arn.
--
-- * 'gsdrrsResponseStatus' - -- | The response status code.
getSubscriptionDefinitionResponse ::
  -- | 'gsdrrsResponseStatus'
  Int ->
  GetSubscriptionDefinitionResponse
getSubscriptionDefinitionResponse pResponseStatus_ =
  GetSubscriptionDefinitionResponse'
    { _gsdrrsCreationTimestamp =
        Nothing,
      _gsdrrsLatestVersionARN = Nothing,
      _gsdrrsLatestVersion = Nothing,
      _gsdrrsARN = Nothing,
      _gsdrrsId = Nothing,
      _gsdrrsName = Nothing,
      _gsdrrsLastUpdatedTimestamp = Nothing,
      _gsdrrsTags = Nothing,
      _gsdrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
gsdrrsCreationTimestamp :: Lens' GetSubscriptionDefinitionResponse (Maybe Text)
gsdrrsCreationTimestamp = lens _gsdrrsCreationTimestamp (\s a -> s {_gsdrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
gsdrrsLatestVersionARN :: Lens' GetSubscriptionDefinitionResponse (Maybe Text)
gsdrrsLatestVersionARN = lens _gsdrrsLatestVersionARN (\s a -> s {_gsdrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
gsdrrsLatestVersion :: Lens' GetSubscriptionDefinitionResponse (Maybe Text)
gsdrrsLatestVersion = lens _gsdrrsLatestVersion (\s a -> s {_gsdrrsLatestVersion = a})

-- | The ARN of the definition.
gsdrrsARN :: Lens' GetSubscriptionDefinitionResponse (Maybe Text)
gsdrrsARN = lens _gsdrrsARN (\s a -> s {_gsdrrsARN = a})

-- | The ID of the definition.
gsdrrsId :: Lens' GetSubscriptionDefinitionResponse (Maybe Text)
gsdrrsId = lens _gsdrrsId (\s a -> s {_gsdrrsId = a})

-- | The name of the definition.
gsdrrsName :: Lens' GetSubscriptionDefinitionResponse (Maybe Text)
gsdrrsName = lens _gsdrrsName (\s a -> s {_gsdrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
gsdrrsLastUpdatedTimestamp :: Lens' GetSubscriptionDefinitionResponse (Maybe Text)
gsdrrsLastUpdatedTimestamp = lens _gsdrrsLastUpdatedTimestamp (\s a -> s {_gsdrrsLastUpdatedTimestamp = a})

-- | Tag(s) attached to the resource arn.
gsdrrsTags :: Lens' GetSubscriptionDefinitionResponse (HashMap Text Text)
gsdrrsTags = lens _gsdrrsTags (\s a -> s {_gsdrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gsdrrsResponseStatus :: Lens' GetSubscriptionDefinitionResponse Int
gsdrrsResponseStatus = lens _gsdrrsResponseStatus (\s a -> s {_gsdrrsResponseStatus = a})

instance NFData GetSubscriptionDefinitionResponse
