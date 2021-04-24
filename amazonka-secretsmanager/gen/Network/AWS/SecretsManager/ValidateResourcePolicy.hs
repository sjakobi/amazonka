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
-- Module      : Network.AWS.SecretsManager.ValidateResourcePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates that the resource policy does not grant a wide range of IAM principals access to your secret. The JSON request string input and response output displays formatted code with white space and line breaks for better readability. Submit your input as a single line JSON string. A resource-based policy is optional for secrets.
--
--
-- The API performs three checks when validating the secret:
--
--     * Sends a call to <https://aws.amazon.com/blogs/security/protect-sensitive-data-in-the-cloud-with-automated-reasoning-zelkova/ Zelkova> , an automated reasoning engine, to ensure your Resource Policy does not allow broad access to your secret.
--
--     * Checks for correct syntax in a policy.
--
--     * Verifies the policy does not lock out a caller.
--
--
--
-- __Minimum Permissions__
--
-- You must have the permissions required to access the following APIs:
--
--     * @secretsmanager:PutResourcePolicy@
--
--     * @secretsmanager:ValidateResourcePolicy@
module Network.AWS.SecretsManager.ValidateResourcePolicy
  ( -- * Creating a Request
    validateResourcePolicy,
    ValidateResourcePolicy,

    -- * Request Lenses
    vrpSecretId,
    vrpResourcePolicy,

    -- * Destructuring the Response
    validateResourcePolicyResponse,
    ValidateResourcePolicyResponse,

    -- * Response Lenses
    vrprrsPolicyValidationPassed,
    vrprrsValidationErrors,
    vrprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'validateResourcePolicy' smart constructor.
data ValidateResourcePolicy = ValidateResourcePolicy'
  { _vrpSecretId ::
      !(Maybe Text),
    _vrpResourcePolicy ::
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

-- | Creates a value of 'ValidateResourcePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrpSecretId' - (Optional) The identifier of the secret with the resource-based policy you want to validate. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
--
-- * 'vrpResourcePolicy' - A JSON-formatted string constructed according to the grammar and syntax for an AWS resource-based policy. The policy in the string identifies who can access or manage this secret and its versions. For information on how to format a JSON parameter for the various command line tool environments, see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json Using JSON for Parameters> in the /AWS CLI User Guide/ .publi
validateResourcePolicy ::
  -- | 'vrpResourcePolicy'
  Text ->
  ValidateResourcePolicy
validateResourcePolicy pResourcePolicy_ =
  ValidateResourcePolicy'
    { _vrpSecretId = Nothing,
      _vrpResourcePolicy = pResourcePolicy_
    }

-- | (Optional) The identifier of the secret with the resource-based policy you want to validate. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
vrpSecretId :: Lens' ValidateResourcePolicy (Maybe Text)
vrpSecretId = lens _vrpSecretId (\s a -> s {_vrpSecretId = a})

-- | A JSON-formatted string constructed according to the grammar and syntax for an AWS resource-based policy. The policy in the string identifies who can access or manage this secret and its versions. For information on how to format a JSON parameter for the various command line tool environments, see <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json Using JSON for Parameters> in the /AWS CLI User Guide/ .publi
vrpResourcePolicy :: Lens' ValidateResourcePolicy Text
vrpResourcePolicy = lens _vrpResourcePolicy (\s a -> s {_vrpResourcePolicy = a})

instance AWSRequest ValidateResourcePolicy where
  type
    Rs ValidateResourcePolicy =
      ValidateResourcePolicyResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          ValidateResourcePolicyResponse'
            <$> (x .?> "PolicyValidationPassed")
            <*> (x .?> "ValidationErrors" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ValidateResourcePolicy

instance NFData ValidateResourcePolicy

instance ToHeaders ValidateResourcePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "secretsmanager.ValidateResourcePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ValidateResourcePolicy where
  toJSON ValidateResourcePolicy' {..} =
    object
      ( catMaybes
          [ ("SecretId" .=) <$> _vrpSecretId,
            Just ("ResourcePolicy" .= _vrpResourcePolicy)
          ]
      )

instance ToPath ValidateResourcePolicy where
  toPath = const "/"

instance ToQuery ValidateResourcePolicy where
  toQuery = const mempty

-- | /See:/ 'validateResourcePolicyResponse' smart constructor.
data ValidateResourcePolicyResponse = ValidateResourcePolicyResponse'
  { _vrprrsPolicyValidationPassed ::
      !( Maybe
           Bool
       ),
    _vrprrsValidationErrors ::
      !( Maybe
           [ValidationErrorsEntry]
       ),
    _vrprrsResponseStatus ::
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

-- | Creates a value of 'ValidateResourcePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrprrsPolicyValidationPassed' - Returns a message stating that your Reource Policy passed validation.
--
-- * 'vrprrsValidationErrors' - Returns an error message if your policy doesn't pass validatation.
--
-- * 'vrprrsResponseStatus' - -- | The response status code.
validateResourcePolicyResponse ::
  -- | 'vrprrsResponseStatus'
  Int ->
  ValidateResourcePolicyResponse
validateResourcePolicyResponse pResponseStatus_ =
  ValidateResourcePolicyResponse'
    { _vrprrsPolicyValidationPassed =
        Nothing,
      _vrprrsValidationErrors = Nothing,
      _vrprrsResponseStatus = pResponseStatus_
    }

-- | Returns a message stating that your Reource Policy passed validation.
vrprrsPolicyValidationPassed :: Lens' ValidateResourcePolicyResponse (Maybe Bool)
vrprrsPolicyValidationPassed = lens _vrprrsPolicyValidationPassed (\s a -> s {_vrprrsPolicyValidationPassed = a})

-- | Returns an error message if your policy doesn't pass validatation.
vrprrsValidationErrors :: Lens' ValidateResourcePolicyResponse [ValidationErrorsEntry]
vrprrsValidationErrors = lens _vrprrsValidationErrors (\s a -> s {_vrprrsValidationErrors = a}) . _Default . _Coerce

-- | -- | The response status code.
vrprrsResponseStatus :: Lens' ValidateResourcePolicyResponse Int
vrprrsResponseStatus = lens _vrprrsResponseStatus (\s a -> s {_vrprrsResponseStatus = a})

instance NFData ValidateResourcePolicyResponse
