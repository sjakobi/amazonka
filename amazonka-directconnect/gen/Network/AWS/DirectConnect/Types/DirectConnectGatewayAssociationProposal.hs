{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationProposal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationProposal where

import Network.AWS.DirectConnect.Types.AssociatedGateway
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationProposalState
import Network.AWS.DirectConnect.Types.RouteFilterPrefix
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the proposal request to attach a virtual private gateway to a Direct Connect gateway.
--
--
--
-- /See:/ 'directConnectGatewayAssociationProposal' smart constructor.
data DirectConnectGatewayAssociationProposal = DirectConnectGatewayAssociationProposal'
  { _dcgapProposalId ::
      !( Maybe
           Text
       ),
    _dcgapRequestedAllowedPrefixesToDirectConnectGateway ::
      !( Maybe
           [RouteFilterPrefix]
       ),
    _dcgapProposalState ::
      !( Maybe
           DirectConnectGatewayAssociationProposalState
       ),
    _dcgapAssociatedGateway ::
      !( Maybe
           AssociatedGateway
       ),
    _dcgapExistingAllowedPrefixesToDirectConnectGateway ::
      !( Maybe
           [RouteFilterPrefix]
       ),
    _dcgapDirectConnectGatewayId ::
      !( Maybe
           Text
       ),
    _dcgapDirectConnectGatewayOwnerAccount ::
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

-- | Creates a value of 'DirectConnectGatewayAssociationProposal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcgapProposalId' - The ID of the association proposal.
--
-- * 'dcgapRequestedAllowedPrefixesToDirectConnectGateway' - The Amazon VPC prefixes to advertise to the Direct Connect gateway.
--
-- * 'dcgapProposalState' - The state of the proposal. The following are possible values:     * @accepted@ : The proposal has been accepted. The Direct Connect gateway association is available to use in this state.     * @deleted@ : The proposal has been deleted by the owner that made the proposal. The Direct Connect gateway association cannot be used in this state.     * @requested@ : The proposal has been requested. The Direct Connect gateway association cannot be used in this state.
--
-- * 'dcgapAssociatedGateway' - Information about the associated gateway.
--
-- * 'dcgapExistingAllowedPrefixesToDirectConnectGateway' - The existing Amazon VPC prefixes advertised to the Direct Connect gateway.
--
-- * 'dcgapDirectConnectGatewayId' - The ID of the Direct Connect gateway.
--
-- * 'dcgapDirectConnectGatewayOwnerAccount' - The ID of the AWS account that owns the Direct Connect gateway.
directConnectGatewayAssociationProposal ::
  DirectConnectGatewayAssociationProposal
directConnectGatewayAssociationProposal =
  DirectConnectGatewayAssociationProposal'
    { _dcgapProposalId =
        Nothing,
      _dcgapRequestedAllowedPrefixesToDirectConnectGateway =
        Nothing,
      _dcgapProposalState = Nothing,
      _dcgapAssociatedGateway = Nothing,
      _dcgapExistingAllowedPrefixesToDirectConnectGateway =
        Nothing,
      _dcgapDirectConnectGatewayId =
        Nothing,
      _dcgapDirectConnectGatewayOwnerAccount =
        Nothing
    }

-- | The ID of the association proposal.
dcgapProposalId :: Lens' DirectConnectGatewayAssociationProposal (Maybe Text)
dcgapProposalId = lens _dcgapProposalId (\s a -> s {_dcgapProposalId = a})

-- | The Amazon VPC prefixes to advertise to the Direct Connect gateway.
dcgapRequestedAllowedPrefixesToDirectConnectGateway :: Lens' DirectConnectGatewayAssociationProposal [RouteFilterPrefix]
dcgapRequestedAllowedPrefixesToDirectConnectGateway = lens _dcgapRequestedAllowedPrefixesToDirectConnectGateway (\s a -> s {_dcgapRequestedAllowedPrefixesToDirectConnectGateway = a}) . _Default . _Coerce

-- | The state of the proposal. The following are possible values:     * @accepted@ : The proposal has been accepted. The Direct Connect gateway association is available to use in this state.     * @deleted@ : The proposal has been deleted by the owner that made the proposal. The Direct Connect gateway association cannot be used in this state.     * @requested@ : The proposal has been requested. The Direct Connect gateway association cannot be used in this state.
dcgapProposalState :: Lens' DirectConnectGatewayAssociationProposal (Maybe DirectConnectGatewayAssociationProposalState)
dcgapProposalState = lens _dcgapProposalState (\s a -> s {_dcgapProposalState = a})

-- | Information about the associated gateway.
dcgapAssociatedGateway :: Lens' DirectConnectGatewayAssociationProposal (Maybe AssociatedGateway)
dcgapAssociatedGateway = lens _dcgapAssociatedGateway (\s a -> s {_dcgapAssociatedGateway = a})

-- | The existing Amazon VPC prefixes advertised to the Direct Connect gateway.
dcgapExistingAllowedPrefixesToDirectConnectGateway :: Lens' DirectConnectGatewayAssociationProposal [RouteFilterPrefix]
dcgapExistingAllowedPrefixesToDirectConnectGateway = lens _dcgapExistingAllowedPrefixesToDirectConnectGateway (\s a -> s {_dcgapExistingAllowedPrefixesToDirectConnectGateway = a}) . _Default . _Coerce

-- | The ID of the Direct Connect gateway.
dcgapDirectConnectGatewayId :: Lens' DirectConnectGatewayAssociationProposal (Maybe Text)
dcgapDirectConnectGatewayId = lens _dcgapDirectConnectGatewayId (\s a -> s {_dcgapDirectConnectGatewayId = a})

-- | The ID of the AWS account that owns the Direct Connect gateway.
dcgapDirectConnectGatewayOwnerAccount :: Lens' DirectConnectGatewayAssociationProposal (Maybe Text)
dcgapDirectConnectGatewayOwnerAccount = lens _dcgapDirectConnectGatewayOwnerAccount (\s a -> s {_dcgapDirectConnectGatewayOwnerAccount = a})

instance
  FromJSON
    DirectConnectGatewayAssociationProposal
  where
  parseJSON =
    withObject
      "DirectConnectGatewayAssociationProposal"
      ( \x ->
          DirectConnectGatewayAssociationProposal'
            <$> (x .:? "proposalId")
            <*> ( x
                    .:? "requestedAllowedPrefixesToDirectConnectGateway"
                    .!= mempty
                )
            <*> (x .:? "proposalState")
            <*> (x .:? "associatedGateway")
            <*> ( x
                    .:? "existingAllowedPrefixesToDirectConnectGateway"
                    .!= mempty
                )
            <*> (x .:? "directConnectGatewayId")
            <*> (x .:? "directConnectGatewayOwnerAccount")
      )

instance
  Hashable
    DirectConnectGatewayAssociationProposal

instance
  NFData
    DirectConnectGatewayAssociationProposal
