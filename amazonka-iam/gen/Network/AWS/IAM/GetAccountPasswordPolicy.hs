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
-- Module      : Network.AWS.IAM.GetAccountPasswordPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the password policy for the AWS account. This tells you the complexity requirements and mandatory rotation periods for the IAM user passwords in your account. For more information about using a password policy, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html Managing an IAM password policy> .
module Network.AWS.IAM.GetAccountPasswordPolicy
  ( -- * Creating a Request
    getAccountPasswordPolicy,
    GetAccountPasswordPolicy,

    -- * Destructuring the Response
    getAccountPasswordPolicyResponse,
    GetAccountPasswordPolicyResponse,

    -- * Response Lenses
    gapprrsResponseStatus,
    gapprrsPasswordPolicy,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAccountPasswordPolicy' smart constructor.
data GetAccountPasswordPolicy = GetAccountPasswordPolicy'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAccountPasswordPolicy' with the minimum fields required to make a request.
getAccountPasswordPolicy ::
  GetAccountPasswordPolicy
getAccountPasswordPolicy = GetAccountPasswordPolicy'

instance AWSRequest GetAccountPasswordPolicy where
  type
    Rs GetAccountPasswordPolicy =
      GetAccountPasswordPolicyResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetAccountPasswordPolicyResult"
      ( \s h x ->
          GetAccountPasswordPolicyResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "PasswordPolicy")
      )

instance Hashable GetAccountPasswordPolicy

instance NFData GetAccountPasswordPolicy

instance ToHeaders GetAccountPasswordPolicy where
  toHeaders = const mempty

instance ToPath GetAccountPasswordPolicy where
  toPath = const "/"

instance ToQuery GetAccountPasswordPolicy where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("GetAccountPasswordPolicy" :: ByteString),
            "Version" =: ("2010-05-08" :: ByteString)
          ]
      )

-- | Contains the response to a successful 'GetAccountPasswordPolicy' request.
--
--
--
-- /See:/ 'getAccountPasswordPolicyResponse' smart constructor.
data GetAccountPasswordPolicyResponse = GetAccountPasswordPolicyResponse'
  { _gapprrsResponseStatus ::
      !Int,
    _gapprrsPasswordPolicy ::
      !PasswordPolicy
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAccountPasswordPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gapprrsResponseStatus' - -- | The response status code.
--
-- * 'gapprrsPasswordPolicy' - A structure that contains details about the account's password policy.
getAccountPasswordPolicyResponse ::
  -- | 'gapprrsResponseStatus'
  Int ->
  -- | 'gapprrsPasswordPolicy'
  PasswordPolicy ->
  GetAccountPasswordPolicyResponse
getAccountPasswordPolicyResponse
  pResponseStatus_
  pPasswordPolicy_ =
    GetAccountPasswordPolicyResponse'
      { _gapprrsResponseStatus =
          pResponseStatus_,
        _gapprrsPasswordPolicy = pPasswordPolicy_
      }

-- | -- | The response status code.
gapprrsResponseStatus :: Lens' GetAccountPasswordPolicyResponse Int
gapprrsResponseStatus = lens _gapprrsResponseStatus (\s a -> s {_gapprrsResponseStatus = a})

-- | A structure that contains details about the account's password policy.
gapprrsPasswordPolicy :: Lens' GetAccountPasswordPolicyResponse PasswordPolicy
gapprrsPasswordPolicy = lens _gapprrsPasswordPolicy (\s a -> s {_gapprrsPasswordPolicy = a})

instance NFData GetAccountPasswordPolicyResponse
