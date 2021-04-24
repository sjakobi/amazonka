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
-- Module      : Network.AWS.Organizations.DeletePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified policy from your organization. Before you perform this operation, you must first detach the policy from all organizational units (OUs), roots, and accounts.
--
--
-- This operation can be called only from the organization's management account.
module Network.AWS.Organizations.DeletePolicy
  ( -- * Creating a Request
    deletePolicy,
    DeletePolicy,

    -- * Request Lenses
    dpPolicyId,

    -- * Destructuring the Response
    deletePolicyResponse,
    DeletePolicyResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deletePolicy' smart constructor.
newtype DeletePolicy = DeletePolicy'
  { _dpPolicyId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpPolicyId' - The unique identifier (ID) of the policy that you want to delete. You can get the ID from the 'ListPolicies' or 'ListPoliciesForTarget' operations. The <http://wikipedia.org/wiki/regex regex pattern> for a policy ID string requires "p-" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).
deletePolicy ::
  -- | 'dpPolicyId'
  Text ->
  DeletePolicy
deletePolicy pPolicyId_ =
  DeletePolicy' {_dpPolicyId = pPolicyId_}

-- | The unique identifier (ID) of the policy that you want to delete. You can get the ID from the 'ListPolicies' or 'ListPoliciesForTarget' operations. The <http://wikipedia.org/wiki/regex regex pattern> for a policy ID string requires "p-" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).
dpPolicyId :: Lens' DeletePolicy Text
dpPolicyId = lens _dpPolicyId (\s a -> s {_dpPolicyId = a})

instance AWSRequest DeletePolicy where
  type Rs DeletePolicy = DeletePolicyResponse
  request = postJSON organizations
  response = receiveNull DeletePolicyResponse'

instance Hashable DeletePolicy

instance NFData DeletePolicy

instance ToHeaders DeletePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.DeletePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeletePolicy where
  toJSON DeletePolicy' {..} =
    object
      (catMaybes [Just ("PolicyId" .= _dpPolicyId)])

instance ToPath DeletePolicy where
  toPath = const "/"

instance ToQuery DeletePolicy where
  toQuery = const mempty

-- | /See:/ 'deletePolicyResponse' smart constructor.
data DeletePolicyResponse = DeletePolicyResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletePolicyResponse' with the minimum fields required to make a request.
deletePolicyResponse ::
  DeletePolicyResponse
deletePolicyResponse = DeletePolicyResponse'

instance NFData DeletePolicyResponse
