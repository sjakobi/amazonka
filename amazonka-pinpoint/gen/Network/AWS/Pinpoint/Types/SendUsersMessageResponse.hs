{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SendUsersMessageResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SendUsersMessageResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.EndpointMessageResult
import Network.AWS.Prelude

-- | Provides information about which users and endpoints a message was sent to.
--
--
--
-- /See:/ 'sendUsersMessageResponse' smart constructor.
data SendUsersMessageResponse = SendUsersMessageResponse'
  { _sumrResult ::
      !( Maybe
           ( Map
               Text
               ( Map
                   Text
                   EndpointMessageResult
               )
           )
       ),
    _sumrRequestId ::
      !(Maybe Text),
    _sumrApplicationId ::
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

-- | Creates a value of 'SendUsersMessageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sumrResult' - An object that indicates which endpoints the message was sent to, for each user. The object lists user IDs and, for each user ID, provides the endpoint IDs that the message was sent to. For each endpoint ID, it provides an EndpointMessageResult object.
--
-- * 'sumrRequestId' - The unique identifier that was assigned to the message request.
--
-- * 'sumrApplicationId' - The unique identifier for the application that was used to send the message.
sendUsersMessageResponse ::
  -- | 'sumrApplicationId'
  Text ->
  SendUsersMessageResponse
sendUsersMessageResponse pApplicationId_ =
  SendUsersMessageResponse'
    { _sumrResult = Nothing,
      _sumrRequestId = Nothing,
      _sumrApplicationId = pApplicationId_
    }

-- | An object that indicates which endpoints the message was sent to, for each user. The object lists user IDs and, for each user ID, provides the endpoint IDs that the message was sent to. For each endpoint ID, it provides an EndpointMessageResult object.
sumrResult :: Lens' SendUsersMessageResponse (HashMap Text (HashMap Text EndpointMessageResult))
sumrResult = lens _sumrResult (\s a -> s {_sumrResult = a}) . _Default . _Map

-- | The unique identifier that was assigned to the message request.
sumrRequestId :: Lens' SendUsersMessageResponse (Maybe Text)
sumrRequestId = lens _sumrRequestId (\s a -> s {_sumrRequestId = a})

-- | The unique identifier for the application that was used to send the message.
sumrApplicationId :: Lens' SendUsersMessageResponse Text
sumrApplicationId = lens _sumrApplicationId (\s a -> s {_sumrApplicationId = a})

instance FromJSON SendUsersMessageResponse where
  parseJSON =
    withObject
      "SendUsersMessageResponse"
      ( \x ->
          SendUsersMessageResponse'
            <$> (x .:? "Result" .!= mempty)
            <*> (x .:? "RequestId")
            <*> (x .: "ApplicationId")
      )

instance Hashable SendUsersMessageResponse

instance NFData SendUsersMessageResponse
