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
-- Module      : Network.AWS.SecretsManager.PutResourcePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches the contents of the specified resource-based permission policy to a secret. A resource-based policy is optional. Alternatively, you can use IAM identity-based policies that specify the secret's Amazon Resource Name (ARN) in the policy statement's @Resources@ element. You can also use a combination of both identity-based and resource-based policies. The affected users and roles receive the permissions that are permitted by all of the relevant policies. For more information, see <http://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html Using Resource-Based Policies for AWS Secrets Manager> . For the complete description of the AWS policy syntax and grammar, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html IAM JSON Policy Reference> in the /IAM User Guide/ .
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * secretsmanager:PutResourcePolicy
--
--
--
-- __Related operations__
--
--     * To retrieve the resource policy attached to a secret, use 'GetResourcePolicy' .
--
--     * To delete the resource-based policy attached to a secret, use 'DeleteResourcePolicy' .
--
--     * To list all of the currently available secrets, use 'ListSecrets' .
module Network.AWS.SecretsManager.PutResourcePolicy
  ( -- * Creating a Request
    putResourcePolicy,
    PutResourcePolicy,

    -- * Request Lenses
    prpBlockPublicPolicy,
    prpSecretId,
    prpResourcePolicy,

    -- * Destructuring the Response
    putResourcePolicyResponse,
    PutResourcePolicyResponse,

    -- * Response Lenses
    prprrsARN,
    prprrsName,
    prprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'putResourcePolicy' smart constructor.
data PutResourcePolicy = PutResourcePolicy'
  { _prpBlockPublicPolicy ::
      !(Maybe Bool),
    _prpSecretId :: !Text,
    _prpResourcePolicy :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutResourcePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prpBlockPublicPolicy' - (Optional) If you set the parameter, @BlockPublicPolicy@ to true, then you block resource-based policies that allow broad access to the secret.
--
-- * 'prpSecretId' - Specifies the secret that you want to attach the resource-based policy. You can specify either the ARN or the friendly name of the secret.
--
-- * 'prpResourcePolicy' - A JSON-formatted string constructed according to the grammar and syntax for an AWS resource-based policy. The policy in the string identifies who can access or manage this secret and its versions. For information on how to format a JSON parameter for the various command line tool environments, see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json Using JSON for Parameters> in the /AWS CLI User Guide/ .
putResourcePolicy ::
  -- | 'prpSecretId'
  Text ->
  -- | 'prpResourcePolicy'
  Text ->
  PutResourcePolicy
putResourcePolicy pSecretId_ pResourcePolicy_ =
  PutResourcePolicy'
    { _prpBlockPublicPolicy = Nothing,
      _prpSecretId = pSecretId_,
      _prpResourcePolicy = pResourcePolicy_
    }

-- | (Optional) If you set the parameter, @BlockPublicPolicy@ to true, then you block resource-based policies that allow broad access to the secret.
prpBlockPublicPolicy :: Lens' PutResourcePolicy (Maybe Bool)
prpBlockPublicPolicy = lens _prpBlockPublicPolicy (\s a -> s {_prpBlockPublicPolicy = a})

-- | Specifies the secret that you want to attach the resource-based policy. You can specify either the ARN or the friendly name of the secret.
prpSecretId :: Lens' PutResourcePolicy Text
prpSecretId = lens _prpSecretId (\s a -> s {_prpSecretId = a})

-- | A JSON-formatted string constructed according to the grammar and syntax for an AWS resource-based policy. The policy in the string identifies who can access or manage this secret and its versions. For information on how to format a JSON parameter for the various command line tool environments, see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json Using JSON for Parameters> in the /AWS CLI User Guide/ .
prpResourcePolicy :: Lens' PutResourcePolicy Text
prpResourcePolicy = lens _prpResourcePolicy (\s a -> s {_prpResourcePolicy = a})

instance AWSRequest PutResourcePolicy where
  type Rs PutResourcePolicy = PutResourcePolicyResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          PutResourcePolicyResponse'
            <$> (x .?> "ARN")
            <*> (x .?> "Name")
            <*> (pure (fromEnum s))
      )

instance Hashable PutResourcePolicy

instance NFData PutResourcePolicy

instance ToHeaders PutResourcePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("secretsmanager.PutResourcePolicy" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutResourcePolicy where
  toJSON PutResourcePolicy' {..} =
    object
      ( catMaybes
          [ ("BlockPublicPolicy" .=) <$> _prpBlockPublicPolicy,
            Just ("SecretId" .= _prpSecretId),
            Just ("ResourcePolicy" .= _prpResourcePolicy)
          ]
      )

instance ToPath PutResourcePolicy where
  toPath = const "/"

instance ToQuery PutResourcePolicy where
  toQuery = const mempty

-- | /See:/ 'putResourcePolicyResponse' smart constructor.
data PutResourcePolicyResponse = PutResourcePolicyResponse'
  { _prprrsARN ::
      !(Maybe Text),
    _prprrsName ::
      !(Maybe Text),
    _prprrsResponseStatus ::
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

-- | Creates a value of 'PutResourcePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prprrsARN' - The ARN of the secret retrieved by the resource-based policy.
--
-- * 'prprrsName' - The friendly name of the secret retrieved by the resource-based policy.
--
-- * 'prprrsResponseStatus' - -- | The response status code.
putResourcePolicyResponse ::
  -- | 'prprrsResponseStatus'
  Int ->
  PutResourcePolicyResponse
putResourcePolicyResponse pResponseStatus_ =
  PutResourcePolicyResponse'
    { _prprrsARN = Nothing,
      _prprrsName = Nothing,
      _prprrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the secret retrieved by the resource-based policy.
prprrsARN :: Lens' PutResourcePolicyResponse (Maybe Text)
prprrsARN = lens _prprrsARN (\s a -> s {_prprrsARN = a})

-- | The friendly name of the secret retrieved by the resource-based policy.
prprrsName :: Lens' PutResourcePolicyResponse (Maybe Text)
prprrsName = lens _prprrsName (\s a -> s {_prprrsName = a})

-- | -- | The response status code.
prprrsResponseStatus :: Lens' PutResourcePolicyResponse Int
prprrsResponseStatus = lens _prprrsResponseStatus (\s a -> s {_prprrsResponseStatus = a})

instance NFData PutResourcePolicyResponse
