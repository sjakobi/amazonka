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
-- Module      : Network.AWS.ECR.PutLifecyclePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the lifecycle policy for the specified repository. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html Lifecycle Policy Template> .
module Network.AWS.ECR.PutLifecyclePolicy
  ( -- * Creating a Request
    putLifecyclePolicy,
    PutLifecyclePolicy,

    -- * Request Lenses
    plpRegistryId,
    plpRepositoryName,
    plpLifecyclePolicyText,

    -- * Destructuring the Response
    putLifecyclePolicyResponse,
    PutLifecyclePolicyResponse,

    -- * Response Lenses
    plprrsRegistryId,
    plprrsRepositoryName,
    plprrsLifecyclePolicyText,
    plprrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putLifecyclePolicy' smart constructor.
data PutLifecyclePolicy = PutLifecyclePolicy'
  { _plpRegistryId ::
      !(Maybe Text),
    _plpRepositoryName :: !Text,
    _plpLifecyclePolicyText :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutLifecyclePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plpRegistryId' - The AWS account ID associated with the registry that contains the repository. If you do  not specify a registry, the default registry is assumed.
--
-- * 'plpRepositoryName' - The name of the repository to receive the policy.
--
-- * 'plpLifecyclePolicyText' - The JSON repository policy text to apply to the repository.
putLifecyclePolicy ::
  -- | 'plpRepositoryName'
  Text ->
  -- | 'plpLifecyclePolicyText'
  Text ->
  PutLifecyclePolicy
putLifecyclePolicy
  pRepositoryName_
  pLifecyclePolicyText_ =
    PutLifecyclePolicy'
      { _plpRegistryId = Nothing,
        _plpRepositoryName = pRepositoryName_,
        _plpLifecyclePolicyText = pLifecyclePolicyText_
      }

-- | The AWS account ID associated with the registry that contains the repository. If you do  not specify a registry, the default registry is assumed.
plpRegistryId :: Lens' PutLifecyclePolicy (Maybe Text)
plpRegistryId = lens _plpRegistryId (\s a -> s {_plpRegistryId = a})

-- | The name of the repository to receive the policy.
plpRepositoryName :: Lens' PutLifecyclePolicy Text
plpRepositoryName = lens _plpRepositoryName (\s a -> s {_plpRepositoryName = a})

-- | The JSON repository policy text to apply to the repository.
plpLifecyclePolicyText :: Lens' PutLifecyclePolicy Text
plpLifecyclePolicyText = lens _plpLifecyclePolicyText (\s a -> s {_plpLifecyclePolicyText = a})

instance AWSRequest PutLifecyclePolicy where
  type
    Rs PutLifecyclePolicy =
      PutLifecyclePolicyResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          PutLifecyclePolicyResponse'
            <$> (x .?> "registryId")
            <*> (x .?> "repositoryName")
            <*> (x .?> "lifecyclePolicyText")
            <*> (pure (fromEnum s))
      )

instance Hashable PutLifecyclePolicy

instance NFData PutLifecyclePolicy

instance ToHeaders PutLifecyclePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.PutLifecyclePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutLifecyclePolicy where
  toJSON PutLifecyclePolicy' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _plpRegistryId,
            Just ("repositoryName" .= _plpRepositoryName),
            Just
              ("lifecyclePolicyText" .= _plpLifecyclePolicyText)
          ]
      )

instance ToPath PutLifecyclePolicy where
  toPath = const "/"

instance ToQuery PutLifecyclePolicy where
  toQuery = const mempty

-- | /See:/ 'putLifecyclePolicyResponse' smart constructor.
data PutLifecyclePolicyResponse = PutLifecyclePolicyResponse'
  { _plprrsRegistryId ::
      !(Maybe Text),
    _plprrsRepositoryName ::
      !(Maybe Text),
    _plprrsLifecyclePolicyText ::
      !(Maybe Text),
    _plprrsResponseStatus ::
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

-- | Creates a value of 'PutLifecyclePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plprrsRegistryId' - The registry ID associated with the request.
--
-- * 'plprrsRepositoryName' - The repository name associated with the request.
--
-- * 'plprrsLifecyclePolicyText' - The JSON repository policy text.
--
-- * 'plprrsResponseStatus' - -- | The response status code.
putLifecyclePolicyResponse ::
  -- | 'plprrsResponseStatus'
  Int ->
  PutLifecyclePolicyResponse
putLifecyclePolicyResponse pResponseStatus_ =
  PutLifecyclePolicyResponse'
    { _plprrsRegistryId =
        Nothing,
      _plprrsRepositoryName = Nothing,
      _plprrsLifecyclePolicyText = Nothing,
      _plprrsResponseStatus = pResponseStatus_
    }

-- | The registry ID associated with the request.
plprrsRegistryId :: Lens' PutLifecyclePolicyResponse (Maybe Text)
plprrsRegistryId = lens _plprrsRegistryId (\s a -> s {_plprrsRegistryId = a})

-- | The repository name associated with the request.
plprrsRepositoryName :: Lens' PutLifecyclePolicyResponse (Maybe Text)
plprrsRepositoryName = lens _plprrsRepositoryName (\s a -> s {_plprrsRepositoryName = a})

-- | The JSON repository policy text.
plprrsLifecyclePolicyText :: Lens' PutLifecyclePolicyResponse (Maybe Text)
plprrsLifecyclePolicyText = lens _plprrsLifecyclePolicyText (\s a -> s {_plprrsLifecyclePolicyText = a})

-- | -- | The response status code.
plprrsResponseStatus :: Lens' PutLifecyclePolicyResponse Int
plprrsResponseStatus = lens _plprrsResponseStatus (\s a -> s {_plprrsResponseStatus = a})

instance NFData PutLifecyclePolicyResponse
