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
-- Module      : Network.AWS.EC2.DeleteSubnet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified subnet. You must terminate all running instances in the subnet before you can delete the subnet.
module Network.AWS.EC2.DeleteSubnet
  ( -- * Creating a Request
    deleteSubnet,
    DeleteSubnet,

    -- * Request Lenses
    deletesubneteDryRun,
    deletesubneteSubnetId,

    -- * Destructuring the Response
    deleteSubnetResponse,
    DeleteSubnetResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteSubnet' smart constructor.
data DeleteSubnet = DeleteSubnet'
  { _deletesubneteDryRun ::
      !(Maybe Bool),
    _deletesubneteSubnetId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSubnet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deletesubneteDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'deletesubneteSubnetId' - The ID of the subnet.
deleteSubnet ::
  -- | 'deletesubneteSubnetId'
  Text ->
  DeleteSubnet
deleteSubnet pSubnetId_ =
  DeleteSubnet'
    { _deletesubneteDryRun = Nothing,
      _deletesubneteSubnetId = pSubnetId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
deletesubneteDryRun :: Lens' DeleteSubnet (Maybe Bool)
deletesubneteDryRun = lens _deletesubneteDryRun (\s a -> s {_deletesubneteDryRun = a})

-- | The ID of the subnet.
deletesubneteSubnetId :: Lens' DeleteSubnet Text
deletesubneteSubnetId = lens _deletesubneteSubnetId (\s a -> s {_deletesubneteSubnetId = a})

instance AWSRequest DeleteSubnet where
  type Rs DeleteSubnet = DeleteSubnetResponse
  request = postQuery ec2
  response = receiveNull DeleteSubnetResponse'

instance Hashable DeleteSubnet

instance NFData DeleteSubnet

instance ToHeaders DeleteSubnet where
  toHeaders = const mempty

instance ToPath DeleteSubnet where
  toPath = const "/"

instance ToQuery DeleteSubnet where
  toQuery DeleteSubnet' {..} =
    mconcat
      [ "Action" =: ("DeleteSubnet" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _deletesubneteDryRun,
        "SubnetId" =: _deletesubneteSubnetId
      ]

-- | /See:/ 'deleteSubnetResponse' smart constructor.
data DeleteSubnetResponse = DeleteSubnetResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSubnetResponse' with the minimum fields required to make a request.
deleteSubnetResponse ::
  DeleteSubnetResponse
deleteSubnetResponse = DeleteSubnetResponse'

instance NFData DeleteSubnetResponse
