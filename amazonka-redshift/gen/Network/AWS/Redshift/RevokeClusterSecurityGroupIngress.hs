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
-- Module      : Network.AWS.Redshift.RevokeClusterSecurityGroupIngress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes an ingress rule in an Amazon Redshift security group for a previously authorized IP range or Amazon EC2 security group. To add an ingress rule, see 'AuthorizeClusterSecurityGroupIngress' . For information about managing security groups, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html Amazon Redshift Cluster Security Groups> in the /Amazon Redshift Cluster Management Guide/ .
module Network.AWS.Redshift.RevokeClusterSecurityGroupIngress
  ( -- * Creating a Request
    revokeClusterSecurityGroupIngress,
    RevokeClusterSecurityGroupIngress,

    -- * Request Lenses
    rcsgiCIdRIP,
    rcsgiEC2SecurityGroupOwnerId,
    rcsgiEC2SecurityGroupName,
    rcsgiClusterSecurityGroupName,

    -- * Destructuring the Response
    revokeClusterSecurityGroupIngressResponse,
    RevokeClusterSecurityGroupIngressResponse,

    -- * Response Lenses
    rcsgirrsClusterSecurityGroup,
    rcsgirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'revokeClusterSecurityGroupIngress' smart constructor.
data RevokeClusterSecurityGroupIngress = RevokeClusterSecurityGroupIngress'
  { _rcsgiCIdRIP ::
      !( Maybe
           Text
       ),
    _rcsgiEC2SecurityGroupOwnerId ::
      !( Maybe
           Text
       ),
    _rcsgiEC2SecurityGroupName ::
      !( Maybe
           Text
       ),
    _rcsgiClusterSecurityGroupName ::
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

-- | Creates a value of 'RevokeClusterSecurityGroupIngress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcsgiCIdRIP' - The IP range for which to revoke access. This range must be a valid Classless Inter-Domain Routing (CIDR) block of IP addresses. If @CIDRIP@ is specified, @EC2SecurityGroupName@ and @EC2SecurityGroupOwnerId@ cannot be provided.
--
-- * 'rcsgiEC2SecurityGroupOwnerId' - The AWS account number of the owner of the security group specified in the @EC2SecurityGroupName@ parameter. The AWS access key ID is not an acceptable value. If @EC2SecurityGroupOwnerId@ is specified, @EC2SecurityGroupName@ must also be provided. and @CIDRIP@ cannot be provided.  Example: @111122223333@
--
-- * 'rcsgiEC2SecurityGroupName' - The name of the EC2 Security Group whose access is to be revoked. If @EC2SecurityGroupName@ is specified, @EC2SecurityGroupOwnerId@ must also be provided and @CIDRIP@ cannot be provided.
--
-- * 'rcsgiClusterSecurityGroupName' - The name of the security Group from which to revoke the ingress rule.
revokeClusterSecurityGroupIngress ::
  -- | 'rcsgiClusterSecurityGroupName'
  Text ->
  RevokeClusterSecurityGroupIngress
revokeClusterSecurityGroupIngress
  pClusterSecurityGroupName_ =
    RevokeClusterSecurityGroupIngress'
      { _rcsgiCIdRIP =
          Nothing,
        _rcsgiEC2SecurityGroupOwnerId = Nothing,
        _rcsgiEC2SecurityGroupName = Nothing,
        _rcsgiClusterSecurityGroupName =
          pClusterSecurityGroupName_
      }

-- | The IP range for which to revoke access. This range must be a valid Classless Inter-Domain Routing (CIDR) block of IP addresses. If @CIDRIP@ is specified, @EC2SecurityGroupName@ and @EC2SecurityGroupOwnerId@ cannot be provided.
rcsgiCIdRIP :: Lens' RevokeClusterSecurityGroupIngress (Maybe Text)
rcsgiCIdRIP = lens _rcsgiCIdRIP (\s a -> s {_rcsgiCIdRIP = a})

-- | The AWS account number of the owner of the security group specified in the @EC2SecurityGroupName@ parameter. The AWS access key ID is not an acceptable value. If @EC2SecurityGroupOwnerId@ is specified, @EC2SecurityGroupName@ must also be provided. and @CIDRIP@ cannot be provided.  Example: @111122223333@
rcsgiEC2SecurityGroupOwnerId :: Lens' RevokeClusterSecurityGroupIngress (Maybe Text)
rcsgiEC2SecurityGroupOwnerId = lens _rcsgiEC2SecurityGroupOwnerId (\s a -> s {_rcsgiEC2SecurityGroupOwnerId = a})

-- | The name of the EC2 Security Group whose access is to be revoked. If @EC2SecurityGroupName@ is specified, @EC2SecurityGroupOwnerId@ must also be provided and @CIDRIP@ cannot be provided.
rcsgiEC2SecurityGroupName :: Lens' RevokeClusterSecurityGroupIngress (Maybe Text)
rcsgiEC2SecurityGroupName = lens _rcsgiEC2SecurityGroupName (\s a -> s {_rcsgiEC2SecurityGroupName = a})

-- | The name of the security Group from which to revoke the ingress rule.
rcsgiClusterSecurityGroupName :: Lens' RevokeClusterSecurityGroupIngress Text
rcsgiClusterSecurityGroupName = lens _rcsgiClusterSecurityGroupName (\s a -> s {_rcsgiClusterSecurityGroupName = a})

instance AWSRequest RevokeClusterSecurityGroupIngress where
  type
    Rs RevokeClusterSecurityGroupIngress =
      RevokeClusterSecurityGroupIngressResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "RevokeClusterSecurityGroupIngressResult"
      ( \s h x ->
          RevokeClusterSecurityGroupIngressResponse'
            <$> (x .@? "ClusterSecurityGroup")
            <*> (pure (fromEnum s))
      )

instance Hashable RevokeClusterSecurityGroupIngress

instance NFData RevokeClusterSecurityGroupIngress

instance ToHeaders RevokeClusterSecurityGroupIngress where
  toHeaders = const mempty

instance ToPath RevokeClusterSecurityGroupIngress where
  toPath = const "/"

instance ToQuery RevokeClusterSecurityGroupIngress where
  toQuery RevokeClusterSecurityGroupIngress' {..} =
    mconcat
      [ "Action"
          =: ("RevokeClusterSecurityGroupIngress" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "CIDRIP" =: _rcsgiCIdRIP,
        "EC2SecurityGroupOwnerId"
          =: _rcsgiEC2SecurityGroupOwnerId,
        "EC2SecurityGroupName" =: _rcsgiEC2SecurityGroupName,
        "ClusterSecurityGroupName"
          =: _rcsgiClusterSecurityGroupName
      ]

-- | /See:/ 'revokeClusterSecurityGroupIngressResponse' smart constructor.
data RevokeClusterSecurityGroupIngressResponse = RevokeClusterSecurityGroupIngressResponse'
  { _rcsgirrsClusterSecurityGroup ::
      !( Maybe
           ClusterSecurityGroup
       ),
    _rcsgirrsResponseStatus ::
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

-- | Creates a value of 'RevokeClusterSecurityGroupIngressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcsgirrsClusterSecurityGroup' - Undocumented member.
--
-- * 'rcsgirrsResponseStatus' - -- | The response status code.
revokeClusterSecurityGroupIngressResponse ::
  -- | 'rcsgirrsResponseStatus'
  Int ->
  RevokeClusterSecurityGroupIngressResponse
revokeClusterSecurityGroupIngressResponse
  pResponseStatus_ =
    RevokeClusterSecurityGroupIngressResponse'
      { _rcsgirrsClusterSecurityGroup =
          Nothing,
        _rcsgirrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
rcsgirrsClusterSecurityGroup :: Lens' RevokeClusterSecurityGroupIngressResponse (Maybe ClusterSecurityGroup)
rcsgirrsClusterSecurityGroup = lens _rcsgirrsClusterSecurityGroup (\s a -> s {_rcsgirrsClusterSecurityGroup = a})

-- | -- | The response status code.
rcsgirrsResponseStatus :: Lens' RevokeClusterSecurityGroupIngressResponse Int
rcsgirrsResponseStatus = lens _rcsgirrsResponseStatus (\s a -> s {_rcsgirrsResponseStatus = a})

instance
  NFData
    RevokeClusterSecurityGroupIngressResponse
