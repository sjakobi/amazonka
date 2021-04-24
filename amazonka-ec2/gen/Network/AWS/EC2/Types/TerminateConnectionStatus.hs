{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TerminateConnectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TerminateConnectionStatus where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ClientVPNConnectionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a terminated Client VPN endpoint client connection.
--
--
--
-- /See:/ 'terminateConnectionStatus' smart constructor.
data TerminateConnectionStatus = TerminateConnectionStatus'
  { _tcsConnectionId ::
      !(Maybe Text),
    _tcsPreviousStatus ::
      !( Maybe
           ClientVPNConnectionStatus
       ),
    _tcsCurrentStatus ::
      !( Maybe
           ClientVPNConnectionStatus
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TerminateConnectionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcsConnectionId' - The ID of the client connection.
--
-- * 'tcsPreviousStatus' - The state of the client connection.
--
-- * 'tcsCurrentStatus' - A message about the status of the client connection, if applicable.
terminateConnectionStatus ::
  TerminateConnectionStatus
terminateConnectionStatus =
  TerminateConnectionStatus'
    { _tcsConnectionId =
        Nothing,
      _tcsPreviousStatus = Nothing,
      _tcsCurrentStatus = Nothing
    }

-- | The ID of the client connection.
tcsConnectionId :: Lens' TerminateConnectionStatus (Maybe Text)
tcsConnectionId = lens _tcsConnectionId (\s a -> s {_tcsConnectionId = a})

-- | The state of the client connection.
tcsPreviousStatus :: Lens' TerminateConnectionStatus (Maybe ClientVPNConnectionStatus)
tcsPreviousStatus = lens _tcsPreviousStatus (\s a -> s {_tcsPreviousStatus = a})

-- | A message about the status of the client connection, if applicable.
tcsCurrentStatus :: Lens' TerminateConnectionStatus (Maybe ClientVPNConnectionStatus)
tcsCurrentStatus = lens _tcsCurrentStatus (\s a -> s {_tcsCurrentStatus = a})

instance FromXML TerminateConnectionStatus where
  parseXML x =
    TerminateConnectionStatus'
      <$> (x .@? "connectionId")
      <*> (x .@? "previousStatus")
      <*> (x .@? "currentStatus")

instance Hashable TerminateConnectionStatus

instance NFData TerminateConnectionStatus
