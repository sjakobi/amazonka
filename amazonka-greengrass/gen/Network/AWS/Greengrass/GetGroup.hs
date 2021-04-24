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
-- Module      : Network.AWS.Greengrass.GetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a group.
module Network.AWS.Greengrass.GetGroup
  ( -- * Creating a Request
    getGroup,
    GetGroup,

    -- * Request Lenses
    ggGroupId,

    -- * Destructuring the Response
    getGroupResponse,
    GetGroupResponse,

    -- * Response Lenses
    ggrrsCreationTimestamp,
    ggrrsLatestVersionARN,
    ggrrsLatestVersion,
    ggrrsARN,
    ggrrsId,
    ggrrsName,
    ggrrsLastUpdatedTimestamp,
    ggrrsTags,
    ggrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getGroup' smart constructor.
newtype GetGroup = GetGroup' {_ggGroupId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggGroupId' - The ID of the Greengrass group.
getGroup ::
  -- | 'ggGroupId'
  Text ->
  GetGroup
getGroup pGroupId_ =
  GetGroup' {_ggGroupId = pGroupId_}

-- | The ID of the Greengrass group.
ggGroupId :: Lens' GetGroup Text
ggGroupId = lens _ggGroupId (\s a -> s {_ggGroupId = a})

instance AWSRequest GetGroup where
  type Rs GetGroup = GetGroupResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetGroupResponse'
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

instance Hashable GetGroup

instance NFData GetGroup

instance ToHeaders GetGroup where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetGroup where
  toPath GetGroup' {..} =
    mconcat ["/greengrass/groups/", toBS _ggGroupId]

instance ToQuery GetGroup where
  toQuery = const mempty

-- | /See:/ 'getGroupResponse' smart constructor.
data GetGroupResponse = GetGroupResponse'
  { _ggrrsCreationTimestamp ::
      !(Maybe Text),
    _ggrrsLatestVersionARN ::
      !(Maybe Text),
    _ggrrsLatestVersion :: !(Maybe Text),
    _ggrrsARN :: !(Maybe Text),
    _ggrrsId :: !(Maybe Text),
    _ggrrsName :: !(Maybe Text),
    _ggrrsLastUpdatedTimestamp ::
      !(Maybe Text),
    _ggrrsTags ::
      !(Maybe (Map Text Text)),
    _ggrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'ggrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'ggrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'ggrrsARN' - The ARN of the definition.
--
-- * 'ggrrsId' - The ID of the definition.
--
-- * 'ggrrsName' - The name of the definition.
--
-- * 'ggrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'ggrrsTags' - Tag(s) attached to the resource arn.
--
-- * 'ggrrsResponseStatus' - -- | The response status code.
getGroupResponse ::
  -- | 'ggrrsResponseStatus'
  Int ->
  GetGroupResponse
getGroupResponse pResponseStatus_ =
  GetGroupResponse'
    { _ggrrsCreationTimestamp =
        Nothing,
      _ggrrsLatestVersionARN = Nothing,
      _ggrrsLatestVersion = Nothing,
      _ggrrsARN = Nothing,
      _ggrrsId = Nothing,
      _ggrrsName = Nothing,
      _ggrrsLastUpdatedTimestamp = Nothing,
      _ggrrsTags = Nothing,
      _ggrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
ggrrsCreationTimestamp :: Lens' GetGroupResponse (Maybe Text)
ggrrsCreationTimestamp = lens _ggrrsCreationTimestamp (\s a -> s {_ggrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
ggrrsLatestVersionARN :: Lens' GetGroupResponse (Maybe Text)
ggrrsLatestVersionARN = lens _ggrrsLatestVersionARN (\s a -> s {_ggrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
ggrrsLatestVersion :: Lens' GetGroupResponse (Maybe Text)
ggrrsLatestVersion = lens _ggrrsLatestVersion (\s a -> s {_ggrrsLatestVersion = a})

-- | The ARN of the definition.
ggrrsARN :: Lens' GetGroupResponse (Maybe Text)
ggrrsARN = lens _ggrrsARN (\s a -> s {_ggrrsARN = a})

-- | The ID of the definition.
ggrrsId :: Lens' GetGroupResponse (Maybe Text)
ggrrsId = lens _ggrrsId (\s a -> s {_ggrrsId = a})

-- | The name of the definition.
ggrrsName :: Lens' GetGroupResponse (Maybe Text)
ggrrsName = lens _ggrrsName (\s a -> s {_ggrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
ggrrsLastUpdatedTimestamp :: Lens' GetGroupResponse (Maybe Text)
ggrrsLastUpdatedTimestamp = lens _ggrrsLastUpdatedTimestamp (\s a -> s {_ggrrsLastUpdatedTimestamp = a})

-- | Tag(s) attached to the resource arn.
ggrrsTags :: Lens' GetGroupResponse (HashMap Text Text)
ggrrsTags = lens _ggrrsTags (\s a -> s {_ggrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
ggrrsResponseStatus :: Lens' GetGroupResponse Int
ggrrsResponseStatus = lens _ggrrsResponseStatus (\s a -> s {_ggrrsResponseStatus = a})

instance NFData GetGroupResponse
