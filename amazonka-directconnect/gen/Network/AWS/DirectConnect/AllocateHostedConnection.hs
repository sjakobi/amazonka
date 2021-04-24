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
-- Module      : Network.AWS.DirectConnect.AllocateHostedConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects.
--
--
-- Allocates a VLAN number and a specified amount of capacity (bandwidth) for use by a hosted connection on the specified interconnect or LAG of interconnects. AWS polices the hosted connection for the specified capacity and the AWS Direct Connect Partner must also police the hosted connection for the specified capacity.
module Network.AWS.DirectConnect.AllocateHostedConnection
  ( -- * Creating a Request
    allocateHostedConnection,
    AllocateHostedConnection,

    -- * Request Lenses
    allTags,
    allConnectionId,
    allOwnerAccount,
    allBandwidth,
    allConnectionName,
    allVlan,

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

-- | /See:/ 'allocateHostedConnection' smart constructor.
data AllocateHostedConnection = AllocateHostedConnection'
  { _allTags ::
      !(Maybe (List1 Tag)),
    _allConnectionId ::
      !Text,
    _allOwnerAccount ::
      !Text,
    _allBandwidth ::
      !Text,
    _allConnectionName ::
      !Text,
    _allVlan :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AllocateHostedConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allTags' - The tags associated with the connection.
--
-- * 'allConnectionId' - The ID of the interconnect or LAG.
--
-- * 'allOwnerAccount' - The ID of the AWS account ID of the customer for the connection.
--
-- * 'allBandwidth' - The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those AWS Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.
--
-- * 'allConnectionName' - The name of the hosted connection.
--
-- * 'allVlan' - The dedicated VLAN provisioned to the hosted connection.
allocateHostedConnection ::
  -- | 'allConnectionId'
  Text ->
  -- | 'allOwnerAccount'
  Text ->
  -- | 'allBandwidth'
  Text ->
  -- | 'allConnectionName'
  Text ->
  -- | 'allVlan'
  Int ->
  AllocateHostedConnection
allocateHostedConnection
  pConnectionId_
  pOwnerAccount_
  pBandwidth_
  pConnectionName_
  pVlan_ =
    AllocateHostedConnection'
      { _allTags = Nothing,
        _allConnectionId = pConnectionId_,
        _allOwnerAccount = pOwnerAccount_,
        _allBandwidth = pBandwidth_,
        _allConnectionName = pConnectionName_,
        _allVlan = pVlan_
      }

-- | The tags associated with the connection.
allTags :: Lens' AllocateHostedConnection (Maybe (NonEmpty Tag))
allTags = lens _allTags (\s a -> s {_allTags = a}) . mapping _List1

-- | The ID of the interconnect or LAG.
allConnectionId :: Lens' AllocateHostedConnection Text
allConnectionId = lens _allConnectionId (\s a -> s {_allConnectionId = a})

-- | The ID of the AWS account ID of the customer for the connection.
allOwnerAccount :: Lens' AllocateHostedConnection Text
allOwnerAccount = lens _allOwnerAccount (\s a -> s {_allOwnerAccount = a})

-- | The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those AWS Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.
allBandwidth :: Lens' AllocateHostedConnection Text
allBandwidth = lens _allBandwidth (\s a -> s {_allBandwidth = a})

-- | The name of the hosted connection.
allConnectionName :: Lens' AllocateHostedConnection Text
allConnectionName = lens _allConnectionName (\s a -> s {_allConnectionName = a})

-- | The dedicated VLAN provisioned to the hosted connection.
allVlan :: Lens' AllocateHostedConnection Int
allVlan = lens _allVlan (\s a -> s {_allVlan = a})

instance AWSRequest AllocateHostedConnection where
  type Rs AllocateHostedConnection = Connection
  request = postJSON directConnect
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable AllocateHostedConnection

instance NFData AllocateHostedConnection

instance ToHeaders AllocateHostedConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.AllocateHostedConnection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AllocateHostedConnection where
  toJSON AllocateHostedConnection' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _allTags,
            Just ("connectionId" .= _allConnectionId),
            Just ("ownerAccount" .= _allOwnerAccount),
            Just ("bandwidth" .= _allBandwidth),
            Just ("connectionName" .= _allConnectionName),
            Just ("vlan" .= _allVlan)
          ]
      )

instance ToPath AllocateHostedConnection where
  toPath = const "/"

instance ToQuery AllocateHostedConnection where
  toQuery = const mempty
