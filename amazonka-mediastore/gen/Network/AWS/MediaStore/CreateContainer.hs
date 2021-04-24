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
-- Module      : Network.AWS.MediaStore.CreateContainer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.
module Network.AWS.MediaStore.CreateContainer
  ( -- * Creating a Request
    createContainer,
    CreateContainer,

    -- * Request Lenses
    ccTags,
    ccContainerName,

    -- * Destructuring the Response
    createContainerResponse,
    CreateContainerResponse,

    -- * Response Lenses
    ccrrsResponseStatus,
    ccrrsContainer,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaStore.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createContainer' smart constructor.
data CreateContainer = CreateContainer'
  { _ccTags ::
      !(Maybe (List1 Tag)),
    _ccContainerName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateContainer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccTags' - An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as "environment") and the tag value represents a specific value within that category (such as "test," "development," or "production"). You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see <https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html Tagging Resources in MediaStore> .
--
-- * 'ccContainerName' - The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named @movies@ in every region, as long as you don’t have an existing container with that name.
createContainer ::
  -- | 'ccContainerName'
  Text ->
  CreateContainer
createContainer pContainerName_ =
  CreateContainer'
    { _ccTags = Nothing,
      _ccContainerName = pContainerName_
    }

-- | An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as "environment") and the tag value represents a specific value within that category (such as "test," "development," or "production"). You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see <https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html Tagging Resources in MediaStore> .
ccTags :: Lens' CreateContainer (Maybe (NonEmpty Tag))
ccTags = lens _ccTags (\s a -> s {_ccTags = a}) . mapping _List1

-- | The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named @movies@ in every region, as long as you don’t have an existing container with that name.
ccContainerName :: Lens' CreateContainer Text
ccContainerName = lens _ccContainerName (\s a -> s {_ccContainerName = a})

instance AWSRequest CreateContainer where
  type Rs CreateContainer = CreateContainerResponse
  request = postJSON mediaStore
  response =
    receiveJSON
      ( \s h x ->
          CreateContainerResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "Container")
      )

instance Hashable CreateContainer

instance NFData CreateContainer

instance ToHeaders CreateContainer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MediaStore_20170901.CreateContainer" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateContainer where
  toJSON CreateContainer' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _ccTags,
            Just ("ContainerName" .= _ccContainerName)
          ]
      )

instance ToPath CreateContainer where
  toPath = const "/"

instance ToQuery CreateContainer where
  toQuery = const mempty

-- | /See:/ 'createContainerResponse' smart constructor.
data CreateContainerResponse = CreateContainerResponse'
  { _ccrrsResponseStatus ::
      !Int,
    _ccrrsContainer ::
      !Container
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateContainerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
--
-- * 'ccrrsContainer' - ContainerARN: The Amazon Resource Name (ARN) of the newly created container. The ARN has the following format: arn:aws:<region>:<account that owns this container>:container/<name of container>. For example: arn:aws:mediastore:us-west-2:111122223333:container/movies  ContainerName: The container name as specified in the request. CreationTime: Unix time stamp. Status: The status of container creation or deletion. The status is one of the following: @CREATING@ , @ACTIVE@ , or @DELETING@ . While the service is creating the container, the status is @CREATING@ . When an endpoint is available, the status changes to @ACTIVE@ . The return value does not include the container's endpoint. To make downstream requests, you must obtain this value by using 'DescribeContainer' or 'ListContainers' .
createContainerResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  -- | 'ccrrsContainer'
  Container ->
  CreateContainerResponse
createContainerResponse pResponseStatus_ pContainer_ =
  CreateContainerResponse'
    { _ccrrsResponseStatus =
        pResponseStatus_,
      _ccrrsContainer = pContainer_
    }

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateContainerResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

-- | ContainerARN: The Amazon Resource Name (ARN) of the newly created container. The ARN has the following format: arn:aws:<region>:<account that owns this container>:container/<name of container>. For example: arn:aws:mediastore:us-west-2:111122223333:container/movies  ContainerName: The container name as specified in the request. CreationTime: Unix time stamp. Status: The status of container creation or deletion. The status is one of the following: @CREATING@ , @ACTIVE@ , or @DELETING@ . While the service is creating the container, the status is @CREATING@ . When an endpoint is available, the status changes to @ACTIVE@ . The return value does not include the container's endpoint. To make downstream requests, you must obtain this value by using 'DescribeContainer' or 'ListContainers' .
ccrrsContainer :: Lens' CreateContainerResponse Container
ccrrsContainer = lens _ccrrsContainer (\s a -> s {_ccrrsContainer = a})

instance NFData CreateContainerResponse
