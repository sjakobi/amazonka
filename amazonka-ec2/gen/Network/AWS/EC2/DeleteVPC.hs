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
-- Module      : Network.AWS.EC2.DeleteVPC
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified VPC. You must detach or delete all gateways and resources that are associated with the VPC before you can delete it. For example, you must terminate all instances running in the VPC, delete all security groups associated with the VPC (except the default one), delete all route tables associated with the VPC (except the default one), and so on.
module Network.AWS.EC2.DeleteVPC
  ( -- * Creating a Request
    deleteVPC,
    DeleteVPC,

    -- * Request Lenses
    dDryRun,
    dVPCId,

    -- * Destructuring the Response
    deleteVPCResponse,
    DeleteVPCResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteVPC' smart constructor.
data DeleteVPC = DeleteVPC'
  { _dDryRun ::
      !(Maybe Bool),
    _dVPCId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteVPC' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dVPCId' - The ID of the VPC.
deleteVPC ::
  -- | 'dVPCId'
  Text ->
  DeleteVPC
deleteVPC pVPCId_ =
  DeleteVPC' {_dDryRun = Nothing, _dVPCId = pVPCId_}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dDryRun :: Lens' DeleteVPC (Maybe Bool)
dDryRun = lens _dDryRun (\s a -> s {_dDryRun = a})

-- | The ID of the VPC.
dVPCId :: Lens' DeleteVPC Text
dVPCId = lens _dVPCId (\s a -> s {_dVPCId = a})

instance AWSRequest DeleteVPC where
  type Rs DeleteVPC = DeleteVPCResponse
  request = postQuery ec2
  response = receiveNull DeleteVPCResponse'

instance Hashable DeleteVPC

instance NFData DeleteVPC

instance ToHeaders DeleteVPC where
  toHeaders = const mempty

instance ToPath DeleteVPC where
  toPath = const "/"

instance ToQuery DeleteVPC where
  toQuery DeleteVPC' {..} =
    mconcat
      [ "Action" =: ("DeleteVpc" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dDryRun,
        "VpcId" =: _dVPCId
      ]

-- | /See:/ 'deleteVPCResponse' smart constructor.
data DeleteVPCResponse = DeleteVPCResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteVPCResponse' with the minimum fields required to make a request.
deleteVPCResponse ::
  DeleteVPCResponse
deleteVPCResponse = DeleteVPCResponse'

instance NFData DeleteVPCResponse
