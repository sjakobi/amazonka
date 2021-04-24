{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EventsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EventsResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ItemResponse
import Network.AWS.Prelude

-- | Provides information about endpoints and the events that they're associated with.
--
--
--
-- /See:/ 'eventsResponse' smart constructor.
newtype EventsResponse = EventsResponse'
  { _erResults ::
      Maybe (Map Text ItemResponse)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erResults' - A map that contains a multipart response for each endpoint. For each item in this object, the endpoint ID is the key and the item response is the value. If no item response exists, the value can also be one of the following: 202, the request was processed successfully; or 400, the payload wasn't valid or required fields were missing.
eventsResponse ::
  EventsResponse
eventsResponse =
  EventsResponse' {_erResults = Nothing}

-- | A map that contains a multipart response for each endpoint. For each item in this object, the endpoint ID is the key and the item response is the value. If no item response exists, the value can also be one of the following: 202, the request was processed successfully; or 400, the payload wasn't valid or required fields were missing.
erResults :: Lens' EventsResponse (HashMap Text ItemResponse)
erResults = lens _erResults (\s a -> s {_erResults = a}) . _Default . _Map

instance FromJSON EventsResponse where
  parseJSON =
    withObject
      "EventsResponse"
      ( \x ->
          EventsResponse' <$> (x .:? "Results" .!= mempty)
      )

instance Hashable EventsResponse

instance NFData EventsResponse
