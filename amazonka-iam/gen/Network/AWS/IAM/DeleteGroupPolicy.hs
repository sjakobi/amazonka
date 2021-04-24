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
-- Module      : Network.AWS.IAM.DeleteGroupPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified inline policy that is embedded in the specified IAM group.
--
--
-- A group can also have managed policies attached to it. To detach a managed policy from a group, use 'DetachGroupPolicy' . For more information about policies, refer to <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
module Network.AWS.IAM.DeleteGroupPolicy
  ( -- * Creating a Request
    deleteGroupPolicy,
    DeleteGroupPolicy,

    -- * Request Lenses
    dgpGroupName,
    dgpPolicyName,

    -- * Destructuring the Response
    deleteGroupPolicyResponse,
    DeleteGroupPolicyResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteGroupPolicy' smart constructor.
data DeleteGroupPolicy = DeleteGroupPolicy'
  { _dgpGroupName ::
      !Text,
    _dgpPolicyName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteGroupPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgpGroupName' - The name (friendly name, not ARN) identifying the group that the policy is embedded in. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'dgpPolicyName' - The name identifying the policy document to delete. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
deleteGroupPolicy ::
  -- | 'dgpGroupName'
  Text ->
  -- | 'dgpPolicyName'
  Text ->
  DeleteGroupPolicy
deleteGroupPolicy pGroupName_ pPolicyName_ =
  DeleteGroupPolicy'
    { _dgpGroupName = pGroupName_,
      _dgpPolicyName = pPolicyName_
    }

-- | The name (friendly name, not ARN) identifying the group that the policy is embedded in. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
dgpGroupName :: Lens' DeleteGroupPolicy Text
dgpGroupName = lens _dgpGroupName (\s a -> s {_dgpGroupName = a})

-- | The name identifying the policy document to delete. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
dgpPolicyName :: Lens' DeleteGroupPolicy Text
dgpPolicyName = lens _dgpPolicyName (\s a -> s {_dgpPolicyName = a})

instance AWSRequest DeleteGroupPolicy where
  type Rs DeleteGroupPolicy = DeleteGroupPolicyResponse
  request = postQuery iam
  response = receiveNull DeleteGroupPolicyResponse'

instance Hashable DeleteGroupPolicy

instance NFData DeleteGroupPolicy

instance ToHeaders DeleteGroupPolicy where
  toHeaders = const mempty

instance ToPath DeleteGroupPolicy where
  toPath = const "/"

instance ToQuery DeleteGroupPolicy where
  toQuery DeleteGroupPolicy' {..} =
    mconcat
      [ "Action" =: ("DeleteGroupPolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "GroupName" =: _dgpGroupName,
        "PolicyName" =: _dgpPolicyName
      ]

-- | /See:/ 'deleteGroupPolicyResponse' smart constructor.
data DeleteGroupPolicyResponse = DeleteGroupPolicyResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteGroupPolicyResponse' with the minimum fields required to make a request.
deleteGroupPolicyResponse ::
  DeleteGroupPolicyResponse
deleteGroupPolicyResponse =
  DeleteGroupPolicyResponse'

instance NFData DeleteGroupPolicyResponse
