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
-- Module      : Network.AWS.AlexaBusiness.CreateRoom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a room with the specified details.
module Network.AWS.AlexaBusiness.CreateRoom
  ( -- * Creating a Request
    createRoom,
    CreateRoom,

    -- * Request Lenses
    crTags,
    crProviderCalendarId,
    crProfileARN,
    crDescription,
    crClientRequestToken,
    crRoomName,

    -- * Destructuring the Response
    createRoomResponse,
    CreateRoomResponse,

    -- * Response Lenses
    crrrsRoomARN,
    crrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createRoom' smart constructor.
data CreateRoom = CreateRoom'
  { _crTags ::
      !(Maybe [Tag]),
    _crProviderCalendarId :: !(Maybe Text),
    _crProfileARN :: !(Maybe Text),
    _crDescription :: !(Maybe Text),
    _crClientRequestToken :: !(Maybe Text),
    _crRoomName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRoom' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crTags' - The tags for the room.
--
-- * 'crProviderCalendarId' - The calendar ARN for the room.
--
-- * 'crProfileARN' - The profile ARN for the room. This is required.
--
-- * 'crDescription' - The description for the room.
--
-- * 'crClientRequestToken' - A unique, user-specified identifier for this request that ensures idempotency.
--
-- * 'crRoomName' - The name for the room.
createRoom ::
  -- | 'crRoomName'
  Text ->
  CreateRoom
createRoom pRoomName_ =
  CreateRoom'
    { _crTags = Nothing,
      _crProviderCalendarId = Nothing,
      _crProfileARN = Nothing,
      _crDescription = Nothing,
      _crClientRequestToken = Nothing,
      _crRoomName = pRoomName_
    }

-- | The tags for the room.
crTags :: Lens' CreateRoom [Tag]
crTags = lens _crTags (\s a -> s {_crTags = a}) . _Default . _Coerce

-- | The calendar ARN for the room.
crProviderCalendarId :: Lens' CreateRoom (Maybe Text)
crProviderCalendarId = lens _crProviderCalendarId (\s a -> s {_crProviderCalendarId = a})

-- | The profile ARN for the room. This is required.
crProfileARN :: Lens' CreateRoom (Maybe Text)
crProfileARN = lens _crProfileARN (\s a -> s {_crProfileARN = a})

-- | The description for the room.
crDescription :: Lens' CreateRoom (Maybe Text)
crDescription = lens _crDescription (\s a -> s {_crDescription = a})

-- | A unique, user-specified identifier for this request that ensures idempotency.
crClientRequestToken :: Lens' CreateRoom (Maybe Text)
crClientRequestToken = lens _crClientRequestToken (\s a -> s {_crClientRequestToken = a})

-- | The name for the room.
crRoomName :: Lens' CreateRoom Text
crRoomName = lens _crRoomName (\s a -> s {_crRoomName = a})

instance AWSRequest CreateRoom where
  type Rs CreateRoom = CreateRoomResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          CreateRoomResponse'
            <$> (x .?> "RoomArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateRoom

instance NFData CreateRoom

instance ToHeaders CreateRoom where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.CreateRoom" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateRoom where
  toJSON CreateRoom' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _crTags,
            ("ProviderCalendarId" .=) <$> _crProviderCalendarId,
            ("ProfileArn" .=) <$> _crProfileARN,
            ("Description" .=) <$> _crDescription,
            ("ClientRequestToken" .=) <$> _crClientRequestToken,
            Just ("RoomName" .= _crRoomName)
          ]
      )

instance ToPath CreateRoom where
  toPath = const "/"

instance ToQuery CreateRoom where
  toQuery = const mempty

-- | /See:/ 'createRoomResponse' smart constructor.
data CreateRoomResponse = CreateRoomResponse'
  { _crrrsRoomARN ::
      !(Maybe Text),
    _crrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRoomResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrrsRoomARN' - The ARN of the newly created room in the response.
--
-- * 'crrrsResponseStatus' - -- | The response status code.
createRoomResponse ::
  -- | 'crrrsResponseStatus'
  Int ->
  CreateRoomResponse
createRoomResponse pResponseStatus_ =
  CreateRoomResponse'
    { _crrrsRoomARN = Nothing,
      _crrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the newly created room in the response.
crrrsRoomARN :: Lens' CreateRoomResponse (Maybe Text)
crrrsRoomARN = lens _crrrsRoomARN (\s a -> s {_crrrsRoomARN = a})

-- | -- | The response status code.
crrrsResponseStatus :: Lens' CreateRoomResponse Int
crrrsResponseStatus = lens _crrrsResponseStatus (\s a -> s {_crrrsResponseStatus = a})

instance NFData CreateRoomResponse
