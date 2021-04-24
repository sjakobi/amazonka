{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNEndpointStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNEndpointStatus where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ClientVPNEndpointStatusCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the state of a Client VPN endpoint.
--
--
--
-- /See:/ 'clientVPNEndpointStatus' smart constructor.
data ClientVPNEndpointStatus = ClientVPNEndpointStatus'
  { _cvesMessage ::
      !(Maybe Text),
    _cvesCode ::
      !( Maybe
           ClientVPNEndpointStatusCode
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

-- | Creates a value of 'ClientVPNEndpointStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvesMessage' - A message about the status of the Client VPN endpoint.
--
-- * 'cvesCode' - The state of the Client VPN endpoint. Possible states include:     * @pending-associate@ - The Client VPN endpoint has been created but no target networks have been associated. The Client VPN endpoint cannot accept connections.     * @available@ - The Client VPN endpoint has been created and a target network has been associated. The Client VPN endpoint can accept connections.     * @deleting@ - The Client VPN endpoint is being deleted. The Client VPN endpoint cannot accept connections.     * @deleted@ - The Client VPN endpoint has been deleted. The Client VPN endpoint cannot accept connections.
clientVPNEndpointStatus ::
  ClientVPNEndpointStatus
clientVPNEndpointStatus =
  ClientVPNEndpointStatus'
    { _cvesMessage = Nothing,
      _cvesCode = Nothing
    }

-- | A message about the status of the Client VPN endpoint.
cvesMessage :: Lens' ClientVPNEndpointStatus (Maybe Text)
cvesMessage = lens _cvesMessage (\s a -> s {_cvesMessage = a})

-- | The state of the Client VPN endpoint. Possible states include:     * @pending-associate@ - The Client VPN endpoint has been created but no target networks have been associated. The Client VPN endpoint cannot accept connections.     * @available@ - The Client VPN endpoint has been created and a target network has been associated. The Client VPN endpoint can accept connections.     * @deleting@ - The Client VPN endpoint is being deleted. The Client VPN endpoint cannot accept connections.     * @deleted@ - The Client VPN endpoint has been deleted. The Client VPN endpoint cannot accept connections.
cvesCode :: Lens' ClientVPNEndpointStatus (Maybe ClientVPNEndpointStatusCode)
cvesCode = lens _cvesCode (\s a -> s {_cvesCode = a})

instance FromXML ClientVPNEndpointStatus where
  parseXML x =
    ClientVPNEndpointStatus'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable ClientVPNEndpointStatus

instance NFData ClientVPNEndpointStatus
