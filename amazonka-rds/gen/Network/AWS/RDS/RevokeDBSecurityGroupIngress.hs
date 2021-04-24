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
-- Module      : Network.AWS.RDS.RevokeDBSecurityGroupIngress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes ingress from a DBSecurityGroup for previously authorized IP ranges or EC2 or VPC Security Groups. Required parameters for this API are one of CIDRIP, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId).
module Network.AWS.RDS.RevokeDBSecurityGroupIngress
  ( -- * Creating a Request
    revokeDBSecurityGroupIngress,
    RevokeDBSecurityGroupIngress,

    -- * Request Lenses
    rdsgiCIdRIP,
    rdsgiEC2SecurityGroupOwnerId,
    rdsgiEC2SecurityGroupId,
    rdsgiEC2SecurityGroupName,
    rdsgiDBSecurityGroupName,

    -- * Destructuring the Response
    revokeDBSecurityGroupIngressResponse,
    RevokeDBSecurityGroupIngressResponse,

    -- * Response Lenses
    rdsgirrsDBSecurityGroup,
    rdsgirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'revokeDBSecurityGroupIngress' smart constructor.
data RevokeDBSecurityGroupIngress = RevokeDBSecurityGroupIngress'
  { _rdsgiCIdRIP ::
      !(Maybe Text),
    _rdsgiEC2SecurityGroupOwnerId ::
      !(Maybe Text),
    _rdsgiEC2SecurityGroupId ::
      !(Maybe Text),
    _rdsgiEC2SecurityGroupName ::
      !(Maybe Text),
    _rdsgiDBSecurityGroupName ::
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

-- | Creates a value of 'RevokeDBSecurityGroupIngress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdsgiCIdRIP' - The IP range to revoke access from. Must be a valid CIDR range. If @CIDRIP@ is specified, @EC2SecurityGroupName@ , @EC2SecurityGroupId@ and @EC2SecurityGroupOwnerId@ can't be provided.
--
-- * 'rdsgiEC2SecurityGroupOwnerId' - The AWS account number of the owner of the EC2 security group specified in the @EC2SecurityGroupName@ parameter. The AWS access key ID isn't an acceptable value. For VPC DB security groups, @EC2SecurityGroupId@ must be provided. Otherwise, EC2SecurityGroupOwnerId and either @EC2SecurityGroupName@ or @EC2SecurityGroupId@ must be provided.
--
-- * 'rdsgiEC2SecurityGroupId' - The id of the EC2 security group to revoke access from. For VPC DB security groups, @EC2SecurityGroupId@ must be provided. Otherwise, EC2SecurityGroupOwnerId and either @EC2SecurityGroupName@ or @EC2SecurityGroupId@ must be provided.
--
-- * 'rdsgiEC2SecurityGroupName' - The name of the EC2 security group to revoke access from. For VPC DB security groups, @EC2SecurityGroupId@ must be provided. Otherwise, EC2SecurityGroupOwnerId and either @EC2SecurityGroupName@ or @EC2SecurityGroupId@ must be provided.
--
-- * 'rdsgiDBSecurityGroupName' - The name of the DB security group to revoke ingress from.
revokeDBSecurityGroupIngress ::
  -- | 'rdsgiDBSecurityGroupName'
  Text ->
  RevokeDBSecurityGroupIngress
revokeDBSecurityGroupIngress pDBSecurityGroupName_ =
  RevokeDBSecurityGroupIngress'
    { _rdsgiCIdRIP =
        Nothing,
      _rdsgiEC2SecurityGroupOwnerId = Nothing,
      _rdsgiEC2SecurityGroupId = Nothing,
      _rdsgiEC2SecurityGroupName = Nothing,
      _rdsgiDBSecurityGroupName =
        pDBSecurityGroupName_
    }

-- | The IP range to revoke access from. Must be a valid CIDR range. If @CIDRIP@ is specified, @EC2SecurityGroupName@ , @EC2SecurityGroupId@ and @EC2SecurityGroupOwnerId@ can't be provided.
rdsgiCIdRIP :: Lens' RevokeDBSecurityGroupIngress (Maybe Text)
rdsgiCIdRIP = lens _rdsgiCIdRIP (\s a -> s {_rdsgiCIdRIP = a})

-- | The AWS account number of the owner of the EC2 security group specified in the @EC2SecurityGroupName@ parameter. The AWS access key ID isn't an acceptable value. For VPC DB security groups, @EC2SecurityGroupId@ must be provided. Otherwise, EC2SecurityGroupOwnerId and either @EC2SecurityGroupName@ or @EC2SecurityGroupId@ must be provided.
rdsgiEC2SecurityGroupOwnerId :: Lens' RevokeDBSecurityGroupIngress (Maybe Text)
rdsgiEC2SecurityGroupOwnerId = lens _rdsgiEC2SecurityGroupOwnerId (\s a -> s {_rdsgiEC2SecurityGroupOwnerId = a})

-- | The id of the EC2 security group to revoke access from. For VPC DB security groups, @EC2SecurityGroupId@ must be provided. Otherwise, EC2SecurityGroupOwnerId and either @EC2SecurityGroupName@ or @EC2SecurityGroupId@ must be provided.
rdsgiEC2SecurityGroupId :: Lens' RevokeDBSecurityGroupIngress (Maybe Text)
rdsgiEC2SecurityGroupId = lens _rdsgiEC2SecurityGroupId (\s a -> s {_rdsgiEC2SecurityGroupId = a})

-- | The name of the EC2 security group to revoke access from. For VPC DB security groups, @EC2SecurityGroupId@ must be provided. Otherwise, EC2SecurityGroupOwnerId and either @EC2SecurityGroupName@ or @EC2SecurityGroupId@ must be provided.
rdsgiEC2SecurityGroupName :: Lens' RevokeDBSecurityGroupIngress (Maybe Text)
rdsgiEC2SecurityGroupName = lens _rdsgiEC2SecurityGroupName (\s a -> s {_rdsgiEC2SecurityGroupName = a})

-- | The name of the DB security group to revoke ingress from.
rdsgiDBSecurityGroupName :: Lens' RevokeDBSecurityGroupIngress Text
rdsgiDBSecurityGroupName = lens _rdsgiDBSecurityGroupName (\s a -> s {_rdsgiDBSecurityGroupName = a})

instance AWSRequest RevokeDBSecurityGroupIngress where
  type
    Rs RevokeDBSecurityGroupIngress =
      RevokeDBSecurityGroupIngressResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "RevokeDBSecurityGroupIngressResult"
      ( \s h x ->
          RevokeDBSecurityGroupIngressResponse'
            <$> (x .@? "DBSecurityGroup") <*> (pure (fromEnum s))
      )

instance Hashable RevokeDBSecurityGroupIngress

instance NFData RevokeDBSecurityGroupIngress

instance ToHeaders RevokeDBSecurityGroupIngress where
  toHeaders = const mempty

instance ToPath RevokeDBSecurityGroupIngress where
  toPath = const "/"

instance ToQuery RevokeDBSecurityGroupIngress where
  toQuery RevokeDBSecurityGroupIngress' {..} =
    mconcat
      [ "Action"
          =: ("RevokeDBSecurityGroupIngress" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "CIDRIP" =: _rdsgiCIdRIP,
        "EC2SecurityGroupOwnerId"
          =: _rdsgiEC2SecurityGroupOwnerId,
        "EC2SecurityGroupId" =: _rdsgiEC2SecurityGroupId,
        "EC2SecurityGroupName" =: _rdsgiEC2SecurityGroupName,
        "DBSecurityGroupName" =: _rdsgiDBSecurityGroupName
      ]

-- | /See:/ 'revokeDBSecurityGroupIngressResponse' smart constructor.
data RevokeDBSecurityGroupIngressResponse = RevokeDBSecurityGroupIngressResponse'
  { _rdsgirrsDBSecurityGroup ::
      !( Maybe
           DBSecurityGroup
       ),
    _rdsgirrsResponseStatus ::
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

-- | Creates a value of 'RevokeDBSecurityGroupIngressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdsgirrsDBSecurityGroup' - Undocumented member.
--
-- * 'rdsgirrsResponseStatus' - -- | The response status code.
revokeDBSecurityGroupIngressResponse ::
  -- | 'rdsgirrsResponseStatus'
  Int ->
  RevokeDBSecurityGroupIngressResponse
revokeDBSecurityGroupIngressResponse pResponseStatus_ =
  RevokeDBSecurityGroupIngressResponse'
    { _rdsgirrsDBSecurityGroup =
        Nothing,
      _rdsgirrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
rdsgirrsDBSecurityGroup :: Lens' RevokeDBSecurityGroupIngressResponse (Maybe DBSecurityGroup)
rdsgirrsDBSecurityGroup = lens _rdsgirrsDBSecurityGroup (\s a -> s {_rdsgirrsDBSecurityGroup = a})

-- | -- | The response status code.
rdsgirrsResponseStatus :: Lens' RevokeDBSecurityGroupIngressResponse Int
rdsgirrsResponseStatus = lens _rdsgirrsResponseStatus (\s a -> s {_rdsgirrsResponseStatus = a})

instance NFData RevokeDBSecurityGroupIngressResponse
