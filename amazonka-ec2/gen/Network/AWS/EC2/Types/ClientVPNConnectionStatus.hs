{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNConnectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNConnectionStatus where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ClientVPNConnectionStatusCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the status of a client connection.
--
--
--
-- /See:/ 'clientVPNConnectionStatus' smart constructor.
data ClientVPNConnectionStatus = ClientVPNConnectionStatus'
  { _cvcsMessage ::
      !(Maybe Text),
    _cvcsCode ::
      !( Maybe
           ClientVPNConnectionStatusCode
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

-- | Creates a value of 'ClientVPNConnectionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvcsMessage' - A message about the status of the client connection, if applicable.
--
-- * 'cvcsCode' - The state of the client connection.
clientVPNConnectionStatus ::
  ClientVPNConnectionStatus
clientVPNConnectionStatus =
  ClientVPNConnectionStatus'
    { _cvcsMessage = Nothing,
      _cvcsCode = Nothing
    }

-- | A message about the status of the client connection, if applicable.
cvcsMessage :: Lens' ClientVPNConnectionStatus (Maybe Text)
cvcsMessage = lens _cvcsMessage (\s a -> s {_cvcsMessage = a})

-- | The state of the client connection.
cvcsCode :: Lens' ClientVPNConnectionStatus (Maybe ClientVPNConnectionStatusCode)
cvcsCode = lens _cvcsCode (\s a -> s {_cvcsCode = a})

instance FromXML ClientVPNConnectionStatus where
  parseXML x =
    ClientVPNConnectionStatus'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable ClientVPNConnectionStatus

instance NFData ClientVPNConnectionStatus
