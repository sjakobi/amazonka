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
-- Module      : Network.AWS.ECR.DescribeRegistry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the settings for a registry. The replication configuration for a repository can be created or updated with the 'PutReplicationConfiguration' API action.
module Network.AWS.ECR.DescribeRegistry
  ( -- * Creating a Request
    describeRegistry,
    DescribeRegistry,

    -- * Destructuring the Response
    describeRegistryResponse,
    DescribeRegistryResponse,

    -- * Response Lenses
    drrrsReplicationConfiguration,
    drrrsRegistryId,
    drrrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRegistry' smart constructor.
data DescribeRegistry = DescribeRegistry'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRegistry' with the minimum fields required to make a request.
describeRegistry ::
  DescribeRegistry
describeRegistry = DescribeRegistry'

instance AWSRequest DescribeRegistry where
  type Rs DescribeRegistry = DescribeRegistryResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          DescribeRegistryResponse'
            <$> (x .?> "replicationConfiguration")
            <*> (x .?> "registryId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRegistry

instance NFData DescribeRegistry

instance ToHeaders DescribeRegistry where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.DescribeRegistry" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeRegistry where
  toJSON = const (Object mempty)

instance ToPath DescribeRegistry where
  toPath = const "/"

instance ToQuery DescribeRegistry where
  toQuery = const mempty

-- | /See:/ 'describeRegistryResponse' smart constructor.
data DescribeRegistryResponse = DescribeRegistryResponse'
  { _drrrsReplicationConfiguration ::
      !( Maybe
           ReplicationConfiguration
       ),
    _drrrsRegistryId ::
      !(Maybe Text),
    _drrrsResponseStatus ::
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

-- | Creates a value of 'DescribeRegistryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsReplicationConfiguration' - The replication configuration for the registry.
--
-- * 'drrrsRegistryId' - The ID of the registry.
--
-- * 'drrrsResponseStatus' - -- | The response status code.
describeRegistryResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DescribeRegistryResponse
describeRegistryResponse pResponseStatus_ =
  DescribeRegistryResponse'
    { _drrrsReplicationConfiguration =
        Nothing,
      _drrrsRegistryId = Nothing,
      _drrrsResponseStatus = pResponseStatus_
    }

-- | The replication configuration for the registry.
drrrsReplicationConfiguration :: Lens' DescribeRegistryResponse (Maybe ReplicationConfiguration)
drrrsReplicationConfiguration = lens _drrrsReplicationConfiguration (\s a -> s {_drrrsReplicationConfiguration = a})

-- | The ID of the registry.
drrrsRegistryId :: Lens' DescribeRegistryResponse (Maybe Text)
drrrsRegistryId = lens _drrrsRegistryId (\s a -> s {_drrrsRegistryId = a})

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DescribeRegistryResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DescribeRegistryResponse
