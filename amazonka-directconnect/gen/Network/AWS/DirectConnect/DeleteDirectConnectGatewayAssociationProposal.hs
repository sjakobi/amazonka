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
-- Module      : Network.AWS.DirectConnect.DeleteDirectConnectGatewayAssociationProposal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the association proposal request between the specified Direct Connect gateway and virtual private gateway or transit gateway.
module Network.AWS.DirectConnect.DeleteDirectConnectGatewayAssociationProposal
  ( -- * Creating a Request
    deleteDirectConnectGatewayAssociationProposal,
    DeleteDirectConnectGatewayAssociationProposal,

    -- * Request Lenses
    ddcgapProposalId,

    -- * Destructuring the Response
    deleteDirectConnectGatewayAssociationProposalResponse,
    DeleteDirectConnectGatewayAssociationProposalResponse,

    -- * Response Lenses
    ddcgaprrsDirectConnectGatewayAssociationProposal,
    ddcgaprrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDirectConnectGatewayAssociationProposal' smart constructor.
newtype DeleteDirectConnectGatewayAssociationProposal = DeleteDirectConnectGatewayAssociationProposal'
  { _ddcgapProposalId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteDirectConnectGatewayAssociationProposal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgapProposalId' - The ID of the proposal.
deleteDirectConnectGatewayAssociationProposal ::
  -- | 'ddcgapProposalId'
  Text ->
  DeleteDirectConnectGatewayAssociationProposal
deleteDirectConnectGatewayAssociationProposal
  pProposalId_ =
    DeleteDirectConnectGatewayAssociationProposal'
      { _ddcgapProposalId =
          pProposalId_
      }

-- | The ID of the proposal.
ddcgapProposalId :: Lens' DeleteDirectConnectGatewayAssociationProposal Text
ddcgapProposalId = lens _ddcgapProposalId (\s a -> s {_ddcgapProposalId = a})

instance
  AWSRequest
    DeleteDirectConnectGatewayAssociationProposal
  where
  type
    Rs DeleteDirectConnectGatewayAssociationProposal =
      DeleteDirectConnectGatewayAssociationProposalResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DeleteDirectConnectGatewayAssociationProposalResponse'
            <$> (x .?> "directConnectGatewayAssociationProposal")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DeleteDirectConnectGatewayAssociationProposal

instance
  NFData
    DeleteDirectConnectGatewayAssociationProposal

instance
  ToHeaders
    DeleteDirectConnectGatewayAssociationProposal
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DeleteDirectConnectGatewayAssociationProposal" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DeleteDirectConnectGatewayAssociationProposal
  where
  toJSON
    DeleteDirectConnectGatewayAssociationProposal' {..} =
      object
        ( catMaybes
            [Just ("proposalId" .= _ddcgapProposalId)]
        )

instance
  ToPath
    DeleteDirectConnectGatewayAssociationProposal
  where
  toPath = const "/"

instance
  ToQuery
    DeleteDirectConnectGatewayAssociationProposal
  where
  toQuery = const mempty

-- | /See:/ 'deleteDirectConnectGatewayAssociationProposalResponse' smart constructor.
data DeleteDirectConnectGatewayAssociationProposalResponse = DeleteDirectConnectGatewayAssociationProposalResponse'
  { _ddcgaprrsDirectConnectGatewayAssociationProposal ::
      !( Maybe
           DirectConnectGatewayAssociationProposal
       ),
    _ddcgaprrsResponseStatus ::
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

-- | Creates a value of 'DeleteDirectConnectGatewayAssociationProposalResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgaprrsDirectConnectGatewayAssociationProposal' - The ID of the associated gateway.
--
-- * 'ddcgaprrsResponseStatus' - -- | The response status code.
deleteDirectConnectGatewayAssociationProposalResponse ::
  -- | 'ddcgaprrsResponseStatus'
  Int ->
  DeleteDirectConnectGatewayAssociationProposalResponse
deleteDirectConnectGatewayAssociationProposalResponse
  pResponseStatus_ =
    DeleteDirectConnectGatewayAssociationProposalResponse'
      { _ddcgaprrsDirectConnectGatewayAssociationProposal =
          Nothing,
        _ddcgaprrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the associated gateway.
ddcgaprrsDirectConnectGatewayAssociationProposal :: Lens' DeleteDirectConnectGatewayAssociationProposalResponse (Maybe DirectConnectGatewayAssociationProposal)
ddcgaprrsDirectConnectGatewayAssociationProposal = lens _ddcgaprrsDirectConnectGatewayAssociationProposal (\s a -> s {_ddcgaprrsDirectConnectGatewayAssociationProposal = a})

-- | -- | The response status code.
ddcgaprrsResponseStatus :: Lens' DeleteDirectConnectGatewayAssociationProposalResponse Int
ddcgaprrsResponseStatus = lens _ddcgaprrsResponseStatus (\s a -> s {_ddcgaprrsResponseStatus = a})

instance
  NFData
    DeleteDirectConnectGatewayAssociationProposalResponse
