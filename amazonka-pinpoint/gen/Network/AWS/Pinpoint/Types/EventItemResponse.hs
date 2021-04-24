{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EventItemResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EventItemResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the status code and message that result from processing an event.
--
--
--
-- /See:/ 'eventItemResponse' smart constructor.
data EventItemResponse = EventItemResponse'
  { _eirMessage ::
      !(Maybe Text),
    _eirStatusCode :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eirMessage' - A custom message that's returned in the response as a result of processing the event.
--
-- * 'eirStatusCode' - The status code that's returned in the response as a result of processing the event. Possible values are: 202, for events that were accepted; and, 400, for events that weren't valid.
eventItemResponse ::
  EventItemResponse
eventItemResponse =
  EventItemResponse'
    { _eirMessage = Nothing,
      _eirStatusCode = Nothing
    }

-- | A custom message that's returned in the response as a result of processing the event.
eirMessage :: Lens' EventItemResponse (Maybe Text)
eirMessage = lens _eirMessage (\s a -> s {_eirMessage = a})

-- | The status code that's returned in the response as a result of processing the event. Possible values are: 202, for events that were accepted; and, 400, for events that weren't valid.
eirStatusCode :: Lens' EventItemResponse (Maybe Int)
eirStatusCode = lens _eirStatusCode (\s a -> s {_eirStatusCode = a})

instance FromJSON EventItemResponse where
  parseJSON =
    withObject
      "EventItemResponse"
      ( \x ->
          EventItemResponse'
            <$> (x .:? "Message") <*> (x .:? "StatusCode")
      )

instance Hashable EventItemResponse

instance NFData EventItemResponse
