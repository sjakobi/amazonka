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
-- Module      : Network.AWS.Connect.DescribeInstanceStorageConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Retrieves the current storage configurations for the specified resource type, association ID, and instance ID.
module Network.AWS.Connect.DescribeInstanceStorageConfig
  ( -- * Creating a Request
    describeInstanceStorageConfig,
    DescribeInstanceStorageConfig,

    -- * Request Lenses
    discInstanceId,
    discAssociationId,
    discResourceType,

    -- * Destructuring the Response
    describeInstanceStorageConfigResponse,
    DescribeInstanceStorageConfigResponse,

    -- * Response Lenses
    discrrsStorageConfig,
    discrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInstanceStorageConfig' smart constructor.
data DescribeInstanceStorageConfig = DescribeInstanceStorageConfig'
  { _discInstanceId ::
      !Text,
    _discAssociationId ::
      !Text,
    _discResourceType ::
      !InstanceStorageResourceType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstanceStorageConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'discInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'discAssociationId' - The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
--
-- * 'discResourceType' - A valid resource type.
describeInstanceStorageConfig ::
  -- | 'discInstanceId'
  Text ->
  -- | 'discAssociationId'
  Text ->
  -- | 'discResourceType'
  InstanceStorageResourceType ->
  DescribeInstanceStorageConfig
describeInstanceStorageConfig
  pInstanceId_
  pAssociationId_
  pResourceType_ =
    DescribeInstanceStorageConfig'
      { _discInstanceId =
          pInstanceId_,
        _discAssociationId = pAssociationId_,
        _discResourceType = pResourceType_
      }

-- | The identifier of the Amazon Connect instance.
discInstanceId :: Lens' DescribeInstanceStorageConfig Text
discInstanceId = lens _discInstanceId (\s a -> s {_discInstanceId = a})

-- | The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
discAssociationId :: Lens' DescribeInstanceStorageConfig Text
discAssociationId = lens _discAssociationId (\s a -> s {_discAssociationId = a})

-- | A valid resource type.
discResourceType :: Lens' DescribeInstanceStorageConfig InstanceStorageResourceType
discResourceType = lens _discResourceType (\s a -> s {_discResourceType = a})

instance AWSRequest DescribeInstanceStorageConfig where
  type
    Rs DescribeInstanceStorageConfig =
      DescribeInstanceStorageConfigResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          DescribeInstanceStorageConfigResponse'
            <$> (x .?> "StorageConfig") <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstanceStorageConfig

instance NFData DescribeInstanceStorageConfig

instance ToHeaders DescribeInstanceStorageConfig where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeInstanceStorageConfig where
  toPath DescribeInstanceStorageConfig' {..} =
    mconcat
      [ "/instance/",
        toBS _discInstanceId,
        "/storage-config/",
        toBS _discAssociationId
      ]

instance ToQuery DescribeInstanceStorageConfig where
  toQuery DescribeInstanceStorageConfig' {..} =
    mconcat ["resourceType" =: _discResourceType]

-- | /See:/ 'describeInstanceStorageConfigResponse' smart constructor.
data DescribeInstanceStorageConfigResponse = DescribeInstanceStorageConfigResponse'
  { _discrrsStorageConfig ::
      !( Maybe
           InstanceStorageConfig
       ),
    _discrrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstanceStorageConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'discrrsStorageConfig' - A valid storage type.
--
-- * 'discrrsResponseStatus' - -- | The response status code.
describeInstanceStorageConfigResponse ::
  -- | 'discrrsResponseStatus'
  Int ->
  DescribeInstanceStorageConfigResponse
describeInstanceStorageConfigResponse
  pResponseStatus_ =
    DescribeInstanceStorageConfigResponse'
      { _discrrsStorageConfig =
          Nothing,
        _discrrsResponseStatus =
          pResponseStatus_
      }

-- | A valid storage type.
discrrsStorageConfig :: Lens' DescribeInstanceStorageConfigResponse (Maybe InstanceStorageConfig)
discrrsStorageConfig = lens _discrrsStorageConfig (\s a -> s {_discrrsStorageConfig = a})

-- | -- | The response status code.
discrrsResponseStatus :: Lens' DescribeInstanceStorageConfigResponse Int
discrrsResponseStatus = lens _discrrsResponseStatus (\s a -> s {_discrrsResponseStatus = a})

instance NFData DescribeInstanceStorageConfigResponse
