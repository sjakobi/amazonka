{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNEndpointAttributeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNEndpointAttributeStatus where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ClientVPNEndpointAttributeStatusCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the status of the Client VPN endpoint attribute.
--
--
--
-- /See:/ 'clientVPNEndpointAttributeStatus' smart constructor.
data ClientVPNEndpointAttributeStatus = ClientVPNEndpointAttributeStatus'
  { _cveasMessage ::
      !( Maybe
           Text
       ),
    _cveasCode ::
      !( Maybe
           ClientVPNEndpointAttributeStatusCode
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

-- | Creates a value of 'ClientVPNEndpointAttributeStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cveasMessage' - The status message.
--
-- * 'cveasCode' - The status code.
clientVPNEndpointAttributeStatus ::
  ClientVPNEndpointAttributeStatus
clientVPNEndpointAttributeStatus =
  ClientVPNEndpointAttributeStatus'
    { _cveasMessage =
        Nothing,
      _cveasCode = Nothing
    }

-- | The status message.
cveasMessage :: Lens' ClientVPNEndpointAttributeStatus (Maybe Text)
cveasMessage = lens _cveasMessage (\s a -> s {_cveasMessage = a})

-- | The status code.
cveasCode :: Lens' ClientVPNEndpointAttributeStatus (Maybe ClientVPNEndpointAttributeStatusCode)
cveasCode = lens _cveasCode (\s a -> s {_cveasCode = a})

instance FromXML ClientVPNEndpointAttributeStatus where
  parseXML x =
    ClientVPNEndpointAttributeStatus'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable ClientVPNEndpointAttributeStatus

instance NFData ClientVPNEndpointAttributeStatus
