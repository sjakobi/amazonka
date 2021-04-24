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
-- Module      : Network.AWS.ECR.StartLifecyclePolicyPreview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a preview of a lifecycle policy for the specified repository. This allows you to see the results before associating the lifecycle policy with the repository.
module Network.AWS.ECR.StartLifecyclePolicyPreview
  ( -- * Creating a Request
    startLifecyclePolicyPreview,
    StartLifecyclePolicyPreview,

    -- * Request Lenses
    slppRegistryId,
    slppLifecyclePolicyText,
    slppRepositoryName,

    -- * Destructuring the Response
    startLifecyclePolicyPreviewResponse,
    StartLifecyclePolicyPreviewResponse,

    -- * Response Lenses
    slpprrsStatus,
    slpprrsRegistryId,
    slpprrsRepositoryName,
    slpprrsLifecyclePolicyText,
    slpprrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startLifecyclePolicyPreview' smart constructor.
data StartLifecyclePolicyPreview = StartLifecyclePolicyPreview'
  { _slppRegistryId ::
      !(Maybe Text),
    _slppLifecyclePolicyText ::
      !(Maybe Text),
    _slppRepositoryName ::
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

-- | Creates a value of 'StartLifecyclePolicyPreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slppRegistryId' - The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
--
-- * 'slppLifecyclePolicyText' - The policy to be evaluated against. If you do not specify a policy, the current policy for the repository is used.
--
-- * 'slppRepositoryName' - The name of the repository to be evaluated.
startLifecyclePolicyPreview ::
  -- | 'slppRepositoryName'
  Text ->
  StartLifecyclePolicyPreview
startLifecyclePolicyPreview pRepositoryName_ =
  StartLifecyclePolicyPreview'
    { _slppRegistryId =
        Nothing,
      _slppLifecyclePolicyText = Nothing,
      _slppRepositoryName = pRepositoryName_
    }

-- | The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
slppRegistryId :: Lens' StartLifecyclePolicyPreview (Maybe Text)
slppRegistryId = lens _slppRegistryId (\s a -> s {_slppRegistryId = a})

-- | The policy to be evaluated against. If you do not specify a policy, the current policy for the repository is used.
slppLifecyclePolicyText :: Lens' StartLifecyclePolicyPreview (Maybe Text)
slppLifecyclePolicyText = lens _slppLifecyclePolicyText (\s a -> s {_slppLifecyclePolicyText = a})

-- | The name of the repository to be evaluated.
slppRepositoryName :: Lens' StartLifecyclePolicyPreview Text
slppRepositoryName = lens _slppRepositoryName (\s a -> s {_slppRepositoryName = a})

instance AWSRequest StartLifecyclePolicyPreview where
  type
    Rs StartLifecyclePolicyPreview =
      StartLifecyclePolicyPreviewResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          StartLifecyclePolicyPreviewResponse'
            <$> (x .?> "status")
            <*> (x .?> "registryId")
            <*> (x .?> "repositoryName")
            <*> (x .?> "lifecyclePolicyText")
            <*> (pure (fromEnum s))
      )

instance Hashable StartLifecyclePolicyPreview

instance NFData StartLifecyclePolicyPreview

instance ToHeaders StartLifecyclePolicyPreview where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.StartLifecyclePolicyPreview" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartLifecyclePolicyPreview where
  toJSON StartLifecyclePolicyPreview' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _slppRegistryId,
            ("lifecyclePolicyText" .=)
              <$> _slppLifecyclePolicyText,
            Just ("repositoryName" .= _slppRepositoryName)
          ]
      )

instance ToPath StartLifecyclePolicyPreview where
  toPath = const "/"

instance ToQuery StartLifecyclePolicyPreview where
  toQuery = const mempty

-- | /See:/ 'startLifecyclePolicyPreviewResponse' smart constructor.
data StartLifecyclePolicyPreviewResponse = StartLifecyclePolicyPreviewResponse'
  { _slpprrsStatus ::
      !( Maybe
           LifecyclePolicyPreviewStatus
       ),
    _slpprrsRegistryId ::
      !( Maybe
           Text
       ),
    _slpprrsRepositoryName ::
      !( Maybe
           Text
       ),
    _slpprrsLifecyclePolicyText ::
      !( Maybe
           Text
       ),
    _slpprrsResponseStatus ::
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

-- | Creates a value of 'StartLifecyclePolicyPreviewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slpprrsStatus' - The status of the lifecycle policy preview request.
--
-- * 'slpprrsRegistryId' - The registry ID associated with the request.
--
-- * 'slpprrsRepositoryName' - The repository name associated with the request.
--
-- * 'slpprrsLifecyclePolicyText' - The JSON repository policy text.
--
-- * 'slpprrsResponseStatus' - -- | The response status code.
startLifecyclePolicyPreviewResponse ::
  -- | 'slpprrsResponseStatus'
  Int ->
  StartLifecyclePolicyPreviewResponse
startLifecyclePolicyPreviewResponse pResponseStatus_ =
  StartLifecyclePolicyPreviewResponse'
    { _slpprrsStatus =
        Nothing,
      _slpprrsRegistryId = Nothing,
      _slpprrsRepositoryName = Nothing,
      _slpprrsLifecyclePolicyText = Nothing,
      _slpprrsResponseStatus =
        pResponseStatus_
    }

-- | The status of the lifecycle policy preview request.
slpprrsStatus :: Lens' StartLifecyclePolicyPreviewResponse (Maybe LifecyclePolicyPreviewStatus)
slpprrsStatus = lens _slpprrsStatus (\s a -> s {_slpprrsStatus = a})

-- | The registry ID associated with the request.
slpprrsRegistryId :: Lens' StartLifecyclePolicyPreviewResponse (Maybe Text)
slpprrsRegistryId = lens _slpprrsRegistryId (\s a -> s {_slpprrsRegistryId = a})

-- | The repository name associated with the request.
slpprrsRepositoryName :: Lens' StartLifecyclePolicyPreviewResponse (Maybe Text)
slpprrsRepositoryName = lens _slpprrsRepositoryName (\s a -> s {_slpprrsRepositoryName = a})

-- | The JSON repository policy text.
slpprrsLifecyclePolicyText :: Lens' StartLifecyclePolicyPreviewResponse (Maybe Text)
slpprrsLifecyclePolicyText = lens _slpprrsLifecyclePolicyText (\s a -> s {_slpprrsLifecyclePolicyText = a})

-- | -- | The response status code.
slpprrsResponseStatus :: Lens' StartLifecyclePolicyPreviewResponse Int
slpprrsResponseStatus = lens _slpprrsResponseStatus (\s a -> s {_slpprrsResponseStatus = a})

instance NFData StartLifecyclePolicyPreviewResponse
