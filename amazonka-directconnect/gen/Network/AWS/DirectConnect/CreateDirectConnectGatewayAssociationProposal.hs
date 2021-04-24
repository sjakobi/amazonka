{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.CreateDirectConnectGatewayAssociationProposal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a proposal to associate the specified virtual private gateway or transit gateway with the specified Direct Connect gateway.
--
--
-- You can associate a Direct Connect gateway and virtual private gateway or transit gateway that is owned by any AWS account.
module Network.AWS.DirectConnect.CreateDirectConnectGatewayAssociationProposal
  ( -- * Creating a Request
    createDirectConnectGatewayAssociationProposal,
    CreateDirectConnectGatewayAssociationProposal,

    -- * Request Lenses
    cdcgapRemoveAllowedPrefixesToDirectConnectGateway,
    cdcgapAddAllowedPrefixesToDirectConnectGateway,
    cdcgapDirectConnectGatewayId,
    cdcgapDirectConnectGatewayOwnerAccount,
    cdcgapGatewayId,

    -- * Destructuring the Response
    createDirectConnectGatewayAssociationProposalResponse,
    CreateDirectConnectGatewayAssociationProposalResponse,

    -- * Response Lenses
    cdcgaprrsDirectConnectGatewayAssociationProposal,
    cdcgaprrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDirectConnectGatewayAssociationProposal' smart constructor.
data CreateDirectConnectGatewayAssociationProposal = CreateDirectConnectGatewayAssociationProposal'
  { _cdcgapRemoveAllowedPrefixesToDirectConnectGateway ::
      !( Maybe
           [RouteFilterPrefix]
       ),
    _cdcgapAddAllowedPrefixesToDirectConnectGateway ::
      !( Maybe
           [RouteFilterPrefix]
       ),
    _cdcgapDirectConnectGatewayId ::
      !Text,
    _cdcgapDirectConnectGatewayOwnerAccount ::
      !Text,
    _cdcgapGatewayId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDirectConnectGatewayAssociationProposal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcgapRemoveAllowedPrefixesToDirectConnectGateway' - The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.
--
-- * 'cdcgapAddAllowedPrefixesToDirectConnectGateway' - The Amazon VPC prefixes to advertise to the Direct Connect gateway.
--
-- * 'cdcgapDirectConnectGatewayId' - The ID of the Direct Connect gateway.
--
-- * 'cdcgapDirectConnectGatewayOwnerAccount' - The ID of the AWS account that owns the Direct Connect gateway.
--
-- * 'cdcgapGatewayId' - The ID of the virtual private gateway or transit gateway.
createDirectConnectGatewayAssociationProposal ::
  -- | 'cdcgapDirectConnectGatewayId'
  Text ->
  -- | 'cdcgapDirectConnectGatewayOwnerAccount'
  Text ->
  -- | 'cdcgapGatewayId'
  Text ->
  CreateDirectConnectGatewayAssociationProposal
createDirectConnectGatewayAssociationProposal
  pDirectConnectGatewayId_
  pDirectConnectGatewayOwnerAccount_
  pGatewayId_ =
    CreateDirectConnectGatewayAssociationProposal'
      { _cdcgapRemoveAllowedPrefixesToDirectConnectGateway =
          Nothing,
        _cdcgapAddAllowedPrefixesToDirectConnectGateway =
          Nothing,
        _cdcgapDirectConnectGatewayId =
          pDirectConnectGatewayId_,
        _cdcgapDirectConnectGatewayOwnerAccount =
          pDirectConnectGatewayOwnerAccount_,
        _cdcgapGatewayId =
          pGatewayId_
      }

-- | The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.
cdcgapRemoveAllowedPrefixesToDirectConnectGateway :: Lens' CreateDirectConnectGatewayAssociationProposal [RouteFilterPrefix]
cdcgapRemoveAllowedPrefixesToDirectConnectGateway = lens _cdcgapRemoveAllowedPrefixesToDirectConnectGateway (\s a -> s {_cdcgapRemoveAllowedPrefixesToDirectConnectGateway = a}) . _Default . _Coerce

-- | The Amazon VPC prefixes to advertise to the Direct Connect gateway.
cdcgapAddAllowedPrefixesToDirectConnectGateway :: Lens' CreateDirectConnectGatewayAssociationProposal [RouteFilterPrefix]
cdcgapAddAllowedPrefixesToDirectConnectGateway = lens _cdcgapAddAllowedPrefixesToDirectConnectGateway (\s a -> s {_cdcgapAddAllowedPrefixesToDirectConnectGateway = a}) . _Default . _Coerce

-- | The ID of the Direct Connect gateway.
cdcgapDirectConnectGatewayId :: Lens' CreateDirectConnectGatewayAssociationProposal Text
cdcgapDirectConnectGatewayId = lens _cdcgapDirectConnectGatewayId (\s a -> s {_cdcgapDirectConnectGatewayId = a})

-- | The ID of the AWS account that owns the Direct Connect gateway.
cdcgapDirectConnectGatewayOwnerAccount :: Lens' CreateDirectConnectGatewayAssociationProposal Text
cdcgapDirectConnectGatewayOwnerAccount = lens _cdcgapDirectConnectGatewayOwnerAccount (\s a -> s {_cdcgapDirectConnectGatewayOwnerAccount = a})

-- | The ID of the virtual private gateway or transit gateway.
cdcgapGatewayId :: Lens' CreateDirectConnectGatewayAssociationProposal Text
cdcgapGatewayId = lens _cdcgapGatewayId (\s a -> s {_cdcgapGatewayId = a})

instance
  AWSRequest
    CreateDirectConnectGatewayAssociationProposal
  where
  type
    Rs CreateDirectConnectGatewayAssociationProposal =
      CreateDirectConnectGatewayAssociationProposalResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          CreateDirectConnectGatewayAssociationProposalResponse'
            <$> (x .?> "directConnectGatewayAssociationProposal")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    CreateDirectConnectGatewayAssociationProposal

instance
  NFData
    CreateDirectConnectGatewayAssociationProposal

instance
  ToHeaders
    CreateDirectConnectGatewayAssociationProposal
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.CreateDirectConnectGatewayAssociationProposal" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    CreateDirectConnectGatewayAssociationProposal
  where
  toJSON
    CreateDirectConnectGatewayAssociationProposal' {..} =
      object
        ( catMaybes
            [ ("removeAllowedPrefixesToDirectConnectGateway" .=)
                <$> _cdcgapRemoveAllowedPrefixesToDirectConnectGateway,
              ("addAllowedPrefixesToDirectConnectGateway" .=)
                <$> _cdcgapAddAllowedPrefixesToDirectConnectGateway,
              Just
                ( "directConnectGatewayId"
                    .= _cdcgapDirectConnectGatewayId
                ),
              Just
                ( "directConnectGatewayOwnerAccount"
                    .= _cdcgapDirectConnectGatewayOwnerAccount
                ),
              Just ("gatewayId" .= _cdcgapGatewayId)
            ]
        )

instance
  ToPath
    CreateDirectConnectGatewayAssociationProposal
  where
  toPath = const "/"

instance
  ToQuery
    CreateDirectConnectGatewayAssociationProposal
  where
  toQuery = const mempty

-- | /See:/ 'createDirectConnectGatewayAssociationProposalResponse' smart constructor.
data CreateDirectConnectGatewayAssociationProposalResponse = CreateDirectConnectGatewayAssociationProposalResponse'
  { _cdcgaprrsDirectConnectGatewayAssociationProposal ::
      !( Maybe
           DirectConnectGatewayAssociationProposal
       ),
    _cdcgaprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDirectConnectGatewayAssociationProposalResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcgaprrsDirectConnectGatewayAssociationProposal' - Information about the Direct Connect gateway proposal.
--
-- * 'cdcgaprrsResponseStatus' - -- | The response status code.
createDirectConnectGatewayAssociationProposalResponse ::
  -- | 'cdcgaprrsResponseStatus'
  Int ->
  CreateDirectConnectGatewayAssociationProposalResponse
createDirectConnectGatewayAssociationProposalResponse
  pResponseStatus_ =
    CreateDirectConnectGatewayAssociationProposalResponse'
      { _cdcgaprrsDirectConnectGatewayAssociationProposal =
          Nothing,
        _cdcgaprrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the Direct Connect gateway proposal.
cdcgaprrsDirectConnectGatewayAssociationProposal :: Lens' CreateDirectConnectGatewayAssociationProposalResponse (Maybe DirectConnectGatewayAssociationProposal)
cdcgaprrsDirectConnectGatewayAssociationProposal = lens _cdcgaprrsDirectConnectGatewayAssociationProposal (\s a -> s {_cdcgaprrsDirectConnectGatewayAssociationProposal = a})

-- | -- | The response status code.
cdcgaprrsResponseStatus :: Lens' CreateDirectConnectGatewayAssociationProposalResponse Int
cdcgaprrsResponseStatus = lens _cdcgaprrsResponseStatus (\s a -> s {_cdcgaprrsResponseStatus = a})

instance
  NFData
    CreateDirectConnectGatewayAssociationProposalResponse
