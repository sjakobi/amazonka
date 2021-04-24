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
-- Module      : Network.AWS.Lambda.GetPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the <https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html resource-based IAM policy> for a function, version, or alias.
module Network.AWS.Lambda.GetPolicy
  ( -- * Creating a Request
    getPolicy,
    GetPolicy,

    -- * Request Lenses
    gpQualifier,
    gpFunctionName,

    -- * Destructuring the Response
    getPolicyResponse,
    GetPolicyResponse,

    -- * Response Lenses
    gprrsRevisionId,
    gprrsPolicy,
    gprrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPolicy' smart constructor.
data GetPolicy = GetPolicy'
  { _gpQualifier ::
      !(Maybe Text),
    _gpFunctionName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpQualifier' - Specify a version or alias to get the policy for that resource.
--
-- * 'gpFunctionName' - The name of the Lambda function, version, or alias. __Name formats__      * __Function name__ - @my-function@ (name-only), @my-function:v1@ (with alias).     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
getPolicy ::
  -- | 'gpFunctionName'
  Text ->
  GetPolicy
getPolicy pFunctionName_ =
  GetPolicy'
    { _gpQualifier = Nothing,
      _gpFunctionName = pFunctionName_
    }

-- | Specify a version or alias to get the policy for that resource.
gpQualifier :: Lens' GetPolicy (Maybe Text)
gpQualifier = lens _gpQualifier (\s a -> s {_gpQualifier = a})

-- | The name of the Lambda function, version, or alias. __Name formats__      * __Function name__ - @my-function@ (name-only), @my-function:v1@ (with alias).     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
gpFunctionName :: Lens' GetPolicy Text
gpFunctionName = lens _gpFunctionName (\s a -> s {_gpFunctionName = a})

instance AWSRequest GetPolicy where
  type Rs GetPolicy = GetPolicyResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          GetPolicyResponse'
            <$> (x .?> "RevisionId")
            <*> (x .?> "Policy")
            <*> (pure (fromEnum s))
      )

instance Hashable GetPolicy

instance NFData GetPolicy

instance ToHeaders GetPolicy where
  toHeaders = const mempty

instance ToPath GetPolicy where
  toPath GetPolicy' {..} =
    mconcat
      [ "/2015-03-31/functions/",
        toBS _gpFunctionName,
        "/policy"
      ]

instance ToQuery GetPolicy where
  toQuery GetPolicy' {..} =
    mconcat ["Qualifier" =: _gpQualifier]

-- | /See:/ 'getPolicyResponse' smart constructor.
data GetPolicyResponse = GetPolicyResponse'
  { _gprrsRevisionId ::
      !(Maybe Text),
    _gprrsPolicy :: !(Maybe Text),
    _gprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprrsRevisionId' - A unique identifier for the current revision of the policy.
--
-- * 'gprrsPolicy' - The resource-based policy.
--
-- * 'gprrsResponseStatus' - -- | The response status code.
getPolicyResponse ::
  -- | 'gprrsResponseStatus'
  Int ->
  GetPolicyResponse
getPolicyResponse pResponseStatus_ =
  GetPolicyResponse'
    { _gprrsRevisionId = Nothing,
      _gprrsPolicy = Nothing,
      _gprrsResponseStatus = pResponseStatus_
    }

-- | A unique identifier for the current revision of the policy.
gprrsRevisionId :: Lens' GetPolicyResponse (Maybe Text)
gprrsRevisionId = lens _gprrsRevisionId (\s a -> s {_gprrsRevisionId = a})

-- | The resource-based policy.
gprrsPolicy :: Lens' GetPolicyResponse (Maybe Text)
gprrsPolicy = lens _gprrsPolicy (\s a -> s {_gprrsPolicy = a})

-- | -- | The response status code.
gprrsResponseStatus :: Lens' GetPolicyResponse Int
gprrsResponseStatus = lens _gprrsResponseStatus (\s a -> s {_gprrsResponseStatus = a})

instance NFData GetPolicyResponse
