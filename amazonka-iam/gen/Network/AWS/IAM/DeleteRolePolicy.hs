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
-- Module      : Network.AWS.IAM.DeleteRolePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified inline policy that is embedded in the specified IAM role.
--
--
-- A role can also have managed policies attached to it. To detach a managed policy from a role, use 'DetachRolePolicy' . For more information about policies, refer to <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
module Network.AWS.IAM.DeleteRolePolicy
  ( -- * Creating a Request
    deleteRolePolicy,
    DeleteRolePolicy,

    -- * Request Lenses
    dRoleName,
    dPolicyName,

    -- * Destructuring the Response
    deleteRolePolicyResponse,
    DeleteRolePolicyResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRolePolicy' smart constructor.
data DeleteRolePolicy = DeleteRolePolicy'
  { _dRoleName ::
      !Text,
    _dPolicyName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteRolePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dRoleName' - The name (friendly name, not ARN) identifying the role that the policy is embedded in. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'dPolicyName' - The name of the inline policy to delete from the specified IAM role. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
deleteRolePolicy ::
  -- | 'dRoleName'
  Text ->
  -- | 'dPolicyName'
  Text ->
  DeleteRolePolicy
deleteRolePolicy pRoleName_ pPolicyName_ =
  DeleteRolePolicy'
    { _dRoleName = pRoleName_,
      _dPolicyName = pPolicyName_
    }

-- | The name (friendly name, not ARN) identifying the role that the policy is embedded in. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
dRoleName :: Lens' DeleteRolePolicy Text
dRoleName = lens _dRoleName (\s a -> s {_dRoleName = a})

-- | The name of the inline policy to delete from the specified IAM role. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
dPolicyName :: Lens' DeleteRolePolicy Text
dPolicyName = lens _dPolicyName (\s a -> s {_dPolicyName = a})

instance AWSRequest DeleteRolePolicy where
  type Rs DeleteRolePolicy = DeleteRolePolicyResponse
  request = postQuery iam
  response = receiveNull DeleteRolePolicyResponse'

instance Hashable DeleteRolePolicy

instance NFData DeleteRolePolicy

instance ToHeaders DeleteRolePolicy where
  toHeaders = const mempty

instance ToPath DeleteRolePolicy where
  toPath = const "/"

instance ToQuery DeleteRolePolicy where
  toQuery DeleteRolePolicy' {..} =
    mconcat
      [ "Action" =: ("DeleteRolePolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "RoleName" =: _dRoleName,
        "PolicyName" =: _dPolicyName
      ]

-- | /See:/ 'deleteRolePolicyResponse' smart constructor.
data DeleteRolePolicyResponse = DeleteRolePolicyResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteRolePolicyResponse' with the minimum fields required to make a request.
deleteRolePolicyResponse ::
  DeleteRolePolicyResponse
deleteRolePolicyResponse = DeleteRolePolicyResponse'

instance NFData DeleteRolePolicyResponse
