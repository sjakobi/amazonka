{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayConnectOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayConnectOptions where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ProtocolValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the Connect attachment options.
--
--
--
-- /See:/ 'transitGatewayConnectOptions' smart constructor.
newtype TransitGatewayConnectOptions = TransitGatewayConnectOptions'
  { _tgcoProtocol ::
      Maybe
        ProtocolValue
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TransitGatewayConnectOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgcoProtocol' - The tunnel protocol.
transitGatewayConnectOptions ::
  TransitGatewayConnectOptions
transitGatewayConnectOptions =
  TransitGatewayConnectOptions'
    { _tgcoProtocol =
        Nothing
    }

-- | The tunnel protocol.
tgcoProtocol :: Lens' TransitGatewayConnectOptions (Maybe ProtocolValue)
tgcoProtocol = lens _tgcoProtocol (\s a -> s {_tgcoProtocol = a})

instance FromXML TransitGatewayConnectOptions where
  parseXML x =
    TransitGatewayConnectOptions'
      <$> (x .@? "protocol")

instance Hashable TransitGatewayConnectOptions

instance NFData TransitGatewayConnectOptions
