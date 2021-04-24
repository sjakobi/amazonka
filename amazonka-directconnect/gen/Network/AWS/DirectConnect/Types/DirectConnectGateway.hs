{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGateway where

import Network.AWS.DirectConnect.Types.DirectConnectGatewayState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a Direct Connect gateway, which enables you to connect virtual interfaces and virtual private gateway or transit gateways.
--
--
--
-- /See:/ 'directConnectGateway' smart constructor.
data DirectConnectGateway = DirectConnectGateway'
  { _dcgDirectConnectGatewayState ::
      !( Maybe
           DirectConnectGatewayState
       ),
    _dcgStateChangeError ::
      !(Maybe Text),
    _dcgDirectConnectGatewayName ::
      !(Maybe Text),
    _dcgAmazonSideASN ::
      !(Maybe Integer),
    _dcgDirectConnectGatewayId ::
      !(Maybe Text),
    _dcgOwnerAccount ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DirectConnectGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcgDirectConnectGatewayState' - The state of the Direct Connect gateway. The following are the possible values:     * @pending@ : The initial state after calling 'CreateDirectConnectGateway' .     * @available@ : The Direct Connect gateway is ready for use.     * @deleting@ : The initial state after calling 'DeleteDirectConnectGateway' .     * @deleted@ : The Direct Connect gateway is deleted and cannot pass traffic.
--
-- * 'dcgStateChangeError' - The error message if the state of an object failed to advance.
--
-- * 'dcgDirectConnectGatewayName' - The name of the Direct Connect gateway.
--
-- * 'dcgAmazonSideASN' - The autonomous system number (ASN) for the Amazon side of the connection.
--
-- * 'dcgDirectConnectGatewayId' - The ID of the Direct Connect gateway.
--
-- * 'dcgOwnerAccount' - The ID of the AWS account that owns the Direct Connect gateway.
directConnectGateway ::
  DirectConnectGateway
directConnectGateway =
  DirectConnectGateway'
    { _dcgDirectConnectGatewayState =
        Nothing,
      _dcgStateChangeError = Nothing,
      _dcgDirectConnectGatewayName = Nothing,
      _dcgAmazonSideASN = Nothing,
      _dcgDirectConnectGatewayId = Nothing,
      _dcgOwnerAccount = Nothing
    }

-- | The state of the Direct Connect gateway. The following are the possible values:     * @pending@ : The initial state after calling 'CreateDirectConnectGateway' .     * @available@ : The Direct Connect gateway is ready for use.     * @deleting@ : The initial state after calling 'DeleteDirectConnectGateway' .     * @deleted@ : The Direct Connect gateway is deleted and cannot pass traffic.
dcgDirectConnectGatewayState :: Lens' DirectConnectGateway (Maybe DirectConnectGatewayState)
dcgDirectConnectGatewayState = lens _dcgDirectConnectGatewayState (\s a -> s {_dcgDirectConnectGatewayState = a})

-- | The error message if the state of an object failed to advance.
dcgStateChangeError :: Lens' DirectConnectGateway (Maybe Text)
dcgStateChangeError = lens _dcgStateChangeError (\s a -> s {_dcgStateChangeError = a})

-- | The name of the Direct Connect gateway.
dcgDirectConnectGatewayName :: Lens' DirectConnectGateway (Maybe Text)
dcgDirectConnectGatewayName = lens _dcgDirectConnectGatewayName (\s a -> s {_dcgDirectConnectGatewayName = a})

-- | The autonomous system number (ASN) for the Amazon side of the connection.
dcgAmazonSideASN :: Lens' DirectConnectGateway (Maybe Integer)
dcgAmazonSideASN = lens _dcgAmazonSideASN (\s a -> s {_dcgAmazonSideASN = a})

-- | The ID of the Direct Connect gateway.
dcgDirectConnectGatewayId :: Lens' DirectConnectGateway (Maybe Text)
dcgDirectConnectGatewayId = lens _dcgDirectConnectGatewayId (\s a -> s {_dcgDirectConnectGatewayId = a})

-- | The ID of the AWS account that owns the Direct Connect gateway.
dcgOwnerAccount :: Lens' DirectConnectGateway (Maybe Text)
dcgOwnerAccount = lens _dcgOwnerAccount (\s a -> s {_dcgOwnerAccount = a})

instance FromJSON DirectConnectGateway where
  parseJSON =
    withObject
      "DirectConnectGateway"
      ( \x ->
          DirectConnectGateway'
            <$> (x .:? "directConnectGatewayState")
            <*> (x .:? "stateChangeError")
            <*> (x .:? "directConnectGatewayName")
            <*> (x .:? "amazonSideAsn")
            <*> (x .:? "directConnectGatewayId")
            <*> (x .:? "ownerAccount")
      )

instance Hashable DirectConnectGateway

instance NFData DirectConnectGateway
