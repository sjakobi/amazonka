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
-- Module      : Network.AWS.EC2.DisassociateRouteTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a subnet or gateway from a route table.
--
--
-- After you perform this action, the subnet no longer uses the routes in the route table. Instead, it uses the routes in the VPC's main route table. For more information about route tables, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html Route Tables> in the /Amazon Virtual Private Cloud User Guide/ .
module Network.AWS.EC2.DisassociateRouteTable
  ( -- * Creating a Request
    disassociateRouteTable,
    DisassociateRouteTable,

    -- * Request Lenses
    ddDryRun,
    ddAssociationId,

    -- * Destructuring the Response
    disassociateRouteTableResponse,
    DisassociateRouteTableResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateRouteTable' smart constructor.
data DisassociateRouteTable = DisassociateRouteTable'
  { _ddDryRun ::
      !(Maybe Bool),
    _ddAssociationId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateRouteTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ddAssociationId' - The association ID representing the current association between the route table and subnet or gateway.
disassociateRouteTable ::
  -- | 'ddAssociationId'
  Text ->
  DisassociateRouteTable
disassociateRouteTable pAssociationId_ =
  DisassociateRouteTable'
    { _ddDryRun = Nothing,
      _ddAssociationId = pAssociationId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ddDryRun :: Lens' DisassociateRouteTable (Maybe Bool)
ddDryRun = lens _ddDryRun (\s a -> s {_ddDryRun = a})

-- | The association ID representing the current association between the route table and subnet or gateway.
ddAssociationId :: Lens' DisassociateRouteTable Text
ddAssociationId = lens _ddAssociationId (\s a -> s {_ddAssociationId = a})

instance AWSRequest DisassociateRouteTable where
  type
    Rs DisassociateRouteTable =
      DisassociateRouteTableResponse
  request = postQuery ec2
  response =
    receiveNull DisassociateRouteTableResponse'

instance Hashable DisassociateRouteTable

instance NFData DisassociateRouteTable

instance ToHeaders DisassociateRouteTable where
  toHeaders = const mempty

instance ToPath DisassociateRouteTable where
  toPath = const "/"

instance ToQuery DisassociateRouteTable where
  toQuery DisassociateRouteTable' {..} =
    mconcat
      [ "Action"
          =: ("DisassociateRouteTable" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _ddDryRun,
        "AssociationId" =: _ddAssociationId
      ]

-- | /See:/ 'disassociateRouteTableResponse' smart constructor.
data DisassociateRouteTableResponse = DisassociateRouteTableResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateRouteTableResponse' with the minimum fields required to make a request.
disassociateRouteTableResponse ::
  DisassociateRouteTableResponse
disassociateRouteTableResponse =
  DisassociateRouteTableResponse'

instance NFData DisassociateRouteTableResponse
