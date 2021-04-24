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
-- Module      : Network.AWS.ECR.SetRepositoryPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a repository policy to the specified repository to control access permissions. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html Amazon ECR Repository Policies> in the /Amazon Elastic Container Registry User Guide/ .
module Network.AWS.ECR.SetRepositoryPolicy
  ( -- * Creating a Request
    setRepositoryPolicy,
    SetRepositoryPolicy,

    -- * Request Lenses
    srpRegistryId,
    srpForce,
    srpRepositoryName,
    srpPolicyText,

    -- * Destructuring the Response
    setRepositoryPolicyResponse,
    SetRepositoryPolicyResponse,

    -- * Response Lenses
    srprrsRegistryId,
    srprrsPolicyText,
    srprrsRepositoryName,
    srprrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setRepositoryPolicy' smart constructor.
data SetRepositoryPolicy = SetRepositoryPolicy'
  { _srpRegistryId ::
      !(Maybe Text),
    _srpForce :: !(Maybe Bool),
    _srpRepositoryName :: !Text,
    _srpPolicyText :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetRepositoryPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srpRegistryId' - The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
--
-- * 'srpForce' - If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the 'SetRepositoryPolicy' operation. This is intended to prevent accidental repository lock outs.
--
-- * 'srpRepositoryName' - The name of the repository to receive the policy.
--
-- * 'srpPolicyText' - The JSON repository policy text to apply to the repository. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html Amazon ECR Repository Policies> in the /Amazon Elastic Container Registry User Guide/ .
setRepositoryPolicy ::
  -- | 'srpRepositoryName'
  Text ->
  -- | 'srpPolicyText'
  Text ->
  SetRepositoryPolicy
setRepositoryPolicy pRepositoryName_ pPolicyText_ =
  SetRepositoryPolicy'
    { _srpRegistryId = Nothing,
      _srpForce = Nothing,
      _srpRepositoryName = pRepositoryName_,
      _srpPolicyText = pPolicyText_
    }

-- | The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
srpRegistryId :: Lens' SetRepositoryPolicy (Maybe Text)
srpRegistryId = lens _srpRegistryId (\s a -> s {_srpRegistryId = a})

-- | If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the 'SetRepositoryPolicy' operation. This is intended to prevent accidental repository lock outs.
srpForce :: Lens' SetRepositoryPolicy (Maybe Bool)
srpForce = lens _srpForce (\s a -> s {_srpForce = a})

-- | The name of the repository to receive the policy.
srpRepositoryName :: Lens' SetRepositoryPolicy Text
srpRepositoryName = lens _srpRepositoryName (\s a -> s {_srpRepositoryName = a})

-- | The JSON repository policy text to apply to the repository. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html Amazon ECR Repository Policies> in the /Amazon Elastic Container Registry User Guide/ .
srpPolicyText :: Lens' SetRepositoryPolicy Text
srpPolicyText = lens _srpPolicyText (\s a -> s {_srpPolicyText = a})

instance AWSRequest SetRepositoryPolicy where
  type
    Rs SetRepositoryPolicy =
      SetRepositoryPolicyResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          SetRepositoryPolicyResponse'
            <$> (x .?> "registryId")
            <*> (x .?> "policyText")
            <*> (x .?> "repositoryName")
            <*> (pure (fromEnum s))
      )

instance Hashable SetRepositoryPolicy

instance NFData SetRepositoryPolicy

instance ToHeaders SetRepositoryPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.SetRepositoryPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetRepositoryPolicy where
  toJSON SetRepositoryPolicy' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _srpRegistryId,
            ("force" .=) <$> _srpForce,
            Just ("repositoryName" .= _srpRepositoryName),
            Just ("policyText" .= _srpPolicyText)
          ]
      )

instance ToPath SetRepositoryPolicy where
  toPath = const "/"

instance ToQuery SetRepositoryPolicy where
  toQuery = const mempty

-- | /See:/ 'setRepositoryPolicyResponse' smart constructor.
data SetRepositoryPolicyResponse = SetRepositoryPolicyResponse'
  { _srprrsRegistryId ::
      !(Maybe Text),
    _srprrsPolicyText ::
      !(Maybe Text),
    _srprrsRepositoryName ::
      !(Maybe Text),
    _srprrsResponseStatus ::
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

-- | Creates a value of 'SetRepositoryPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srprrsRegistryId' - The registry ID associated with the request.
--
-- * 'srprrsPolicyText' - The JSON repository policy text applied to the repository.
--
-- * 'srprrsRepositoryName' - The repository name associated with the request.
--
-- * 'srprrsResponseStatus' - -- | The response status code.
setRepositoryPolicyResponse ::
  -- | 'srprrsResponseStatus'
  Int ->
  SetRepositoryPolicyResponse
setRepositoryPolicyResponse pResponseStatus_ =
  SetRepositoryPolicyResponse'
    { _srprrsRegistryId =
        Nothing,
      _srprrsPolicyText = Nothing,
      _srprrsRepositoryName = Nothing,
      _srprrsResponseStatus = pResponseStatus_
    }

-- | The registry ID associated with the request.
srprrsRegistryId :: Lens' SetRepositoryPolicyResponse (Maybe Text)
srprrsRegistryId = lens _srprrsRegistryId (\s a -> s {_srprrsRegistryId = a})

-- | The JSON repository policy text applied to the repository.
srprrsPolicyText :: Lens' SetRepositoryPolicyResponse (Maybe Text)
srprrsPolicyText = lens _srprrsPolicyText (\s a -> s {_srprrsPolicyText = a})

-- | The repository name associated with the request.
srprrsRepositoryName :: Lens' SetRepositoryPolicyResponse (Maybe Text)
srprrsRepositoryName = lens _srprrsRepositoryName (\s a -> s {_srprrsRepositoryName = a})

-- | -- | The response status code.
srprrsResponseStatus :: Lens' SetRepositoryPolicyResponse Int
srprrsResponseStatus = lens _srprrsResponseStatus (\s a -> s {_srprrsResponseStatus = a})

instance NFData SetRepositoryPolicyResponse
