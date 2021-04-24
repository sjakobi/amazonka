{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociation where

import Network.AWS.DirectConnect.Types.AssociatedGateway
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationState
import Network.AWS.DirectConnect.Types.RouteFilterPrefix
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an association between a Direct Connect gateway and a virtual private gateway or transit gateway.
--
--
--
-- /See:/ 'directConnectGatewayAssociation' smart constructor.
data DirectConnectGatewayAssociation = DirectConnectGatewayAssociation'
  { _dcgaVirtualGatewayId ::
      !( Maybe
           Text
       ),
    _dcgaVirtualGatewayOwnerAccount ::
      !( Maybe
           Text
       ),
    _dcgaStateChangeError ::
      !( Maybe
           Text
       ),
    _dcgaVirtualGatewayRegion ::
      !( Maybe
           Text
       ),
    _dcgaAssociationState ::
      !( Maybe
           DirectConnectGatewayAssociationState
       ),
    _dcgaAssociatedGateway ::
      !( Maybe
           AssociatedGateway
       ),
    _dcgaAssociationId ::
      !( Maybe
           Text
       ),
    _dcgaDirectConnectGatewayId ::
      !( Maybe
           Text
       ),
    _dcgaAllowedPrefixesToDirectConnectGateway ::
      !( Maybe
           [RouteFilterPrefix]
       ),
    _dcgaDirectConnectGatewayOwnerAccount ::
      !( Maybe
           Text
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

-- | Creates a value of 'DirectConnectGatewayAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcgaVirtualGatewayId' - The ID of the virtual private gateway. Applies only to private virtual interfaces.
--
-- * 'dcgaVirtualGatewayOwnerAccount' - The ID of the AWS account that owns the virtual private gateway.
--
-- * 'dcgaStateChangeError' - The error message if the state of an object failed to advance.
--
-- * 'dcgaVirtualGatewayRegion' - The AWS Region where the virtual private gateway is located.
--
-- * 'dcgaAssociationState' - The state of the association. The following are the possible values:     * @associating@ : The initial state after calling 'CreateDirectConnectGatewayAssociation' .     * @associated@ : The Direct Connect gateway and virtual private gateway or transit gateway are successfully associated and ready to pass traffic.     * @disassociating@ : The initial state after calling 'DeleteDirectConnectGatewayAssociation' .     * @disassociated@ : The virtual private gateway or transit gateway is disassociated from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual private gateway or transit gateway is stopped.
--
-- * 'dcgaAssociatedGateway' - Information about the associated gateway.
--
-- * 'dcgaAssociationId' - The ID of the Direct Connect gateway association.
--
-- * 'dcgaDirectConnectGatewayId' - The ID of the Direct Connect gateway.
--
-- * 'dcgaAllowedPrefixesToDirectConnectGateway' - The Amazon VPC prefixes to advertise to the Direct Connect gateway.
--
-- * 'dcgaDirectConnectGatewayOwnerAccount' - The ID of the AWS account that owns the associated gateway.
directConnectGatewayAssociation ::
  DirectConnectGatewayAssociation
directConnectGatewayAssociation =
  DirectConnectGatewayAssociation'
    { _dcgaVirtualGatewayId =
        Nothing,
      _dcgaVirtualGatewayOwnerAccount = Nothing,
      _dcgaStateChangeError = Nothing,
      _dcgaVirtualGatewayRegion = Nothing,
      _dcgaAssociationState = Nothing,
      _dcgaAssociatedGateway = Nothing,
      _dcgaAssociationId = Nothing,
      _dcgaDirectConnectGatewayId = Nothing,
      _dcgaAllowedPrefixesToDirectConnectGateway =
        Nothing,
      _dcgaDirectConnectGatewayOwnerAccount =
        Nothing
    }

-- | The ID of the virtual private gateway. Applies only to private virtual interfaces.
dcgaVirtualGatewayId :: Lens' DirectConnectGatewayAssociation (Maybe Text)
dcgaVirtualGatewayId = lens _dcgaVirtualGatewayId (\s a -> s {_dcgaVirtualGatewayId = a})

-- | The ID of the AWS account that owns the virtual private gateway.
dcgaVirtualGatewayOwnerAccount :: Lens' DirectConnectGatewayAssociation (Maybe Text)
dcgaVirtualGatewayOwnerAccount = lens _dcgaVirtualGatewayOwnerAccount (\s a -> s {_dcgaVirtualGatewayOwnerAccount = a})

-- | The error message if the state of an object failed to advance.
dcgaStateChangeError :: Lens' DirectConnectGatewayAssociation (Maybe Text)
dcgaStateChangeError = lens _dcgaStateChangeError (\s a -> s {_dcgaStateChangeError = a})

-- | The AWS Region where the virtual private gateway is located.
dcgaVirtualGatewayRegion :: Lens' DirectConnectGatewayAssociation (Maybe Text)
dcgaVirtualGatewayRegion = lens _dcgaVirtualGatewayRegion (\s a -> s {_dcgaVirtualGatewayRegion = a})

-- | The state of the association. The following are the possible values:     * @associating@ : The initial state after calling 'CreateDirectConnectGatewayAssociation' .     * @associated@ : The Direct Connect gateway and virtual private gateway or transit gateway are successfully associated and ready to pass traffic.     * @disassociating@ : The initial state after calling 'DeleteDirectConnectGatewayAssociation' .     * @disassociated@ : The virtual private gateway or transit gateway is disassociated from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual private gateway or transit gateway is stopped.
dcgaAssociationState :: Lens' DirectConnectGatewayAssociation (Maybe DirectConnectGatewayAssociationState)
dcgaAssociationState = lens _dcgaAssociationState (\s a -> s {_dcgaAssociationState = a})

-- | Information about the associated gateway.
dcgaAssociatedGateway :: Lens' DirectConnectGatewayAssociation (Maybe AssociatedGateway)
dcgaAssociatedGateway = lens _dcgaAssociatedGateway (\s a -> s {_dcgaAssociatedGateway = a})

-- | The ID of the Direct Connect gateway association.
dcgaAssociationId :: Lens' DirectConnectGatewayAssociation (Maybe Text)
dcgaAssociationId = lens _dcgaAssociationId (\s a -> s {_dcgaAssociationId = a})

-- | The ID of the Direct Connect gateway.
dcgaDirectConnectGatewayId :: Lens' DirectConnectGatewayAssociation (Maybe Text)
dcgaDirectConnectGatewayId = lens _dcgaDirectConnectGatewayId (\s a -> s {_dcgaDirectConnectGatewayId = a})

-- | The Amazon VPC prefixes to advertise to the Direct Connect gateway.
dcgaAllowedPrefixesToDirectConnectGateway :: Lens' DirectConnectGatewayAssociation [RouteFilterPrefix]
dcgaAllowedPrefixesToDirectConnectGateway = lens _dcgaAllowedPrefixesToDirectConnectGateway (\s a -> s {_dcgaAllowedPrefixesToDirectConnectGateway = a}) . _Default . _Coerce

-- | The ID of the AWS account that owns the associated gateway.
dcgaDirectConnectGatewayOwnerAccount :: Lens' DirectConnectGatewayAssociation (Maybe Text)
dcgaDirectConnectGatewayOwnerAccount = lens _dcgaDirectConnectGatewayOwnerAccount (\s a -> s {_dcgaDirectConnectGatewayOwnerAccount = a})

instance FromJSON DirectConnectGatewayAssociation where
  parseJSON =
    withObject
      "DirectConnectGatewayAssociation"
      ( \x ->
          DirectConnectGatewayAssociation'
            <$> (x .:? "virtualGatewayId")
            <*> (x .:? "virtualGatewayOwnerAccount")
            <*> (x .:? "stateChangeError")
            <*> (x .:? "virtualGatewayRegion")
            <*> (x .:? "associationState")
            <*> (x .:? "associatedGateway")
            <*> (x .:? "associationId")
            <*> (x .:? "directConnectGatewayId")
            <*> ( x .:? "allowedPrefixesToDirectConnectGateway"
                    .!= mempty
                )
            <*> (x .:? "directConnectGatewayOwnerAccount")
      )

instance Hashable DirectConnectGatewayAssociation

instance NFData DirectConnectGatewayAssociation
