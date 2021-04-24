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
-- Module      : Network.AWS.Greengrass.GetSubscriptionDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a subscription definition version.
module Network.AWS.Greengrass.GetSubscriptionDefinitionVersion
  ( -- * Creating a Request
    getSubscriptionDefinitionVersion,
    GetSubscriptionDefinitionVersion,

    -- * Request Lenses
    gsdvNextToken,
    gsdvSubscriptionDefinitionId,
    gsdvSubscriptionDefinitionVersionId,

    -- * Destructuring the Response
    getSubscriptionDefinitionVersionResponse,
    GetSubscriptionDefinitionVersionResponse,

    -- * Response Lenses
    gsdvrrsCreationTimestamp,
    gsdvrrsNextToken,
    gsdvrrsARN,
    gsdvrrsId,
    gsdvrrsVersion,
    gsdvrrsDefinition,
    gsdvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSubscriptionDefinitionVersion' smart constructor.
data GetSubscriptionDefinitionVersion = GetSubscriptionDefinitionVersion'
  { _gsdvNextToken ::
      !( Maybe
           Text
       ),
    _gsdvSubscriptionDefinitionId ::
      !Text,
    _gsdvSubscriptionDefinitionVersionId ::
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

-- | Creates a value of 'GetSubscriptionDefinitionVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdvNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'gsdvSubscriptionDefinitionId' - The ID of the subscription definition.
--
-- * 'gsdvSubscriptionDefinitionVersionId' - The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
getSubscriptionDefinitionVersion ::
  -- | 'gsdvSubscriptionDefinitionId'
  Text ->
  -- | 'gsdvSubscriptionDefinitionVersionId'
  Text ->
  GetSubscriptionDefinitionVersion
getSubscriptionDefinitionVersion
  pSubscriptionDefinitionId_
  pSubscriptionDefinitionVersionId_ =
    GetSubscriptionDefinitionVersion'
      { _gsdvNextToken =
          Nothing,
        _gsdvSubscriptionDefinitionId =
          pSubscriptionDefinitionId_,
        _gsdvSubscriptionDefinitionVersionId =
          pSubscriptionDefinitionVersionId_
      }

-- | The token for the next set of results, or ''null'' if there are no additional results.
gsdvNextToken :: Lens' GetSubscriptionDefinitionVersion (Maybe Text)
gsdvNextToken = lens _gsdvNextToken (\s a -> s {_gsdvNextToken = a})

-- | The ID of the subscription definition.
gsdvSubscriptionDefinitionId :: Lens' GetSubscriptionDefinitionVersion Text
gsdvSubscriptionDefinitionId = lens _gsdvSubscriptionDefinitionId (\s a -> s {_gsdvSubscriptionDefinitionId = a})

-- | The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
gsdvSubscriptionDefinitionVersionId :: Lens' GetSubscriptionDefinitionVersion Text
gsdvSubscriptionDefinitionVersionId = lens _gsdvSubscriptionDefinitionVersionId (\s a -> s {_gsdvSubscriptionDefinitionVersionId = a})

instance AWSRequest GetSubscriptionDefinitionVersion where
  type
    Rs GetSubscriptionDefinitionVersion =
      GetSubscriptionDefinitionVersionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetSubscriptionDefinitionVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "NextToken")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (x .?> "Definition")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSubscriptionDefinitionVersion

instance NFData GetSubscriptionDefinitionVersion

instance ToHeaders GetSubscriptionDefinitionVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSubscriptionDefinitionVersion where
  toPath GetSubscriptionDefinitionVersion' {..} =
    mconcat
      [ "/greengrass/definition/subscriptions/",
        toBS _gsdvSubscriptionDefinitionId,
        "/versions/",
        toBS _gsdvSubscriptionDefinitionVersionId
      ]

instance ToQuery GetSubscriptionDefinitionVersion where
  toQuery GetSubscriptionDefinitionVersion' {..} =
    mconcat ["NextToken" =: _gsdvNextToken]

-- | /See:/ 'getSubscriptionDefinitionVersionResponse' smart constructor.
data GetSubscriptionDefinitionVersionResponse = GetSubscriptionDefinitionVersionResponse'
  { _gsdvrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _gsdvrrsNextToken ::
      !( Maybe
           Text
       ),
    _gsdvrrsARN ::
      !( Maybe
           Text
       ),
    _gsdvrrsId ::
      !( Maybe
           Text
       ),
    _gsdvrrsVersion ::
      !( Maybe
           Text
       ),
    _gsdvrrsDefinition ::
      !( Maybe
           SubscriptionDefinitionVersion
       ),
    _gsdvrrsResponseStatus ::
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

-- | Creates a value of 'GetSubscriptionDefinitionVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the subscription definition version was created.
--
-- * 'gsdvrrsNextToken' - The token for the next set of results, or ''null'' if there are no additional results.
--
-- * 'gsdvrrsARN' - The ARN of the subscription definition version.
--
-- * 'gsdvrrsId' - The ID of the subscription definition version.
--
-- * 'gsdvrrsVersion' - The version of the subscription definition version.
--
-- * 'gsdvrrsDefinition' - Information about the subscription definition version.
--
-- * 'gsdvrrsResponseStatus' - -- | The response status code.
getSubscriptionDefinitionVersionResponse ::
  -- | 'gsdvrrsResponseStatus'
  Int ->
  GetSubscriptionDefinitionVersionResponse
getSubscriptionDefinitionVersionResponse
  pResponseStatus_ =
    GetSubscriptionDefinitionVersionResponse'
      { _gsdvrrsCreationTimestamp =
          Nothing,
        _gsdvrrsNextToken = Nothing,
        _gsdvrrsARN = Nothing,
        _gsdvrrsId = Nothing,
        _gsdvrrsVersion = Nothing,
        _gsdvrrsDefinition = Nothing,
        _gsdvrrsResponseStatus =
          pResponseStatus_
      }

-- | The time, in milliseconds since the epoch, when the subscription definition version was created.
gsdvrrsCreationTimestamp :: Lens' GetSubscriptionDefinitionVersionResponse (Maybe Text)
gsdvrrsCreationTimestamp = lens _gsdvrrsCreationTimestamp (\s a -> s {_gsdvrrsCreationTimestamp = a})

-- | The token for the next set of results, or ''null'' if there are no additional results.
gsdvrrsNextToken :: Lens' GetSubscriptionDefinitionVersionResponse (Maybe Text)
gsdvrrsNextToken = lens _gsdvrrsNextToken (\s a -> s {_gsdvrrsNextToken = a})

-- | The ARN of the subscription definition version.
gsdvrrsARN :: Lens' GetSubscriptionDefinitionVersionResponse (Maybe Text)
gsdvrrsARN = lens _gsdvrrsARN (\s a -> s {_gsdvrrsARN = a})

-- | The ID of the subscription definition version.
gsdvrrsId :: Lens' GetSubscriptionDefinitionVersionResponse (Maybe Text)
gsdvrrsId = lens _gsdvrrsId (\s a -> s {_gsdvrrsId = a})

-- | The version of the subscription definition version.
gsdvrrsVersion :: Lens' GetSubscriptionDefinitionVersionResponse (Maybe Text)
gsdvrrsVersion = lens _gsdvrrsVersion (\s a -> s {_gsdvrrsVersion = a})

-- | Information about the subscription definition version.
gsdvrrsDefinition :: Lens' GetSubscriptionDefinitionVersionResponse (Maybe SubscriptionDefinitionVersion)
gsdvrrsDefinition = lens _gsdvrrsDefinition (\s a -> s {_gsdvrrsDefinition = a})

-- | -- | The response status code.
gsdvrrsResponseStatus :: Lens' GetSubscriptionDefinitionVersionResponse Int
gsdvrrsResponseStatus = lens _gsdvrrsResponseStatus (\s a -> s {_gsdvrrsResponseStatus = a})

instance
  NFData
    GetSubscriptionDefinitionVersionResponse
