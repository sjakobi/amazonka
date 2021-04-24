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
-- Module      : Network.AWS.Redshift.CreateClusterSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amazon Redshift security group. You use security groups to control access to non-VPC clusters.
--
--
-- For information about managing security groups, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html Amazon Redshift Cluster Security Groups> in the /Amazon Redshift Cluster Management Guide/ .
module Network.AWS.Redshift.CreateClusterSecurityGroup
  ( -- * Creating a Request
    createClusterSecurityGroup,
    CreateClusterSecurityGroup,

    -- * Request Lenses
    ccsgcTags,
    ccsgcClusterSecurityGroupName,
    ccsgcDescription,

    -- * Destructuring the Response
    createClusterSecurityGroupResponse,
    CreateClusterSecurityGroupResponse,

    -- * Response Lenses
    crersClusterSecurityGroup,
    crersResponseStatus,
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
-- /See:/ 'createClusterSecurityGroup' smart constructor.
data CreateClusterSecurityGroup = CreateClusterSecurityGroup'
  { _ccsgcTags ::
      !(Maybe [Tag]),
    _ccsgcClusterSecurityGroupName ::
      !Text,
    _ccsgcDescription ::
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

-- | Creates a value of 'CreateClusterSecurityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccsgcTags' - A list of tag instances.
--
-- * 'ccsgcClusterSecurityGroupName' - The name for the security group. Amazon Redshift stores the value as a lowercase string. Constraints:     * Must contain no more than 255 alphanumeric characters or hyphens.     * Must not be "Default".     * Must be unique for all security groups that are created by your AWS account. Example: @examplesecuritygroup@
--
-- * 'ccsgcDescription' - A description for the security group.
createClusterSecurityGroup ::
  -- | 'ccsgcClusterSecurityGroupName'
  Text ->
  -- | 'ccsgcDescription'
  Text ->
  CreateClusterSecurityGroup
createClusterSecurityGroup
  pClusterSecurityGroupName_
  pDescription_ =
    CreateClusterSecurityGroup'
      { _ccsgcTags = Nothing,
        _ccsgcClusterSecurityGroupName =
          pClusterSecurityGroupName_,
        _ccsgcDescription = pDescription_
      }

-- | A list of tag instances.
ccsgcTags :: Lens' CreateClusterSecurityGroup [Tag]
ccsgcTags = lens _ccsgcTags (\s a -> s {_ccsgcTags = a}) . _Default . _Coerce

-- | The name for the security group. Amazon Redshift stores the value as a lowercase string. Constraints:     * Must contain no more than 255 alphanumeric characters or hyphens.     * Must not be "Default".     * Must be unique for all security groups that are created by your AWS account. Example: @examplesecuritygroup@
ccsgcClusterSecurityGroupName :: Lens' CreateClusterSecurityGroup Text
ccsgcClusterSecurityGroupName = lens _ccsgcClusterSecurityGroupName (\s a -> s {_ccsgcClusterSecurityGroupName = a})

-- | A description for the security group.
ccsgcDescription :: Lens' CreateClusterSecurityGroup Text
ccsgcDescription = lens _ccsgcDescription (\s a -> s {_ccsgcDescription = a})

instance AWSRequest CreateClusterSecurityGroup where
  type
    Rs CreateClusterSecurityGroup =
      CreateClusterSecurityGroupResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "CreateClusterSecurityGroupResult"
      ( \s h x ->
          CreateClusterSecurityGroupResponse'
            <$> (x .@? "ClusterSecurityGroup")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateClusterSecurityGroup

instance NFData CreateClusterSecurityGroup

instance ToHeaders CreateClusterSecurityGroup where
  toHeaders = const mempty

instance ToPath CreateClusterSecurityGroup where
  toPath = const "/"

instance ToQuery CreateClusterSecurityGroup where
  toQuery CreateClusterSecurityGroup' {..} =
    mconcat
      [ "Action"
          =: ("CreateClusterSecurityGroup" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "Tags" =: toQuery (toQueryList "Tag" <$> _ccsgcTags),
        "ClusterSecurityGroupName"
          =: _ccsgcClusterSecurityGroupName,
        "Description" =: _ccsgcDescription
      ]

-- | /See:/ 'createClusterSecurityGroupResponse' smart constructor.
data CreateClusterSecurityGroupResponse = CreateClusterSecurityGroupResponse'
  { _crersClusterSecurityGroup ::
      !( Maybe
           ClusterSecurityGroup
       ),
    _crersResponseStatus ::
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

-- | Creates a value of 'CreateClusterSecurityGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crersClusterSecurityGroup' - Undocumented member.
--
-- * 'crersResponseStatus' - -- | The response status code.
createClusterSecurityGroupResponse ::
  -- | 'crersResponseStatus'
  Int ->
  CreateClusterSecurityGroupResponse
createClusterSecurityGroupResponse pResponseStatus_ =
  CreateClusterSecurityGroupResponse'
    { _crersClusterSecurityGroup =
        Nothing,
      _crersResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
crersClusterSecurityGroup :: Lens' CreateClusterSecurityGroupResponse (Maybe ClusterSecurityGroup)
crersClusterSecurityGroup = lens _crersClusterSecurityGroup (\s a -> s {_crersClusterSecurityGroup = a})

-- | -- | The response status code.
crersResponseStatus :: Lens' CreateClusterSecurityGroupResponse Int
crersResponseStatus = lens _crersResponseStatus (\s a -> s {_crersResponseStatus = a})

instance NFData CreateClusterSecurityGroupResponse
