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
-- Module      : Network.AWS.AlexaBusiness.UpdateRoom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates room details by room ARN.
module Network.AWS.AlexaBusiness.UpdateRoom
  ( -- * Creating a Request
    updateRoom,
    UpdateRoom,

    -- * Request Lenses
    urRoomARN,
    urProviderCalendarId,
    urProfileARN,
    urDescription,
    urRoomName,

    -- * Destructuring the Response
    updateRoomResponse,
    UpdateRoomResponse,

    -- * Response Lenses
    ursResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateRoom' smart constructor.
data UpdateRoom = UpdateRoom'
  { _urRoomARN ::
      !(Maybe Text),
    _urProviderCalendarId :: !(Maybe Text),
    _urProfileARN :: !(Maybe Text),
    _urDescription :: !(Maybe Text),
    _urRoomName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateRoom' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urRoomARN' - The ARN of the room to update.
--
-- * 'urProviderCalendarId' - The updated provider calendar ARN for the room.
--
-- * 'urProfileARN' - The updated profile ARN for the room.
--
-- * 'urDescription' - The updated description for the room.
--
-- * 'urRoomName' - The updated name for the room.
updateRoom ::
  UpdateRoom
updateRoom =
  UpdateRoom'
    { _urRoomARN = Nothing,
      _urProviderCalendarId = Nothing,
      _urProfileARN = Nothing,
      _urDescription = Nothing,
      _urRoomName = Nothing
    }

-- | The ARN of the room to update.
urRoomARN :: Lens' UpdateRoom (Maybe Text)
urRoomARN = lens _urRoomARN (\s a -> s {_urRoomARN = a})

-- | The updated provider calendar ARN for the room.
urProviderCalendarId :: Lens' UpdateRoom (Maybe Text)
urProviderCalendarId = lens _urProviderCalendarId (\s a -> s {_urProviderCalendarId = a})

-- | The updated profile ARN for the room.
urProfileARN :: Lens' UpdateRoom (Maybe Text)
urProfileARN = lens _urProfileARN (\s a -> s {_urProfileARN = a})

-- | The updated description for the room.
urDescription :: Lens' UpdateRoom (Maybe Text)
urDescription = lens _urDescription (\s a -> s {_urDescription = a})

-- | The updated name for the room.
urRoomName :: Lens' UpdateRoom (Maybe Text)
urRoomName = lens _urRoomName (\s a -> s {_urRoomName = a})

instance AWSRequest UpdateRoom where
  type Rs UpdateRoom = UpdateRoomResponse
  request = postJSON alexaBusiness
  response =
    receiveEmpty
      ( \s h x ->
          UpdateRoomResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateRoom

instance NFData UpdateRoom

instance ToHeaders UpdateRoom where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.UpdateRoom" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateRoom where
  toJSON UpdateRoom' {..} =
    object
      ( catMaybes
          [ ("RoomArn" .=) <$> _urRoomARN,
            ("ProviderCalendarId" .=) <$> _urProviderCalendarId,
            ("ProfileArn" .=) <$> _urProfileARN,
            ("Description" .=) <$> _urDescription,
            ("RoomName" .=) <$> _urRoomName
          ]
      )

instance ToPath UpdateRoom where
  toPath = const "/"

instance ToQuery UpdateRoom where
  toQuery = const mempty

-- | /See:/ 'updateRoomResponse' smart constructor.
newtype UpdateRoomResponse = UpdateRoomResponse'
  { _ursResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateRoomResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursResponseStatus' - -- | The response status code.
updateRoomResponse ::
  -- | 'ursResponseStatus'
  Int ->
  UpdateRoomResponse
updateRoomResponse pResponseStatus_ =
  UpdateRoomResponse'
    { _ursResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ursResponseStatus :: Lens' UpdateRoomResponse Int
ursResponseStatus = lens _ursResponseStatus (\s a -> s {_ursResponseStatus = a})

instance NFData UpdateRoomResponse
