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
-- Module      : Network.AWS.ECR.DeleteLifecyclePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the lifecycle policy associated with the specified repository.
module Network.AWS.ECR.DeleteLifecyclePolicy
  ( -- * Creating a Request
    deleteLifecyclePolicy,
    DeleteLifecyclePolicy,

    -- * Request Lenses
    dlpRegistryId,
    dlpRepositoryName,

    -- * Destructuring the Response
    deleteLifecyclePolicyResponse,
    DeleteLifecyclePolicyResponse,

    -- * Response Lenses
    dlprrsRegistryId,
    dlprrsRepositoryName,
    dlprrsLifecyclePolicyText,
    dlprrsLastEvaluatedAt,
    dlprrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteLifecyclePolicy' smart constructor.
data DeleteLifecyclePolicy = DeleteLifecyclePolicy'
  { _dlpRegistryId ::
      !(Maybe Text),
    _dlpRepositoryName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteLifecyclePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlpRegistryId' - The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
--
-- * 'dlpRepositoryName' - The name of the repository.
deleteLifecyclePolicy ::
  -- | 'dlpRepositoryName'
  Text ->
  DeleteLifecyclePolicy
deleteLifecyclePolicy pRepositoryName_ =
  DeleteLifecyclePolicy'
    { _dlpRegistryId = Nothing,
      _dlpRepositoryName = pRepositoryName_
    }

-- | The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
dlpRegistryId :: Lens' DeleteLifecyclePolicy (Maybe Text)
dlpRegistryId = lens _dlpRegistryId (\s a -> s {_dlpRegistryId = a})

-- | The name of the repository.
dlpRepositoryName :: Lens' DeleteLifecyclePolicy Text
dlpRepositoryName = lens _dlpRepositoryName (\s a -> s {_dlpRepositoryName = a})

instance AWSRequest DeleteLifecyclePolicy where
  type
    Rs DeleteLifecyclePolicy =
      DeleteLifecyclePolicyResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          DeleteLifecyclePolicyResponse'
            <$> (x .?> "registryId")
            <*> (x .?> "repositoryName")
            <*> (x .?> "lifecyclePolicyText")
            <*> (x .?> "lastEvaluatedAt")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteLifecyclePolicy

instance NFData DeleteLifecyclePolicy

instance ToHeaders DeleteLifecyclePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.DeleteLifecyclePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteLifecyclePolicy where
  toJSON DeleteLifecyclePolicy' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _dlpRegistryId,
            Just ("repositoryName" .= _dlpRepositoryName)
          ]
      )

instance ToPath DeleteLifecyclePolicy where
  toPath = const "/"

instance ToQuery DeleteLifecyclePolicy where
  toQuery = const mempty

-- | /See:/ 'deleteLifecyclePolicyResponse' smart constructor.
data DeleteLifecyclePolicyResponse = DeleteLifecyclePolicyResponse'
  { _dlprrsRegistryId ::
      !( Maybe
           Text
       ),
    _dlprrsRepositoryName ::
      !( Maybe
           Text
       ),
    _dlprrsLifecyclePolicyText ::
      !( Maybe
           Text
       ),
    _dlprrsLastEvaluatedAt ::
      !( Maybe
           POSIX
       ),
    _dlprrsResponseStatus ::
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

-- | Creates a value of 'DeleteLifecyclePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlprrsRegistryId' - The registry ID associated with the request.
--
-- * 'dlprrsRepositoryName' - The repository name associated with the request.
--
-- * 'dlprrsLifecyclePolicyText' - The JSON lifecycle policy text.
--
-- * 'dlprrsLastEvaluatedAt' - The time stamp of the last time that the lifecycle policy was run.
--
-- * 'dlprrsResponseStatus' - -- | The response status code.
deleteLifecyclePolicyResponse ::
  -- | 'dlprrsResponseStatus'
  Int ->
  DeleteLifecyclePolicyResponse
deleteLifecyclePolicyResponse pResponseStatus_ =
  DeleteLifecyclePolicyResponse'
    { _dlprrsRegistryId =
        Nothing,
      _dlprrsRepositoryName = Nothing,
      _dlprrsLifecyclePolicyText = Nothing,
      _dlprrsLastEvaluatedAt = Nothing,
      _dlprrsResponseStatus = pResponseStatus_
    }

-- | The registry ID associated with the request.
dlprrsRegistryId :: Lens' DeleteLifecyclePolicyResponse (Maybe Text)
dlprrsRegistryId = lens _dlprrsRegistryId (\s a -> s {_dlprrsRegistryId = a})

-- | The repository name associated with the request.
dlprrsRepositoryName :: Lens' DeleteLifecyclePolicyResponse (Maybe Text)
dlprrsRepositoryName = lens _dlprrsRepositoryName (\s a -> s {_dlprrsRepositoryName = a})

-- | The JSON lifecycle policy text.
dlprrsLifecyclePolicyText :: Lens' DeleteLifecyclePolicyResponse (Maybe Text)
dlprrsLifecyclePolicyText = lens _dlprrsLifecyclePolicyText (\s a -> s {_dlprrsLifecyclePolicyText = a})

-- | The time stamp of the last time that the lifecycle policy was run.
dlprrsLastEvaluatedAt :: Lens' DeleteLifecyclePolicyResponse (Maybe UTCTime)
dlprrsLastEvaluatedAt = lens _dlprrsLastEvaluatedAt (\s a -> s {_dlprrsLastEvaluatedAt = a}) . mapping _Time

-- | -- | The response status code.
dlprrsResponseStatus :: Lens' DeleteLifecyclePolicyResponse Int
dlprrsResponseStatus = lens _dlprrsResponseStatus (\s a -> s {_dlprrsResponseStatus = a})

instance NFData DeleteLifecyclePolicyResponse
