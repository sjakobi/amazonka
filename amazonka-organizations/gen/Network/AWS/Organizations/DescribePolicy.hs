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
-- Module      : Network.AWS.Organizations.DescribePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a policy.
--
--
-- This operation can be called only from the organization's management account or by a member account that is a delegated administrator for an AWS service.
module Network.AWS.Organizations.DescribePolicy
  ( -- * Creating a Request
    describePolicy,
    DescribePolicy,

    -- * Request Lenses
    desPolicyId,

    -- * Destructuring the Response
    describePolicyResponse,
    DescribePolicyResponse,

    -- * Response Lenses
    dprrsPolicy,
    dprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePolicy' smart constructor.
newtype DescribePolicy = DescribePolicy'
  { _desPolicyId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desPolicyId' - The unique identifier (ID) of the policy that you want details about. You can get the ID from the 'ListPolicies' or 'ListPoliciesForTarget' operations. The <http://wikipedia.org/wiki/regex regex pattern> for a policy ID string requires "p-" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).
describePolicy ::
  -- | 'desPolicyId'
  Text ->
  DescribePolicy
describePolicy pPolicyId_ =
  DescribePolicy' {_desPolicyId = pPolicyId_}

-- | The unique identifier (ID) of the policy that you want details about. You can get the ID from the 'ListPolicies' or 'ListPoliciesForTarget' operations. The <http://wikipedia.org/wiki/regex regex pattern> for a policy ID string requires "p-" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).
desPolicyId :: Lens' DescribePolicy Text
desPolicyId = lens _desPolicyId (\s a -> s {_desPolicyId = a})

instance AWSRequest DescribePolicy where
  type Rs DescribePolicy = DescribePolicyResponse
  request = postJSON organizations
  response =
    receiveJSON
      ( \s h x ->
          DescribePolicyResponse'
            <$> (x .?> "Policy") <*> (pure (fromEnum s))
      )

instance Hashable DescribePolicy

instance NFData DescribePolicy

instance ToHeaders DescribePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.DescribePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePolicy where
  toJSON DescribePolicy' {..} =
    object
      (catMaybes [Just ("PolicyId" .= _desPolicyId)])

instance ToPath DescribePolicy where
  toPath = const "/"

instance ToQuery DescribePolicy where
  toQuery = const mempty

-- | /See:/ 'describePolicyResponse' smart constructor.
data DescribePolicyResponse = DescribePolicyResponse'
  { _dprrsPolicy ::
      !(Maybe Policy),
    _dprrsResponseStatus ::
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

-- | Creates a value of 'DescribePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrsPolicy' - A structure that contains details about the specified policy.
--
-- * 'dprrsResponseStatus' - -- | The response status code.
describePolicyResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DescribePolicyResponse
describePolicyResponse pResponseStatus_ =
  DescribePolicyResponse'
    { _dprrsPolicy = Nothing,
      _dprrsResponseStatus = pResponseStatus_
    }

-- | A structure that contains details about the specified policy.
dprrsPolicy :: Lens' DescribePolicyResponse (Maybe Policy)
dprrsPolicy = lens _dprrsPolicy (\s a -> s {_dprrsPolicy = a})

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DescribePolicyResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DescribePolicyResponse
