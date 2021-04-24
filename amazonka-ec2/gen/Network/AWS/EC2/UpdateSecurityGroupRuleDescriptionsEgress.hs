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
-- Module      : Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsEgress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- [VPC only] Updates the description of an egress (outbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.
--
--
-- You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.
module Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsEgress
  ( -- * Creating a Request
    updateSecurityGroupRuleDescriptionsEgress,
    UpdateSecurityGroupRuleDescriptionsEgress,

    -- * Request Lenses
    usgrdeDryRun,
    usgrdeGroupName,
    usgrdeGroupId,
    usgrdeIPPermissions,

    -- * Destructuring the Response
    updateSecurityGroupRuleDescriptionsEgressResponse,
    UpdateSecurityGroupRuleDescriptionsEgressResponse,

    -- * Response Lenses
    usgrderrsReturn,
    usgrderrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateSecurityGroupRuleDescriptionsEgress' smart constructor.
data UpdateSecurityGroupRuleDescriptionsEgress = UpdateSecurityGroupRuleDescriptionsEgress'
  { _usgrdeDryRun ::
      !( Maybe
           Bool
       ),
    _usgrdeGroupName ::
      !( Maybe
           Text
       ),
    _usgrdeGroupId ::
      !( Maybe
           Text
       ),
    _usgrdeIPPermissions ::
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

-- | Creates a value of 'UpdateSecurityGroupRuleDescriptionsEgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgrdeDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'usgrdeGroupName' - [Default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.
--
-- * 'usgrdeGroupId' - The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
--
-- * 'usgrdeIPPermissions' - The IP permissions for the security group rule.
updateSecurityGroupRuleDescriptionsEgress ::
  UpdateSecurityGroupRuleDescriptionsEgress
updateSecurityGroupRuleDescriptionsEgress =
  UpdateSecurityGroupRuleDescriptionsEgress'
    { _usgrdeDryRun =
        Nothing,
      _usgrdeGroupName = Nothing,
      _usgrdeGroupId = Nothing,
      _usgrdeIPPermissions = mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
usgrdeDryRun :: Lens' UpdateSecurityGroupRuleDescriptionsEgress (Maybe Bool)
usgrdeDryRun = lens _usgrdeDryRun (\s a -> s {_usgrdeDryRun = a})

-- | [Default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.
usgrdeGroupName :: Lens' UpdateSecurityGroupRuleDescriptionsEgress (Maybe Text)
usgrdeGroupName = lens _usgrdeGroupName (\s a -> s {_usgrdeGroupName = a})

-- | The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
usgrdeGroupId :: Lens' UpdateSecurityGroupRuleDescriptionsEgress (Maybe Text)
usgrdeGroupId = lens _usgrdeGroupId (\s a -> s {_usgrdeGroupId = a})

-- | The IP permissions for the security group rule.
usgrdeIPPermissions :: Lens' UpdateSecurityGroupRuleDescriptionsEgress [IPPermission]
usgrdeIPPermissions = lens _usgrdeIPPermissions (\s a -> s {_usgrdeIPPermissions = a}) . _Coerce

instance
  AWSRequest
    UpdateSecurityGroupRuleDescriptionsEgress
  where
  type
    Rs UpdateSecurityGroupRuleDescriptionsEgress =
      UpdateSecurityGroupRuleDescriptionsEgressResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          UpdateSecurityGroupRuleDescriptionsEgressResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance
  Hashable
    UpdateSecurityGroupRuleDescriptionsEgress

instance
  NFData
    UpdateSecurityGroupRuleDescriptionsEgress

instance
  ToHeaders
    UpdateSecurityGroupRuleDescriptionsEgress
  where
  toHeaders = const mempty

instance
  ToPath
    UpdateSecurityGroupRuleDescriptionsEgress
  where
  toPath = const "/"

instance
  ToQuery
    UpdateSecurityGroupRuleDescriptionsEgress
  where
  toQuery
    UpdateSecurityGroupRuleDescriptionsEgress' {..} =
      mconcat
        [ "Action"
            =: ( "UpdateSecurityGroupRuleDescriptionsEgress" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _usgrdeDryRun,
          "GroupName" =: _usgrdeGroupName,
          "GroupId" =: _usgrdeGroupId,
          toQueryList "IpPermissions" _usgrdeIPPermissions
        ]

-- | /See:/ 'updateSecurityGroupRuleDescriptionsEgressResponse' smart constructor.
data UpdateSecurityGroupRuleDescriptionsEgressResponse = UpdateSecurityGroupRuleDescriptionsEgressResponse'
  { _usgrderrsReturn ::
      !( Maybe
           Bool
       ),
    _usgrderrsResponseStatus ::
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

-- | Creates a value of 'UpdateSecurityGroupRuleDescriptionsEgressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgrderrsReturn' - Returns @true@ if the request succeeds; otherwise, returns an error.
--
-- * 'usgrderrsResponseStatus' - -- | The response status code.
updateSecurityGroupRuleDescriptionsEgressResponse ::
  -- | 'usgrderrsResponseStatus'
  Int ->
  UpdateSecurityGroupRuleDescriptionsEgressResponse
updateSecurityGroupRuleDescriptionsEgressResponse
  pResponseStatus_ =
    UpdateSecurityGroupRuleDescriptionsEgressResponse'
      { _usgrderrsReturn =
          Nothing,
        _usgrderrsResponseStatus =
          pResponseStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, returns an error.
usgrderrsReturn :: Lens' UpdateSecurityGroupRuleDescriptionsEgressResponse (Maybe Bool)
usgrderrsReturn = lens _usgrderrsReturn (\s a -> s {_usgrderrsReturn = a})

-- | -- | The response status code.
usgrderrsResponseStatus :: Lens' UpdateSecurityGroupRuleDescriptionsEgressResponse Int
usgrderrsResponseStatus = lens _usgrderrsResponseStatus (\s a -> s {_usgrderrsResponseStatus = a})

instance
  NFData
    UpdateSecurityGroupRuleDescriptionsEgressResponse
