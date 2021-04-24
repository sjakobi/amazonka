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
-- Module      : Network.AWS.AlexaBusiness.ResolveRoom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Determines the details for the room from which a skill request was invoked. This operation is used by skill developers.
--
--
-- To query ResolveRoom from an Alexa skill, the skill ID needs to be authorized. When the skill is using an AWS Lambda function, the skill is automatically authorized when you publish your skill as a private skill to your AWS account. Skills that are hosted using a custom web service must be manually authorized. To get your skill authorized, contact AWS Support with your AWS account ID that queries the ResolveRoom API and skill ID.
module Network.AWS.AlexaBusiness.ResolveRoom
  ( -- * Creating a Request
    resolveRoom,
    ResolveRoom,

    -- * Request Lenses
    rrUserId,
    rrSkillId,

    -- * Destructuring the Response
    resolveRoomResponse,
    ResolveRoomResponse,

    -- * Response Lenses
    rrrrsRoomSkillParameters,
    rrrrsRoomARN,
    rrrrsRoomName,
    rrrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'resolveRoom' smart constructor.
data ResolveRoom = ResolveRoom'
  { _rrUserId :: !Text,
    _rrSkillId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResolveRoom' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrUserId' - The ARN of the user. Required.
--
-- * 'rrSkillId' - The ARN of the skill that was requested. Required.
resolveRoom ::
  -- | 'rrUserId'
  Text ->
  -- | 'rrSkillId'
  Text ->
  ResolveRoom
resolveRoom pUserId_ pSkillId_ =
  ResolveRoom'
    { _rrUserId = pUserId_,
      _rrSkillId = pSkillId_
    }

-- | The ARN of the user. Required.
rrUserId :: Lens' ResolveRoom Text
rrUserId = lens _rrUserId (\s a -> s {_rrUserId = a})

-- | The ARN of the skill that was requested. Required.
rrSkillId :: Lens' ResolveRoom Text
rrSkillId = lens _rrSkillId (\s a -> s {_rrSkillId = a})

instance AWSRequest ResolveRoom where
  type Rs ResolveRoom = ResolveRoomResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          ResolveRoomResponse'
            <$> (x .?> "RoomSkillParameters" .!@ mempty)
            <*> (x .?> "RoomArn")
            <*> (x .?> "RoomName")
            <*> (pure (fromEnum s))
      )

instance Hashable ResolveRoom

instance NFData ResolveRoom

instance ToHeaders ResolveRoom where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.ResolveRoom" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ResolveRoom where
  toJSON ResolveRoom' {..} =
    object
      ( catMaybes
          [ Just ("UserId" .= _rrUserId),
            Just ("SkillId" .= _rrSkillId)
          ]
      )

instance ToPath ResolveRoom where
  toPath = const "/"

instance ToQuery ResolveRoom where
  toQuery = const mempty

-- | /See:/ 'resolveRoomResponse' smart constructor.
data ResolveRoomResponse = ResolveRoomResponse'
  { _rrrrsRoomSkillParameters ::
      !(Maybe [RoomSkillParameter]),
    _rrrrsRoomARN :: !(Maybe Text),
    _rrrrsRoomName :: !(Maybe Text),
    _rrrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResolveRoomResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrrsRoomSkillParameters' - Response to get the room profile request. Required.
--
-- * 'rrrrsRoomARN' - The ARN of the room from which the skill request was invoked.
--
-- * 'rrrrsRoomName' - The name of the room from which the skill request was invoked.
--
-- * 'rrrrsResponseStatus' - -- | The response status code.
resolveRoomResponse ::
  -- | 'rrrrsResponseStatus'
  Int ->
  ResolveRoomResponse
resolveRoomResponse pResponseStatus_ =
  ResolveRoomResponse'
    { _rrrrsRoomSkillParameters =
        Nothing,
      _rrrrsRoomARN = Nothing,
      _rrrrsRoomName = Nothing,
      _rrrrsResponseStatus = pResponseStatus_
    }

-- | Response to get the room profile request. Required.
rrrrsRoomSkillParameters :: Lens' ResolveRoomResponse [RoomSkillParameter]
rrrrsRoomSkillParameters = lens _rrrrsRoomSkillParameters (\s a -> s {_rrrrsRoomSkillParameters = a}) . _Default . _Coerce

-- | The ARN of the room from which the skill request was invoked.
rrrrsRoomARN :: Lens' ResolveRoomResponse (Maybe Text)
rrrrsRoomARN = lens _rrrrsRoomARN (\s a -> s {_rrrrsRoomARN = a})

-- | The name of the room from which the skill request was invoked.
rrrrsRoomName :: Lens' ResolveRoomResponse (Maybe Text)
rrrrsRoomName = lens _rrrrsRoomName (\s a -> s {_rrrrsRoomName = a})

-- | -- | The response status code.
rrrrsResponseStatus :: Lens' ResolveRoomResponse Int
rrrrsResponseStatus = lens _rrrrsResponseStatus (\s a -> s {_rrrrsResponseStatus = a})

instance NFData ResolveRoomResponse
