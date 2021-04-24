{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ServiceEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ServiceEvent where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details on an event associated with a service.
--
--
--
-- /See:/ 'serviceEvent' smart constructor.
data ServiceEvent = ServiceEvent'
  { _seMessage ::
      !(Maybe Text),
    _seCreatedAt :: !(Maybe POSIX),
    _seId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seMessage' - The event message.
--
-- * 'seCreatedAt' - The Unix timestamp for when the event was triggered.
--
-- * 'seId' - The ID string of the event.
serviceEvent ::
  ServiceEvent
serviceEvent =
  ServiceEvent'
    { _seMessage = Nothing,
      _seCreatedAt = Nothing,
      _seId = Nothing
    }

-- | The event message.
seMessage :: Lens' ServiceEvent (Maybe Text)
seMessage = lens _seMessage (\s a -> s {_seMessage = a})

-- | The Unix timestamp for when the event was triggered.
seCreatedAt :: Lens' ServiceEvent (Maybe UTCTime)
seCreatedAt = lens _seCreatedAt (\s a -> s {_seCreatedAt = a}) . mapping _Time

-- | The ID string of the event.
seId :: Lens' ServiceEvent (Maybe Text)
seId = lens _seId (\s a -> s {_seId = a})

instance FromJSON ServiceEvent where
  parseJSON =
    withObject
      "ServiceEvent"
      ( \x ->
          ServiceEvent'
            <$> (x .:? "message")
            <*> (x .:? "createdAt")
            <*> (x .:? "id")
      )

instance Hashable ServiceEvent

instance NFData ServiceEvent
