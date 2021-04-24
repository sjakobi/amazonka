{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ItemResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ItemResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.EndpointItemResponse
import Network.AWS.Pinpoint.Types.EventItemResponse
import Network.AWS.Prelude

-- | Provides information about the results of a request to create or update an endpoint that's associated with an event.
--
--
--
-- /See:/ 'itemResponse' smart constructor.
data ItemResponse = ItemResponse'
  { _irEventsItemResponse ::
      !(Maybe (Map Text EventItemResponse)),
    _irEndpointItemResponse ::
      !(Maybe EndpointItemResponse)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irEventsItemResponse' - A multipart response object that contains a key and a value for each event in the request. In each object, the event ID is the key and an EventItemResponse object is the value.
--
-- * 'irEndpointItemResponse' - The response that was received after the endpoint data was accepted.
itemResponse ::
  ItemResponse
itemResponse =
  ItemResponse'
    { _irEventsItemResponse = Nothing,
      _irEndpointItemResponse = Nothing
    }

-- | A multipart response object that contains a key and a value for each event in the request. In each object, the event ID is the key and an EventItemResponse object is the value.
irEventsItemResponse :: Lens' ItemResponse (HashMap Text EventItemResponse)
irEventsItemResponse = lens _irEventsItemResponse (\s a -> s {_irEventsItemResponse = a}) . _Default . _Map

-- | The response that was received after the endpoint data was accepted.
irEndpointItemResponse :: Lens' ItemResponse (Maybe EndpointItemResponse)
irEndpointItemResponse = lens _irEndpointItemResponse (\s a -> s {_irEndpointItemResponse = a})

instance FromJSON ItemResponse where
  parseJSON =
    withObject
      "ItemResponse"
      ( \x ->
          ItemResponse'
            <$> (x .:? "EventsItemResponse" .!= mempty)
            <*> (x .:? "EndpointItemResponse")
      )

instance Hashable ItemResponse

instance NFData ItemResponse
