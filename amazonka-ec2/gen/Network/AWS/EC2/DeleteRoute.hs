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
-- Module      : Network.AWS.EC2.DeleteRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified route from the specified route table.
module Network.AWS.EC2.DeleteRoute
  ( -- * Creating a Request
    deleteRoute,
    DeleteRoute,

    -- * Request Lenses
    drrDryRun,
    drrDestinationPrefixListId,
    drrDestinationIPv6CidrBlock,
    drrDestinationCidrBlock,
    drrRouteTableId,

    -- * Destructuring the Response
    deleteRouteResponse,
    DeleteRouteResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRoute' smart constructor.
data DeleteRoute = DeleteRoute'
  { _drrDryRun ::
      !(Maybe Bool),
    _drrDestinationPrefixListId :: !(Maybe Text),
    _drrDestinationIPv6CidrBlock :: !(Maybe Text),
    _drrDestinationCidrBlock :: !(Maybe Text),
    _drrRouteTableId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteRoute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'drrDestinationPrefixListId' - The ID of the prefix list for the route.
--
-- * 'drrDestinationIPv6CidrBlock' - The IPv6 CIDR range for the route. The value you specify must match the CIDR for the route exactly.
--
-- * 'drrDestinationCidrBlock' - The IPv4 CIDR range for the route. The value you specify must match the CIDR for the route exactly.
--
-- * 'drrRouteTableId' - The ID of the route table.
deleteRoute ::
  -- | 'drrRouteTableId'
  Text ->
  DeleteRoute
deleteRoute pRouteTableId_ =
  DeleteRoute'
    { _drrDryRun = Nothing,
      _drrDestinationPrefixListId = Nothing,
      _drrDestinationIPv6CidrBlock = Nothing,
      _drrDestinationCidrBlock = Nothing,
      _drrRouteTableId = pRouteTableId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
drrDryRun :: Lens' DeleteRoute (Maybe Bool)
drrDryRun = lens _drrDryRun (\s a -> s {_drrDryRun = a})

-- | The ID of the prefix list for the route.
drrDestinationPrefixListId :: Lens' DeleteRoute (Maybe Text)
drrDestinationPrefixListId = lens _drrDestinationPrefixListId (\s a -> s {_drrDestinationPrefixListId = a})

-- | The IPv6 CIDR range for the route. The value you specify must match the CIDR for the route exactly.
drrDestinationIPv6CidrBlock :: Lens' DeleteRoute (Maybe Text)
drrDestinationIPv6CidrBlock = lens _drrDestinationIPv6CidrBlock (\s a -> s {_drrDestinationIPv6CidrBlock = a})

-- | The IPv4 CIDR range for the route. The value you specify must match the CIDR for the route exactly.
drrDestinationCidrBlock :: Lens' DeleteRoute (Maybe Text)
drrDestinationCidrBlock = lens _drrDestinationCidrBlock (\s a -> s {_drrDestinationCidrBlock = a})

-- | The ID of the route table.
drrRouteTableId :: Lens' DeleteRoute Text
drrRouteTableId = lens _drrRouteTableId (\s a -> s {_drrRouteTableId = a})

instance AWSRequest DeleteRoute where
  type Rs DeleteRoute = DeleteRouteResponse
  request = postQuery ec2
  response = receiveNull DeleteRouteResponse'

instance Hashable DeleteRoute

instance NFData DeleteRoute

instance ToHeaders DeleteRoute where
  toHeaders = const mempty

instance ToPath DeleteRoute where
  toPath = const "/"

instance ToQuery DeleteRoute where
  toQuery DeleteRoute' {..} =
    mconcat
      [ "Action" =: ("DeleteRoute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _drrDryRun,
        "DestinationPrefixListId"
          =: _drrDestinationPrefixListId,
        "DestinationIpv6CidrBlock"
          =: _drrDestinationIPv6CidrBlock,
        "DestinationCidrBlock" =: _drrDestinationCidrBlock,
        "RouteTableId" =: _drrRouteTableId
      ]

-- | /See:/ 'deleteRouteResponse' smart constructor.
data DeleteRouteResponse = DeleteRouteResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteRouteResponse' with the minimum fields required to make a request.
deleteRouteResponse ::
  DeleteRouteResponse
deleteRouteResponse = DeleteRouteResponse'

instance NFData DeleteRouteResponse
