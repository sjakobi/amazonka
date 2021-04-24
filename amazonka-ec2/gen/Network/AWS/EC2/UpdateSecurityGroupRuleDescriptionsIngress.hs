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
-- Module      : Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsIngress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the description of an ingress (inbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.
--
--
-- You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.
module Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsIngress
  ( -- * Creating a Request
    updateSecurityGroupRuleDescriptionsIngress,
    UpdateSecurityGroupRuleDescriptionsIngress,

    -- * Request Lenses
    usgrdiDryRun,
    usgrdiGroupName,
    usgrdiGroupId,
    usgrdiIPPermissions,

    -- * Destructuring the Response
    updateSecurityGroupRuleDescriptionsIngressResponse,
    UpdateSecurityGroupRuleDescriptionsIngressResponse,

    -- * Response Lenses
    usgrdirrsReturn,
    usgrdirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateSecurityGroupRuleDescriptionsIngress' smart constructor.
data UpdateSecurityGroupRuleDescriptionsIngress = UpdateSecurityGroupRuleDescriptionsIngress'
  { _usgrdiDryRun ::
      !( Maybe
           Bool
       ),
    _usgrdiGroupName ::
      !( Maybe
           Text
       ),
    _usgrdiGroupId ::
      !( Maybe
           Text
       ),
    _usgrdiIPPermissions ::
      ![IPPermission]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateSecurityGroupRuleDescriptionsIngress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgrdiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'usgrdiGroupName' - [EC2-Classic, default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.
--
-- * 'usgrdiGroupId' - The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
--
-- * 'usgrdiIPPermissions' - The IP permissions for the security group rule.
updateSecurityGroupRuleDescriptionsIngress ::
  UpdateSecurityGroupRuleDescriptionsIngress
updateSecurityGroupRuleDescriptionsIngress =
  UpdateSecurityGroupRuleDescriptionsIngress'
    { _usgrdiDryRun =
        Nothing,
      _usgrdiGroupName = Nothing,
      _usgrdiGroupId = Nothing,
      _usgrdiIPPermissions = mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
usgrdiDryRun :: Lens' UpdateSecurityGroupRuleDescriptionsIngress (Maybe Bool)
usgrdiDryRun = lens _usgrdiDryRun (\s a -> s {_usgrdiDryRun = a})

-- | [EC2-Classic, default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.
usgrdiGroupName :: Lens' UpdateSecurityGroupRuleDescriptionsIngress (Maybe Text)
usgrdiGroupName = lens _usgrdiGroupName (\s a -> s {_usgrdiGroupName = a})

-- | The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
usgrdiGroupId :: Lens' UpdateSecurityGroupRuleDescriptionsIngress (Maybe Text)
usgrdiGroupId = lens _usgrdiGroupId (\s a -> s {_usgrdiGroupId = a})

-- | The IP permissions for the security group rule.
usgrdiIPPermissions :: Lens' UpdateSecurityGroupRuleDescriptionsIngress [IPPermission]
usgrdiIPPermissions = lens _usgrdiIPPermissions (\s a -> s {_usgrdiIPPermissions = a}) . _Coerce

instance
  AWSRequest
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  type
    Rs UpdateSecurityGroupRuleDescriptionsIngress =
      UpdateSecurityGroupRuleDescriptionsIngressResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          UpdateSecurityGroupRuleDescriptionsIngressResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance
  Hashable
    UpdateSecurityGroupRuleDescriptionsIngress

instance
  NFData
    UpdateSecurityGroupRuleDescriptionsIngress

instance
  ToHeaders
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  toHeaders = const mempty

instance
  ToPath
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  toPath = const "/"

instance
  ToQuery
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  toQuery
    UpdateSecurityGroupRuleDescriptionsIngress' {..} =
      mconcat
        [ "Action"
            =: ( "UpdateSecurityGroupRuleDescriptionsIngress" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _usgrdiDryRun,
          "GroupName" =: _usgrdiGroupName,
          "GroupId" =: _usgrdiGroupId,
          toQueryList "IpPermissions" _usgrdiIPPermissions
        ]

-- | /See:/ 'updateSecurityGroupRuleDescriptionsIngressResponse' smart constructor.
data UpdateSecurityGroupRuleDescriptionsIngressResponse = UpdateSecurityGroupRuleDescriptionsIngressResponse'
  { _usgrdirrsReturn ::
      !( Maybe
           Bool
       ),
    _usgrdirrsResponseStatus ::
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

-- | Creates a value of 'UpdateSecurityGroupRuleDescriptionsIngressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgrdirrsReturn' - Returns @true@ if the request succeeds; otherwise, returns an error.
--
-- * 'usgrdirrsResponseStatus' - -- | The response status code.
updateSecurityGroupRuleDescriptionsIngressResponse ::
  -- | 'usgrdirrsResponseStatus'
  Int ->
  UpdateSecurityGroupRuleDescriptionsIngressResponse
updateSecurityGroupRuleDescriptionsIngressResponse
  pResponseStatus_ =
    UpdateSecurityGroupRuleDescriptionsIngressResponse'
      { _usgrdirrsReturn =
          Nothing,
        _usgrdirrsResponseStatus =
          pResponseStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, returns an error.
usgrdirrsReturn :: Lens' UpdateSecurityGroupRuleDescriptionsIngressResponse (Maybe Bool)
usgrdirrsReturn = lens _usgrdirrsReturn (\s a -> s {_usgrdirrsReturn = a})

-- | -- | The response status code.
usgrdirrsResponseStatus :: Lens' UpdateSecurityGroupRuleDescriptionsIngressResponse Int
usgrdirrsResponseStatus = lens _usgrdirrsResponseStatus (\s a -> s {_usgrdirrsResponseStatus = a})

instance
  NFData
    UpdateSecurityGroupRuleDescriptionsIngressResponse
