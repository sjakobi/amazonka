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
-- Module      : Network.AWS.DirectConnect.AssociateHostedConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a hosted connection and its virtual interfaces with a link aggregation group (LAG) or interconnect. If the target interconnect or LAG has an existing hosted connection with a conflicting VLAN number or IP address, the operation fails. This action temporarily interrupts the hosted connection's connectivity to AWS as it is being migrated.
module Network.AWS.DirectConnect.AssociateHostedConnection
  ( -- * Creating a Request
    associateHostedConnection,
    AssociateHostedConnection,

    -- * Request Lenses
    ahcConnectionId,
    ahcParentConnectionId,

    -- * Destructuring the Response
    connection,
    Connection,

    -- * Response Lenses
    cBandwidth,
    cConnectionState,
    cAwsDeviceV2,
    cConnectionName,
    cProviderName,
    cConnectionId,
    cHasLogicalRedundancy,
    cAwsDevice,
    cJumboFrameCapable,
    cLagId,
    cPartnerName,
    cTags,
    cLoaIssueTime,
    cOwnerAccount,
    cRegion,
    cLocation,
    cVlan,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateHostedConnection' smart constructor.
data AssociateHostedConnection = AssociateHostedConnection'
  { _ahcConnectionId ::
      !Text,
    _ahcParentConnectionId ::
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

-- | Creates a value of 'AssociateHostedConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ahcConnectionId' - The ID of the hosted connection.
--
-- * 'ahcParentConnectionId' - The ID of the interconnect or the LAG.
associateHostedConnection ::
  -- | 'ahcConnectionId'
  Text ->
  -- | 'ahcParentConnectionId'
  Text ->
  AssociateHostedConnection
associateHostedConnection
  pConnectionId_
  pParentConnectionId_ =
    AssociateHostedConnection'
      { _ahcConnectionId =
          pConnectionId_,
        _ahcParentConnectionId = pParentConnectionId_
      }

-- | The ID of the hosted connection.
ahcConnectionId :: Lens' AssociateHostedConnection Text
ahcConnectionId = lens _ahcConnectionId (\s a -> s {_ahcConnectionId = a})

-- | The ID of the interconnect or the LAG.
ahcParentConnectionId :: Lens' AssociateHostedConnection Text
ahcParentConnectionId = lens _ahcParentConnectionId (\s a -> s {_ahcParentConnectionId = a})

instance AWSRequest AssociateHostedConnection where
  type Rs AssociateHostedConnection = Connection
  request = postJSON directConnect
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable AssociateHostedConnection

instance NFData AssociateHostedConnection

instance ToHeaders AssociateHostedConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.AssociateHostedConnection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AssociateHostedConnection where
  toJSON AssociateHostedConnection' {..} =
    object
      ( catMaybes
          [ Just ("connectionId" .= _ahcConnectionId),
            Just
              ("parentConnectionId" .= _ahcParentConnectionId)
          ]
      )

instance ToPath AssociateHostedConnection where
  toPath = const "/"

instance ToQuery AssociateHostedConnection where
  toQuery = const mempty
