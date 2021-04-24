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
-- Module      : Network.AWS.ECR.GetLifecyclePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the lifecycle policy for the specified repository.
module Network.AWS.ECR.GetLifecyclePolicy
  ( -- * Creating a Request
    getLifecyclePolicy,
    GetLifecyclePolicy,

    -- * Request Lenses
    glpRegistryId,
    glpRepositoryName,

    -- * Destructuring the Response
    getLifecyclePolicyResponse,
    GetLifecyclePolicyResponse,

    -- * Response Lenses
    glprrsRegistryId,
    glprrsRepositoryName,
    glprrsLifecyclePolicyText,
    glprrsLastEvaluatedAt,
    glprrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLifecyclePolicy' smart constructor.
data GetLifecyclePolicy = GetLifecyclePolicy'
  { _glpRegistryId ::
      !(Maybe Text),
    _glpRepositoryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetLifecyclePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glpRegistryId' - The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
--
-- * 'glpRepositoryName' - The name of the repository.
getLifecyclePolicy ::
  -- | 'glpRepositoryName'
  Text ->
  GetLifecyclePolicy
getLifecyclePolicy pRepositoryName_ =
  GetLifecyclePolicy'
    { _glpRegistryId = Nothing,
      _glpRepositoryName = pRepositoryName_
    }

-- | The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
glpRegistryId :: Lens' GetLifecyclePolicy (Maybe Text)
glpRegistryId = lens _glpRegistryId (\s a -> s {_glpRegistryId = a})

-- | The name of the repository.
glpRepositoryName :: Lens' GetLifecyclePolicy Text
glpRepositoryName = lens _glpRepositoryName (\s a -> s {_glpRepositoryName = a})

instance AWSRequest GetLifecyclePolicy where
  type
    Rs GetLifecyclePolicy =
      GetLifecyclePolicyResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          GetLifecyclePolicyResponse'
            <$> (x .?> "registryId")
            <*> (x .?> "repositoryName")
            <*> (x .?> "lifecyclePolicyText")
            <*> (x .?> "lastEvaluatedAt")
            <*> (pure (fromEnum s))
      )

instance Hashable GetLifecyclePolicy

instance NFData GetLifecyclePolicy

instance ToHeaders GetLifecyclePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.GetLifecyclePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetLifecyclePolicy where
  toJSON GetLifecyclePolicy' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _glpRegistryId,
            Just ("repositoryName" .= _glpRepositoryName)
          ]
      )

instance ToPath GetLifecyclePolicy where
  toPath = const "/"

instance ToQuery GetLifecyclePolicy where
  toQuery = const mempty

-- | /See:/ 'getLifecyclePolicyResponse' smart constructor.
data GetLifecyclePolicyResponse = GetLifecyclePolicyResponse'
  { _glprrsRegistryId ::
      !(Maybe Text),
    _glprrsRepositoryName ::
      !(Maybe Text),
    _glprrsLifecyclePolicyText ::
      !(Maybe Text),
    _glprrsLastEvaluatedAt ::
      !(Maybe POSIX),
    _glprrsResponseStatus ::
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

-- | Creates a value of 'GetLifecyclePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glprrsRegistryId' - The registry ID associated with the request.
--
-- * 'glprrsRepositoryName' - The repository name associated with the request.
--
-- * 'glprrsLifecyclePolicyText' - The JSON lifecycle policy text.
--
-- * 'glprrsLastEvaluatedAt' - The time stamp of the last time that the lifecycle policy was run.
--
-- * 'glprrsResponseStatus' - -- | The response status code.
getLifecyclePolicyResponse ::
  -- | 'glprrsResponseStatus'
  Int ->
  GetLifecyclePolicyResponse
getLifecyclePolicyResponse pResponseStatus_ =
  GetLifecyclePolicyResponse'
    { _glprrsRegistryId =
        Nothing,
      _glprrsRepositoryName = Nothing,
      _glprrsLifecyclePolicyText = Nothing,
      _glprrsLastEvaluatedAt = Nothing,
      _glprrsResponseStatus = pResponseStatus_
    }

-- | The registry ID associated with the request.
glprrsRegistryId :: Lens' GetLifecyclePolicyResponse (Maybe Text)
glprrsRegistryId = lens _glprrsRegistryId (\s a -> s {_glprrsRegistryId = a})

-- | The repository name associated with the request.
glprrsRepositoryName :: Lens' GetLifecyclePolicyResponse (Maybe Text)
glprrsRepositoryName = lens _glprrsRepositoryName (\s a -> s {_glprrsRepositoryName = a})

-- | The JSON lifecycle policy text.
glprrsLifecyclePolicyText :: Lens' GetLifecyclePolicyResponse (Maybe Text)
glprrsLifecyclePolicyText = lens _glprrsLifecyclePolicyText (\s a -> s {_glprrsLifecyclePolicyText = a})

-- | The time stamp of the last time that the lifecycle policy was run.
glprrsLastEvaluatedAt :: Lens' GetLifecyclePolicyResponse (Maybe UTCTime)
glprrsLastEvaluatedAt = lens _glprrsLastEvaluatedAt (\s a -> s {_glprrsLastEvaluatedAt = a}) . mapping _Time

-- | -- | The response status code.
glprrsResponseStatus :: Lens' GetLifecyclePolicyResponse Int
glprrsResponseStatus = lens _glprrsResponseStatus (\s a -> s {_glprrsResponseStatus = a})

instance NFData GetLifecyclePolicyResponse
