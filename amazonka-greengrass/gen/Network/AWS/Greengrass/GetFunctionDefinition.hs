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
-- Module      : Network.AWS.Greengrass.GetFunctionDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a Lambda function definition, including its creation time and latest version.
module Network.AWS.Greengrass.GetFunctionDefinition
  ( -- * Creating a Request
    getFunctionDefinition,
    GetFunctionDefinition,

    -- * Request Lenses
    gfdFunctionDefinitionId,

    -- * Destructuring the Response
    getFunctionDefinitionResponse,
    GetFunctionDefinitionResponse,

    -- * Response Lenses
    gfdrrsCreationTimestamp,
    gfdrrsLatestVersionARN,
    gfdrrsLatestVersion,
    gfdrrsARN,
    gfdrrsId,
    gfdrrsName,
    gfdrrsLastUpdatedTimestamp,
    gfdrrsTags,
    gfdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFunctionDefinition' smart constructor.
newtype GetFunctionDefinition = GetFunctionDefinition'
  { _gfdFunctionDefinitionId ::
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

-- | Creates a value of 'GetFunctionDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfdFunctionDefinitionId' - The ID of the Lambda function definition.
getFunctionDefinition ::
  -- | 'gfdFunctionDefinitionId'
  Text ->
  GetFunctionDefinition
getFunctionDefinition pFunctionDefinitionId_ =
  GetFunctionDefinition'
    { _gfdFunctionDefinitionId =
        pFunctionDefinitionId_
    }

-- | The ID of the Lambda function definition.
gfdFunctionDefinitionId :: Lens' GetFunctionDefinition Text
gfdFunctionDefinitionId = lens _gfdFunctionDefinitionId (\s a -> s {_gfdFunctionDefinitionId = a})

instance AWSRequest GetFunctionDefinition where
  type
    Rs GetFunctionDefinition =
      GetFunctionDefinitionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetFunctionDefinitionResponse'
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

instance Hashable GetFunctionDefinition

instance NFData GetFunctionDefinition

instance ToHeaders GetFunctionDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetFunctionDefinition where
  toPath GetFunctionDefinition' {..} =
    mconcat
      [ "/greengrass/definition/functions/",
        toBS _gfdFunctionDefinitionId
      ]

instance ToQuery GetFunctionDefinition where
  toQuery = const mempty

-- | /See:/ 'getFunctionDefinitionResponse' smart constructor.
data GetFunctionDefinitionResponse = GetFunctionDefinitionResponse'
  { _gfdrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _gfdrrsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _gfdrrsLatestVersion ::
      !( Maybe
           Text
       ),
    _gfdrrsARN ::
      !( Maybe
           Text
       ),
    _gfdrrsId ::
      !( Maybe
           Text
       ),
    _gfdrrsName ::
      !( Maybe
           Text
       ),
    _gfdrrsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _gfdrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gfdrrsResponseStatus ::
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

-- | Creates a value of 'GetFunctionDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfdrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'gfdrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'gfdrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'gfdrrsARN' - The ARN of the definition.
--
-- * 'gfdrrsId' - The ID of the definition.
--
-- * 'gfdrrsName' - The name of the definition.
--
-- * 'gfdrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'gfdrrsTags' - Tag(s) attached to the resource arn.
--
-- * 'gfdrrsResponseStatus' - -- | The response status code.
getFunctionDefinitionResponse ::
  -- | 'gfdrrsResponseStatus'
  Int ->
  GetFunctionDefinitionResponse
getFunctionDefinitionResponse pResponseStatus_ =
  GetFunctionDefinitionResponse'
    { _gfdrrsCreationTimestamp =
        Nothing,
      _gfdrrsLatestVersionARN = Nothing,
      _gfdrrsLatestVersion = Nothing,
      _gfdrrsARN = Nothing,
      _gfdrrsId = Nothing,
      _gfdrrsName = Nothing,
      _gfdrrsLastUpdatedTimestamp = Nothing,
      _gfdrrsTags = Nothing,
      _gfdrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
gfdrrsCreationTimestamp :: Lens' GetFunctionDefinitionResponse (Maybe Text)
gfdrrsCreationTimestamp = lens _gfdrrsCreationTimestamp (\s a -> s {_gfdrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
gfdrrsLatestVersionARN :: Lens' GetFunctionDefinitionResponse (Maybe Text)
gfdrrsLatestVersionARN = lens _gfdrrsLatestVersionARN (\s a -> s {_gfdrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
gfdrrsLatestVersion :: Lens' GetFunctionDefinitionResponse (Maybe Text)
gfdrrsLatestVersion = lens _gfdrrsLatestVersion (\s a -> s {_gfdrrsLatestVersion = a})

-- | The ARN of the definition.
gfdrrsARN :: Lens' GetFunctionDefinitionResponse (Maybe Text)
gfdrrsARN = lens _gfdrrsARN (\s a -> s {_gfdrrsARN = a})

-- | The ID of the definition.
gfdrrsId :: Lens' GetFunctionDefinitionResponse (Maybe Text)
gfdrrsId = lens _gfdrrsId (\s a -> s {_gfdrrsId = a})

-- | The name of the definition.
gfdrrsName :: Lens' GetFunctionDefinitionResponse (Maybe Text)
gfdrrsName = lens _gfdrrsName (\s a -> s {_gfdrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
gfdrrsLastUpdatedTimestamp :: Lens' GetFunctionDefinitionResponse (Maybe Text)
gfdrrsLastUpdatedTimestamp = lens _gfdrrsLastUpdatedTimestamp (\s a -> s {_gfdrrsLastUpdatedTimestamp = a})

-- | Tag(s) attached to the resource arn.
gfdrrsTags :: Lens' GetFunctionDefinitionResponse (HashMap Text Text)
gfdrrsTags = lens _gfdrrsTags (\s a -> s {_gfdrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gfdrrsResponseStatus :: Lens' GetFunctionDefinitionResponse Int
gfdrrsResponseStatus = lens _gfdrrsResponseStatus (\s a -> s {_gfdrrsResponseStatus = a})

instance NFData GetFunctionDefinitionResponse
