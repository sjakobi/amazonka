{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.Connection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.Connection where

import Network.AWS.CloudWatchEvents.Types.ConnectionAuthorizationType
import Network.AWS.CloudWatchEvents.Types.ConnectionState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a connection.
--
--
--
-- /See:/ 'connection' smart constructor.
data Connection = Connection'
  { _cCreationTime ::
      !(Maybe POSIX),
    _cConnectionState :: !(Maybe ConnectionState),
    _cStateReason :: !(Maybe Text),
    _cAuthorizationType ::
      !(Maybe ConnectionAuthorizationType),
    _cConnectionARN :: !(Maybe Text),
    _cName :: !(Maybe Text),
    _cLastModifiedTime :: !(Maybe POSIX),
    _cLastAuthorizedTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Connection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCreationTime' - A time stamp for the time that the connection was created.
--
-- * 'cConnectionState' - The state of the connection.
--
-- * 'cStateReason' - The reason that the connection is in the connection state.
--
-- * 'cAuthorizationType' - The authorization type specified for the connection.
--
-- * 'cConnectionARN' - The ARN of the connection.
--
-- * 'cName' - The name of the connection.
--
-- * 'cLastModifiedTime' - A time stamp for the time that the connection was last modified.
--
-- * 'cLastAuthorizedTime' - A time stamp for the time that the connection was last authorized.
connection ::
  Connection
connection =
  Connection'
    { _cCreationTime = Nothing,
      _cConnectionState = Nothing,
      _cStateReason = Nothing,
      _cAuthorizationType = Nothing,
      _cConnectionARN = Nothing,
      _cName = Nothing,
      _cLastModifiedTime = Nothing,
      _cLastAuthorizedTime = Nothing
    }

-- | A time stamp for the time that the connection was created.
cCreationTime :: Lens' Connection (Maybe UTCTime)
cCreationTime = lens _cCreationTime (\s a -> s {_cCreationTime = a}) . mapping _Time

-- | The state of the connection.
cConnectionState :: Lens' Connection (Maybe ConnectionState)
cConnectionState = lens _cConnectionState (\s a -> s {_cConnectionState = a})

-- | The reason that the connection is in the connection state.
cStateReason :: Lens' Connection (Maybe Text)
cStateReason = lens _cStateReason (\s a -> s {_cStateReason = a})

-- | The authorization type specified for the connection.
cAuthorizationType :: Lens' Connection (Maybe ConnectionAuthorizationType)
cAuthorizationType = lens _cAuthorizationType (\s a -> s {_cAuthorizationType = a})

-- | The ARN of the connection.
cConnectionARN :: Lens' Connection (Maybe Text)
cConnectionARN = lens _cConnectionARN (\s a -> s {_cConnectionARN = a})

-- | The name of the connection.
cName :: Lens' Connection (Maybe Text)
cName = lens _cName (\s a -> s {_cName = a})

-- | A time stamp for the time that the connection was last modified.
cLastModifiedTime :: Lens' Connection (Maybe UTCTime)
cLastModifiedTime = lens _cLastModifiedTime (\s a -> s {_cLastModifiedTime = a}) . mapping _Time

-- | A time stamp for the time that the connection was last authorized.
cLastAuthorizedTime :: Lens' Connection (Maybe UTCTime)
cLastAuthorizedTime = lens _cLastAuthorizedTime (\s a -> s {_cLastAuthorizedTime = a}) . mapping _Time

instance FromJSON Connection where
  parseJSON =
    withObject
      "Connection"
      ( \x ->
          Connection'
            <$> (x .:? "CreationTime")
            <*> (x .:? "ConnectionState")
            <*> (x .:? "StateReason")
            <*> (x .:? "AuthorizationType")
            <*> (x .:? "ConnectionArn")
            <*> (x .:? "Name")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "LastAuthorizedTime")
      )

instance Hashable Connection

instance NFData Connection
