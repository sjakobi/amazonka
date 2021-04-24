{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.MessageResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.MessageResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.EndpointMessageResult
import Network.AWS.Pinpoint.Types.MessageResult
import Network.AWS.Prelude

-- | Provides information about the results of a request to send a message to an endpoint address.
--
--
--
-- /See:/ 'messageResponse' smart constructor.
data MessageResponse = MessageResponse'
  { _mrResult ::
      !(Maybe (Map Text MessageResult)),
    _mrRequestId :: !(Maybe Text),
    _mrEndpointResult ::
      !( Maybe
           (Map Text EndpointMessageResult)
       ),
    _mrApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MessageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrResult' - A map that contains a multipart response for each address (email address, phone number, or push notification token) that the message was sent to. In the map, the address is the key and the result is the value.
--
-- * 'mrRequestId' - The identifier for the original request that the message was delivered for.
--
-- * 'mrEndpointResult' - A map that contains a multipart response for each address that the message was sent to. In the map, the endpoint ID is the key and the result is the value.
--
-- * 'mrApplicationId' - The unique identifier for the application that was used to send the message.
messageResponse ::
  -- | 'mrApplicationId'
  Text ->
  MessageResponse
messageResponse pApplicationId_ =
  MessageResponse'
    { _mrResult = Nothing,
      _mrRequestId = Nothing,
      _mrEndpointResult = Nothing,
      _mrApplicationId = pApplicationId_
    }

-- | A map that contains a multipart response for each address (email address, phone number, or push notification token) that the message was sent to. In the map, the address is the key and the result is the value.
mrResult :: Lens' MessageResponse (HashMap Text MessageResult)
mrResult = lens _mrResult (\s a -> s {_mrResult = a}) . _Default . _Map

-- | The identifier for the original request that the message was delivered for.
mrRequestId :: Lens' MessageResponse (Maybe Text)
mrRequestId = lens _mrRequestId (\s a -> s {_mrRequestId = a})

-- | A map that contains a multipart response for each address that the message was sent to. In the map, the endpoint ID is the key and the result is the value.
mrEndpointResult :: Lens' MessageResponse (HashMap Text EndpointMessageResult)
mrEndpointResult = lens _mrEndpointResult (\s a -> s {_mrEndpointResult = a}) . _Default . _Map

-- | The unique identifier for the application that was used to send the message.
mrApplicationId :: Lens' MessageResponse Text
mrApplicationId = lens _mrApplicationId (\s a -> s {_mrApplicationId = a})

instance FromJSON MessageResponse where
  parseJSON =
    withObject
      "MessageResponse"
      ( \x ->
          MessageResponse'
            <$> (x .:? "Result" .!= mempty)
            <*> (x .:? "RequestId")
            <*> (x .:? "EndpointResult" .!= mempty)
            <*> (x .: "ApplicationId")
      )

instance Hashable MessageResponse

instance NFData MessageResponse
