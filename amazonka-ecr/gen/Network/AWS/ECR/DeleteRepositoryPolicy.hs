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
-- Module      : Network.AWS.ECR.DeleteRepositoryPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the repository policy associated with the specified repository.
module Network.AWS.ECR.DeleteRepositoryPolicy
  ( -- * Creating a Request
    deleteRepositoryPolicy,
    DeleteRepositoryPolicy,

    -- * Request Lenses
    drpRegistryId,
    drpRepositoryName,

    -- * Destructuring the Response
    deleteRepositoryPolicyResponse,
    DeleteRepositoryPolicyResponse,

    -- * Response Lenses
    drprrsRegistryId,
    drprrsPolicyText,
    drprrsRepositoryName,
    drprrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRepositoryPolicy' smart constructor.
data DeleteRepositoryPolicy = DeleteRepositoryPolicy'
  { _drpRegistryId ::
      !(Maybe Text),
    _drpRepositoryName ::
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

-- | Creates a value of 'DeleteRepositoryPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drpRegistryId' - The AWS account ID associated with the registry that contains the repository policy to delete. If you do not specify a registry, the default registry is assumed.
--
-- * 'drpRepositoryName' - The name of the repository that is associated with the repository policy to delete.
deleteRepositoryPolicy ::
  -- | 'drpRepositoryName'
  Text ->
  DeleteRepositoryPolicy
deleteRepositoryPolicy pRepositoryName_ =
  DeleteRepositoryPolicy'
    { _drpRegistryId = Nothing,
      _drpRepositoryName = pRepositoryName_
    }

-- | The AWS account ID associated with the registry that contains the repository policy to delete. If you do not specify a registry, the default registry is assumed.
drpRegistryId :: Lens' DeleteRepositoryPolicy (Maybe Text)
drpRegistryId = lens _drpRegistryId (\s a -> s {_drpRegistryId = a})

-- | The name of the repository that is associated with the repository policy to delete.
drpRepositoryName :: Lens' DeleteRepositoryPolicy Text
drpRepositoryName = lens _drpRepositoryName (\s a -> s {_drpRepositoryName = a})

instance AWSRequest DeleteRepositoryPolicy where
  type
    Rs DeleteRepositoryPolicy =
      DeleteRepositoryPolicyResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          DeleteRepositoryPolicyResponse'
            <$> (x .?> "registryId")
            <*> (x .?> "policyText")
            <*> (x .?> "repositoryName")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteRepositoryPolicy

instance NFData DeleteRepositoryPolicy

instance ToHeaders DeleteRepositoryPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.DeleteRepositoryPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteRepositoryPolicy where
  toJSON DeleteRepositoryPolicy' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _drpRegistryId,
            Just ("repositoryName" .= _drpRepositoryName)
          ]
      )

instance ToPath DeleteRepositoryPolicy where
  toPath = const "/"

instance ToQuery DeleteRepositoryPolicy where
  toQuery = const mempty

-- | /See:/ 'deleteRepositoryPolicyResponse' smart constructor.
data DeleteRepositoryPolicyResponse = DeleteRepositoryPolicyResponse'
  { _drprrsRegistryId ::
      !( Maybe
           Text
       ),
    _drprrsPolicyText ::
      !( Maybe
           Text
       ),
    _drprrsRepositoryName ::
      !( Maybe
           Text
       ),
    _drprrsResponseStatus ::
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

-- | Creates a value of 'DeleteRepositoryPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drprrsRegistryId' - The registry ID associated with the request.
--
-- * 'drprrsPolicyText' - The JSON repository policy that was deleted from the repository.
--
-- * 'drprrsRepositoryName' - The repository name associated with the request.
--
-- * 'drprrsResponseStatus' - -- | The response status code.
deleteRepositoryPolicyResponse ::
  -- | 'drprrsResponseStatus'
  Int ->
  DeleteRepositoryPolicyResponse
deleteRepositoryPolicyResponse pResponseStatus_ =
  DeleteRepositoryPolicyResponse'
    { _drprrsRegistryId =
        Nothing,
      _drprrsPolicyText = Nothing,
      _drprrsRepositoryName = Nothing,
      _drprrsResponseStatus = pResponseStatus_
    }

-- | The registry ID associated with the request.
drprrsRegistryId :: Lens' DeleteRepositoryPolicyResponse (Maybe Text)
drprrsRegistryId = lens _drprrsRegistryId (\s a -> s {_drprrsRegistryId = a})

-- | The JSON repository policy that was deleted from the repository.
drprrsPolicyText :: Lens' DeleteRepositoryPolicyResponse (Maybe Text)
drprrsPolicyText = lens _drprrsPolicyText (\s a -> s {_drprrsPolicyText = a})

-- | The repository name associated with the request.
drprrsRepositoryName :: Lens' DeleteRepositoryPolicyResponse (Maybe Text)
drprrsRepositoryName = lens _drprrsRepositoryName (\s a -> s {_drprrsRepositoryName = a})

-- | -- | The response status code.
drprrsResponseStatus :: Lens' DeleteRepositoryPolicyResponse Int
drprrsResponseStatus = lens _drprrsResponseStatus (\s a -> s {_drprrsResponseStatus = a})

instance NFData DeleteRepositoryPolicyResponse
