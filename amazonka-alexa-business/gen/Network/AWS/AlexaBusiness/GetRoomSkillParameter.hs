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
-- Module      : Network.AWS.AlexaBusiness.GetRoomSkillParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets room skill parameter details by room, skill, and parameter key ARN.
module Network.AWS.AlexaBusiness.GetRoomSkillParameter
  ( -- * Creating a Request
    getRoomSkillParameter,
    GetRoomSkillParameter,

    -- * Request Lenses
    grspRoomARN,
    grspSkillId,
    grspParameterKey,

    -- * Destructuring the Response
    getRoomSkillParameterResponse,
    GetRoomSkillParameterResponse,

    -- * Response Lenses
    grsprrsRoomSkillParameter,
    grsprrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRoomSkillParameter' smart constructor.
data GetRoomSkillParameter = GetRoomSkillParameter'
  { _grspRoomARN ::
      !(Maybe Text),
    _grspSkillId :: !Text,
    _grspParameterKey :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRoomSkillParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grspRoomARN' - The ARN of the room from which to get the room skill parameter details.
--
-- * 'grspSkillId' - The ARN of the skill from which to get the room skill parameter details. Required.
--
-- * 'grspParameterKey' - The room skill parameter key for which to get details. Required.
getRoomSkillParameter ::
  -- | 'grspSkillId'
  Text ->
  -- | 'grspParameterKey'
  Text ->
  GetRoomSkillParameter
getRoomSkillParameter pSkillId_ pParameterKey_ =
  GetRoomSkillParameter'
    { _grspRoomARN = Nothing,
      _grspSkillId = pSkillId_,
      _grspParameterKey = pParameterKey_
    }

-- | The ARN of the room from which to get the room skill parameter details.
grspRoomARN :: Lens' GetRoomSkillParameter (Maybe Text)
grspRoomARN = lens _grspRoomARN (\s a -> s {_grspRoomARN = a})

-- | The ARN of the skill from which to get the room skill parameter details. Required.
grspSkillId :: Lens' GetRoomSkillParameter Text
grspSkillId = lens _grspSkillId (\s a -> s {_grspSkillId = a})

-- | The room skill parameter key for which to get details. Required.
grspParameterKey :: Lens' GetRoomSkillParameter Text
grspParameterKey = lens _grspParameterKey (\s a -> s {_grspParameterKey = a})

instance AWSRequest GetRoomSkillParameter where
  type
    Rs GetRoomSkillParameter =
      GetRoomSkillParameterResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          GetRoomSkillParameterResponse'
            <$> (x .?> "RoomSkillParameter") <*> (pure (fromEnum s))
      )

instance Hashable GetRoomSkillParameter

instance NFData GetRoomSkillParameter

instance ToHeaders GetRoomSkillParameter where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.GetRoomSkillParameter" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRoomSkillParameter where
  toJSON GetRoomSkillParameter' {..} =
    object
      ( catMaybes
          [ ("RoomArn" .=) <$> _grspRoomARN,
            Just ("SkillId" .= _grspSkillId),
            Just ("ParameterKey" .= _grspParameterKey)
          ]
      )

instance ToPath GetRoomSkillParameter where
  toPath = const "/"

instance ToQuery GetRoomSkillParameter where
  toQuery = const mempty

-- | /See:/ 'getRoomSkillParameterResponse' smart constructor.
data GetRoomSkillParameterResponse = GetRoomSkillParameterResponse'
  { _grsprrsRoomSkillParameter ::
      !( Maybe
           RoomSkillParameter
       ),
    _grsprrsResponseStatus ::
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

-- | Creates a value of 'GetRoomSkillParameterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsprrsRoomSkillParameter' - The details of the room skill parameter requested. Required.
--
-- * 'grsprrsResponseStatus' - -- | The response status code.
getRoomSkillParameterResponse ::
  -- | 'grsprrsResponseStatus'
  Int ->
  GetRoomSkillParameterResponse
getRoomSkillParameterResponse pResponseStatus_ =
  GetRoomSkillParameterResponse'
    { _grsprrsRoomSkillParameter =
        Nothing,
      _grsprrsResponseStatus = pResponseStatus_
    }

-- | The details of the room skill parameter requested. Required.
grsprrsRoomSkillParameter :: Lens' GetRoomSkillParameterResponse (Maybe RoomSkillParameter)
grsprrsRoomSkillParameter = lens _grsprrsRoomSkillParameter (\s a -> s {_grsprrsRoomSkillParameter = a})

-- | -- | The response status code.
grsprrsResponseStatus :: Lens' GetRoomSkillParameterResponse Int
grsprrsResponseStatus = lens _grsprrsResponseStatus (\s a -> s {_grsprrsResponseStatus = a})

instance NFData GetRoomSkillParameterResponse
