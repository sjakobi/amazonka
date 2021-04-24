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
-- Module      : Network.AWS.EC2.ModifyVPCEndpointServicePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the permissions for your <https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html VPC endpoint service> . You can add or remove permissions for service consumers (IAM users, IAM roles, and AWS accounts) to connect to your endpoint service.
--
--
-- If you grant permissions to all principals, the service is public. Any users who know the name of a public service can send a request to attach an endpoint. If the service does not require manual approval, attachments are automatically approved.
module Network.AWS.EC2.ModifyVPCEndpointServicePermissions
  ( -- * Creating a Request
    modifyVPCEndpointServicePermissions,
    ModifyVPCEndpointServicePermissions,

    -- * Request Lenses
    mvespDryRun,
    mvespAddAllowedPrincipals,
    mvespRemoveAllowedPrincipals,
    mvespServiceId,

    -- * Destructuring the Response
    modifyVPCEndpointServicePermissionsResponse,
    ModifyVPCEndpointServicePermissionsResponse,

    -- * Response Lenses
    mvesprrsReturnValue,
    mvesprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyVPCEndpointServicePermissions' smart constructor.
data ModifyVPCEndpointServicePermissions = ModifyVPCEndpointServicePermissions'
  { _mvespDryRun ::
      !( Maybe
           Bool
       ),
    _mvespAddAllowedPrincipals ::
      !( Maybe
           [Text]
       ),
    _mvespRemoveAllowedPrincipals ::
      !( Maybe
           [Text]
       ),
    _mvespServiceId ::
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

-- | Creates a value of 'ModifyVPCEndpointServicePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvespDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mvespAddAllowedPrincipals' - The Amazon Resource Names (ARN) of one or more principals. Permissions are granted to the principals in this list. To grant permissions to all principals, specify an asterisk (*).
--
-- * 'mvespRemoveAllowedPrincipals' - The Amazon Resource Names (ARN) of one or more principals. Permissions are revoked for principals in this list.
--
-- * 'mvespServiceId' - The ID of the service.
modifyVPCEndpointServicePermissions ::
  -- | 'mvespServiceId'
  Text ->
  ModifyVPCEndpointServicePermissions
modifyVPCEndpointServicePermissions pServiceId_ =
  ModifyVPCEndpointServicePermissions'
    { _mvespDryRun =
        Nothing,
      _mvespAddAllowedPrincipals = Nothing,
      _mvespRemoveAllowedPrincipals =
        Nothing,
      _mvespServiceId = pServiceId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mvespDryRun :: Lens' ModifyVPCEndpointServicePermissions (Maybe Bool)
mvespDryRun = lens _mvespDryRun (\s a -> s {_mvespDryRun = a})

-- | The Amazon Resource Names (ARN) of one or more principals. Permissions are granted to the principals in this list. To grant permissions to all principals, specify an asterisk (*).
mvespAddAllowedPrincipals :: Lens' ModifyVPCEndpointServicePermissions [Text]
mvespAddAllowedPrincipals = lens _mvespAddAllowedPrincipals (\s a -> s {_mvespAddAllowedPrincipals = a}) . _Default . _Coerce

-- | The Amazon Resource Names (ARN) of one or more principals. Permissions are revoked for principals in this list.
mvespRemoveAllowedPrincipals :: Lens' ModifyVPCEndpointServicePermissions [Text]
mvespRemoveAllowedPrincipals = lens _mvespRemoveAllowedPrincipals (\s a -> s {_mvespRemoveAllowedPrincipals = a}) . _Default . _Coerce

-- | The ID of the service.
mvespServiceId :: Lens' ModifyVPCEndpointServicePermissions Text
mvespServiceId = lens _mvespServiceId (\s a -> s {_mvespServiceId = a})

instance
  AWSRequest
    ModifyVPCEndpointServicePermissions
  where
  type
    Rs ModifyVPCEndpointServicePermissions =
      ModifyVPCEndpointServicePermissionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyVPCEndpointServicePermissionsResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable ModifyVPCEndpointServicePermissions

instance NFData ModifyVPCEndpointServicePermissions

instance
  ToHeaders
    ModifyVPCEndpointServicePermissions
  where
  toHeaders = const mempty

instance ToPath ModifyVPCEndpointServicePermissions where
  toPath = const "/"

instance ToQuery ModifyVPCEndpointServicePermissions where
  toQuery ModifyVPCEndpointServicePermissions' {..} =
    mconcat
      [ "Action"
          =: ( "ModifyVpcEndpointServicePermissions" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _mvespDryRun,
        toQuery
          ( toQueryList "AddAllowedPrincipals"
              <$> _mvespAddAllowedPrincipals
          ),
        toQuery
          ( toQueryList "RemoveAllowedPrincipals"
              <$> _mvespRemoveAllowedPrincipals
          ),
        "ServiceId" =: _mvespServiceId
      ]

-- | /See:/ 'modifyVPCEndpointServicePermissionsResponse' smart constructor.
data ModifyVPCEndpointServicePermissionsResponse = ModifyVPCEndpointServicePermissionsResponse'
  { _mvesprrsReturnValue ::
      !( Maybe
           Bool
       ),
    _mvesprrsResponseStatus ::
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

-- | Creates a value of 'ModifyVPCEndpointServicePermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvesprrsReturnValue' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'mvesprrsResponseStatus' - -- | The response status code.
modifyVPCEndpointServicePermissionsResponse ::
  -- | 'mvesprrsResponseStatus'
  Int ->
  ModifyVPCEndpointServicePermissionsResponse
modifyVPCEndpointServicePermissionsResponse
  pResponseStatus_ =
    ModifyVPCEndpointServicePermissionsResponse'
      { _mvesprrsReturnValue =
          Nothing,
        _mvesprrsResponseStatus =
          pResponseStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
mvesprrsReturnValue :: Lens' ModifyVPCEndpointServicePermissionsResponse (Maybe Bool)
mvesprrsReturnValue = lens _mvesprrsReturnValue (\s a -> s {_mvesprrsReturnValue = a})

-- | -- | The response status code.
mvesprrsResponseStatus :: Lens' ModifyVPCEndpointServicePermissionsResponse Int
mvesprrsResponseStatus = lens _mvesprrsResponseStatus (\s a -> s {_mvesprrsResponseStatus = a})

instance
  NFData
    ModifyVPCEndpointServicePermissionsResponse
