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
-- Module      : Network.AWS.EC2.CreateNetworkInterfacePermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Grants an AWS-authorized account permission to attach the specified network interface to an instance in their account.
--
--
-- You can grant permission to a single AWS account only, and only one account at a time.
module Network.AWS.EC2.CreateNetworkInterfacePermission
  ( -- * Creating a Request
    createNetworkInterfacePermission,
    CreateNetworkInterfacePermission,

    -- * Request Lenses
    cnipAWSAccountId,
    cnipDryRun,
    cnipAWSService,
    cnipNetworkInterfaceId,
    cnipPermission,

    -- * Destructuring the Response
    createNetworkInterfacePermissionResponse,
    CreateNetworkInterfacePermissionResponse,

    -- * Response Lenses
    cniprrsInterfacePermission,
    cniprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for CreateNetworkInterfacePermission.
--
--
--
-- /See:/ 'createNetworkInterfacePermission' smart constructor.
data CreateNetworkInterfacePermission = CreateNetworkInterfacePermission'
  { _cnipAWSAccountId ::
      !( Maybe
           Text
       ),
    _cnipDryRun ::
      !( Maybe
           Bool
       ),
    _cnipAWSService ::
      !( Maybe
           Text
       ),
    _cnipNetworkInterfaceId ::
      !Text,
    _cnipPermission ::
      !InterfacePermissionType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateNetworkInterfacePermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnipAWSAccountId' - The AWS account ID.
--
-- * 'cnipDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cnipAWSService' - The AWS service. Currently not supported.
--
-- * 'cnipNetworkInterfaceId' - The ID of the network interface.
--
-- * 'cnipPermission' - The type of permission to grant.
createNetworkInterfacePermission ::
  -- | 'cnipNetworkInterfaceId'
  Text ->
  -- | 'cnipPermission'
  InterfacePermissionType ->
  CreateNetworkInterfacePermission
createNetworkInterfacePermission
  pNetworkInterfaceId_
  pPermission_ =
    CreateNetworkInterfacePermission'
      { _cnipAWSAccountId =
          Nothing,
        _cnipDryRun = Nothing,
        _cnipAWSService = Nothing,
        _cnipNetworkInterfaceId =
          pNetworkInterfaceId_,
        _cnipPermission = pPermission_
      }

-- | The AWS account ID.
cnipAWSAccountId :: Lens' CreateNetworkInterfacePermission (Maybe Text)
cnipAWSAccountId = lens _cnipAWSAccountId (\s a -> s {_cnipAWSAccountId = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cnipDryRun :: Lens' CreateNetworkInterfacePermission (Maybe Bool)
cnipDryRun = lens _cnipDryRun (\s a -> s {_cnipDryRun = a})

-- | The AWS service. Currently not supported.
cnipAWSService :: Lens' CreateNetworkInterfacePermission (Maybe Text)
cnipAWSService = lens _cnipAWSService (\s a -> s {_cnipAWSService = a})

-- | The ID of the network interface.
cnipNetworkInterfaceId :: Lens' CreateNetworkInterfacePermission Text
cnipNetworkInterfaceId = lens _cnipNetworkInterfaceId (\s a -> s {_cnipNetworkInterfaceId = a})

-- | The type of permission to grant.
cnipPermission :: Lens' CreateNetworkInterfacePermission InterfacePermissionType
cnipPermission = lens _cnipPermission (\s a -> s {_cnipPermission = a})

instance AWSRequest CreateNetworkInterfacePermission where
  type
    Rs CreateNetworkInterfacePermission =
      CreateNetworkInterfacePermissionResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateNetworkInterfacePermissionResponse'
            <$> (x .@? "interfacePermission")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateNetworkInterfacePermission

instance NFData CreateNetworkInterfacePermission

instance ToHeaders CreateNetworkInterfacePermission where
  toHeaders = const mempty

instance ToPath CreateNetworkInterfacePermission where
  toPath = const "/"

instance ToQuery CreateNetworkInterfacePermission where
  toQuery CreateNetworkInterfacePermission' {..} =
    mconcat
      [ "Action"
          =: ("CreateNetworkInterfacePermission" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "AwsAccountId" =: _cnipAWSAccountId,
        "DryRun" =: _cnipDryRun,
        "AwsService" =: _cnipAWSService,
        "NetworkInterfaceId" =: _cnipNetworkInterfaceId,
        "Permission" =: _cnipPermission
      ]

-- | Contains the output of CreateNetworkInterfacePermission.
--
--
--
-- /See:/ 'createNetworkInterfacePermissionResponse' smart constructor.
data CreateNetworkInterfacePermissionResponse = CreateNetworkInterfacePermissionResponse'
  { _cniprrsInterfacePermission ::
      !( Maybe
           NetworkInterfacePermission
       ),
    _cniprrsResponseStatus ::
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

-- | Creates a value of 'CreateNetworkInterfacePermissionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cniprrsInterfacePermission' - Information about the permission for the network interface.
--
-- * 'cniprrsResponseStatus' - -- | The response status code.
createNetworkInterfacePermissionResponse ::
  -- | 'cniprrsResponseStatus'
  Int ->
  CreateNetworkInterfacePermissionResponse
createNetworkInterfacePermissionResponse
  pResponseStatus_ =
    CreateNetworkInterfacePermissionResponse'
      { _cniprrsInterfacePermission =
          Nothing,
        _cniprrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the permission for the network interface.
cniprrsInterfacePermission :: Lens' CreateNetworkInterfacePermissionResponse (Maybe NetworkInterfacePermission)
cniprrsInterfacePermission = lens _cniprrsInterfacePermission (\s a -> s {_cniprrsInterfacePermission = a})

-- | -- | The response status code.
cniprrsResponseStatus :: Lens' CreateNetworkInterfacePermissionResponse Int
cniprrsResponseStatus = lens _cniprrsResponseStatus (\s a -> s {_cniprrsResponseStatus = a})

instance
  NFData
    CreateNetworkInterfacePermissionResponse
