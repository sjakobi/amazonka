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
-- Module      : Network.AWS.GameLift.DescribeVPCPeeringConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information on VPC peering connections. Use this operation to get peering information for all fleets or for one specific fleet ID.
--
--
-- To retrieve connection information, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Specify a fleet ID or leave the parameter empty to retrieve all connection records. If successful, the retrieved information includes both active and pending connections. Active connections identify the IpV4 CIDR block that the VPC uses to connect.
--
--     * 'CreateVpcPeeringAuthorization'
--
--     * 'DescribeVpcPeeringAuthorizations'
--
--     * 'DeleteVpcPeeringAuthorization'
--
--     * 'CreateVpcPeeringConnection'
--
--     * 'DescribeVpcPeeringConnections'
--
--     * 'DeleteVpcPeeringConnection'
module Network.AWS.GameLift.DescribeVPCPeeringConnections
  ( -- * Creating a Request
    describeVPCPeeringConnections,
    DescribeVPCPeeringConnections,

    -- * Request Lenses
    dvpcFleetId,

    -- * Destructuring the Response
    describeVPCPeeringConnectionsResponse,
    DescribeVPCPeeringConnectionsResponse,

    -- * Response Lenses
    dvpcrrsVPCPeeringConnections,
    dvpcrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'describeVPCPeeringConnections' smart constructor.
newtype DescribeVPCPeeringConnections = DescribeVPCPeeringConnections'
  { _dvpcFleetId ::
      Maybe
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

-- | Creates a value of 'DescribeVPCPeeringConnections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpcFleetId' - A unique identifier for a fleet. You can use either the fleet ID or ARN value.
describeVPCPeeringConnections ::
  DescribeVPCPeeringConnections
describeVPCPeeringConnections =
  DescribeVPCPeeringConnections'
    { _dvpcFleetId =
        Nothing
    }

-- | A unique identifier for a fleet. You can use either the fleet ID or ARN value.
dvpcFleetId :: Lens' DescribeVPCPeeringConnections (Maybe Text)
dvpcFleetId = lens _dvpcFleetId (\s a -> s {_dvpcFleetId = a})

instance AWSRequest DescribeVPCPeeringConnections where
  type
    Rs DescribeVPCPeeringConnections =
      DescribeVPCPeeringConnectionsResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeVPCPeeringConnectionsResponse'
            <$> (x .?> "VpcPeeringConnections" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVPCPeeringConnections

instance NFData DescribeVPCPeeringConnections

instance ToHeaders DescribeVPCPeeringConnections where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "GameLift.DescribeVpcPeeringConnections" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeVPCPeeringConnections where
  toJSON DescribeVPCPeeringConnections' {..} =
    object
      (catMaybes [("FleetId" .=) <$> _dvpcFleetId])

instance ToPath DescribeVPCPeeringConnections where
  toPath = const "/"

instance ToQuery DescribeVPCPeeringConnections where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeVPCPeeringConnectionsResponse' smart constructor.
data DescribeVPCPeeringConnectionsResponse = DescribeVPCPeeringConnectionsResponse'
  { _dvpcrrsVPCPeeringConnections ::
      !( Maybe
           [VPCPeeringConnection]
       ),
    _dvpcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVPCPeeringConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpcrrsVPCPeeringConnections' - A collection of VPC peering connection records that match the request.
--
-- * 'dvpcrrsResponseStatus' - -- | The response status code.
describeVPCPeeringConnectionsResponse ::
  -- | 'dvpcrrsResponseStatus'
  Int ->
  DescribeVPCPeeringConnectionsResponse
describeVPCPeeringConnectionsResponse
  pResponseStatus_ =
    DescribeVPCPeeringConnectionsResponse'
      { _dvpcrrsVPCPeeringConnections =
          Nothing,
        _dvpcrrsResponseStatus =
          pResponseStatus_
      }

-- | A collection of VPC peering connection records that match the request.
dvpcrrsVPCPeeringConnections :: Lens' DescribeVPCPeeringConnectionsResponse [VPCPeeringConnection]
dvpcrrsVPCPeeringConnections = lens _dvpcrrsVPCPeeringConnections (\s a -> s {_dvpcrrsVPCPeeringConnections = a}) . _Default . _Coerce

-- | -- | The response status code.
dvpcrrsResponseStatus :: Lens' DescribeVPCPeeringConnectionsResponse Int
dvpcrrsResponseStatus = lens _dvpcrrsResponseStatus (\s a -> s {_dvpcrrsResponseStatus = a})

instance NFData DescribeVPCPeeringConnectionsResponse
