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
-- Module      : Network.AWS.WAF.GetPermissionPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the IAM policy attached to the RuleGroup.
module Network.AWS.WAF.GetPermissionPolicy
  ( -- * Creating a Request
    getPermissionPolicy,
    GetPermissionPolicy,

    -- * Request Lenses
    gppResourceARN,

    -- * Destructuring the Response
    getPermissionPolicyResponse,
    GetPermissionPolicyResponse,

    -- * Response Lenses
    gpprrsPolicy,
    gpprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'getPermissionPolicy' smart constructor.
newtype GetPermissionPolicy = GetPermissionPolicy'
  { _gppResourceARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetPermissionPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gppResourceARN' - The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.
getPermissionPolicy ::
  -- | 'gppResourceARN'
  Text ->
  GetPermissionPolicy
getPermissionPolicy pResourceARN_ =
  GetPermissionPolicy'
    { _gppResourceARN =
        pResourceARN_
    }

-- | The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.
gppResourceARN :: Lens' GetPermissionPolicy Text
gppResourceARN = lens _gppResourceARN (\s a -> s {_gppResourceARN = a})

instance AWSRequest GetPermissionPolicy where
  type
    Rs GetPermissionPolicy =
      GetPermissionPolicyResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          GetPermissionPolicyResponse'
            <$> (x .?> "Policy") <*> (pure (fromEnum s))
      )

instance Hashable GetPermissionPolicy

instance NFData GetPermissionPolicy

instance ToHeaders GetPermissionPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_20150824.GetPermissionPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPermissionPolicy where
  toJSON GetPermissionPolicy' {..} =
    object
      (catMaybes [Just ("ResourceArn" .= _gppResourceARN)])

instance ToPath GetPermissionPolicy where
  toPath = const "/"

instance ToQuery GetPermissionPolicy where
  toQuery = const mempty

-- | /See:/ 'getPermissionPolicyResponse' smart constructor.
data GetPermissionPolicyResponse = GetPermissionPolicyResponse'
  { _gpprrsPolicy ::
      !(Maybe Text),
    _gpprrsResponseStatus ::
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

-- | Creates a value of 'GetPermissionPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpprrsPolicy' - The IAM policy attached to the specified RuleGroup.
--
-- * 'gpprrsResponseStatus' - -- | The response status code.
getPermissionPolicyResponse ::
  -- | 'gpprrsResponseStatus'
  Int ->
  GetPermissionPolicyResponse
getPermissionPolicyResponse pResponseStatus_ =
  GetPermissionPolicyResponse'
    { _gpprrsPolicy =
        Nothing,
      _gpprrsResponseStatus = pResponseStatus_
    }

-- | The IAM policy attached to the specified RuleGroup.
gpprrsPolicy :: Lens' GetPermissionPolicyResponse (Maybe Text)
gpprrsPolicy = lens _gpprrsPolicy (\s a -> s {_gpprrsPolicy = a})

-- | -- | The response status code.
gpprrsResponseStatus :: Lens' GetPermissionPolicyResponse Int
gpprrsResponseStatus = lens _gpprrsResponseStatus (\s a -> s {_gpprrsResponseStatus = a})

instance NFData GetPermissionPolicyResponse
