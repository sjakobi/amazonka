{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.Types.ServerEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types.ServerEvent where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An event that is related to the server, such as the start of maintenance or backup.
--
--
--
-- /See:/ 'serverEvent' smart constructor.
data ServerEvent = ServerEvent'
  { _seLogURL ::
      !(Maybe Text),
    _seMessage :: !(Maybe Text),
    _seCreatedAt :: !(Maybe POSIX),
    _seServerName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServerEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seLogURL' - The Amazon S3 URL of the event's log file.
--
-- * 'seMessage' - A human-readable informational or status message.
--
-- * 'seCreatedAt' - The time when the event occurred.
--
-- * 'seServerName' - The name of the server on or for which the event occurred.
serverEvent ::
  ServerEvent
serverEvent =
  ServerEvent'
    { _seLogURL = Nothing,
      _seMessage = Nothing,
      _seCreatedAt = Nothing,
      _seServerName = Nothing
    }

-- | The Amazon S3 URL of the event's log file.
seLogURL :: Lens' ServerEvent (Maybe Text)
seLogURL = lens _seLogURL (\s a -> s {_seLogURL = a})

-- | A human-readable informational or status message.
seMessage :: Lens' ServerEvent (Maybe Text)
seMessage = lens _seMessage (\s a -> s {_seMessage = a})

-- | The time when the event occurred.
seCreatedAt :: Lens' ServerEvent (Maybe UTCTime)
seCreatedAt = lens _seCreatedAt (\s a -> s {_seCreatedAt = a}) . mapping _Time

-- | The name of the server on or for which the event occurred.
seServerName :: Lens' ServerEvent (Maybe Text)
seServerName = lens _seServerName (\s a -> s {_seServerName = a})

instance FromJSON ServerEvent where
  parseJSON =
    withObject
      "ServerEvent"
      ( \x ->
          ServerEvent'
            <$> (x .:? "LogUrl")
            <*> (x .:? "Message")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "ServerName")
      )

instance Hashable ServerEvent

instance NFData ServerEvent
