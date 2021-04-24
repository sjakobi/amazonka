{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CreateTransitGatewayConnectRequestOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CreateTransitGatewayConnectRequestOptions where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ProtocolValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The options for a Connect attachment.
--
--
--
-- /See:/ 'createTransitGatewayConnectRequestOptions' smart constructor.
newtype CreateTransitGatewayConnectRequestOptions = CreateTransitGatewayConnectRequestOptions'
  { _ctgcroProtocol ::
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

-- | Creates a value of 'CreateTransitGatewayConnectRequestOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgcroProtocol' - The tunnel protocol.
createTransitGatewayConnectRequestOptions ::
  -- | 'ctgcroProtocol'
  ProtocolValue ->
  CreateTransitGatewayConnectRequestOptions
createTransitGatewayConnectRequestOptions pProtocol_ =
  CreateTransitGatewayConnectRequestOptions'
    { _ctgcroProtocol =
        pProtocol_
    }

-- | The tunnel protocol.
ctgcroProtocol :: Lens' CreateTransitGatewayConnectRequestOptions ProtocolValue
ctgcroProtocol = lens _ctgcroProtocol (\s a -> s {_ctgcroProtocol = a})

instance
  Hashable
    CreateTransitGatewayConnectRequestOptions

instance
  NFData
    CreateTransitGatewayConnectRequestOptions

instance
  ToQuery
    CreateTransitGatewayConnectRequestOptions
  where
  toQuery
    CreateTransitGatewayConnectRequestOptions' {..} =
      mconcat ["Protocol" =: _ctgcroProtocol]
