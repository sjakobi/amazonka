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
-- Module      : Network.AWS.ECR.PutReplicationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the replication configuration for a registry. The existing replication configuration for a repository can be retrieved with the 'DescribeRegistry' API action. The first time the PutReplicationConfiguration API is called, a service-linked IAM role is created in your account for the replication process. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/using-service-linked-roles.html Using Service-Linked Roles for Amazon ECR> in the /Amazon Elastic Container Registry User Guide/ .
module Network.AWS.ECR.PutReplicationConfiguration
  ( -- * Creating a Request
    putReplicationConfiguration,
    PutReplicationConfiguration,

    -- * Request Lenses
    prcReplicationConfiguration,

    -- * Destructuring the Response
    putReplicationConfigurationResponse,
    PutReplicationConfigurationResponse,

    -- * Response Lenses
    prcrrsReplicationConfiguration,
    prcrrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putReplicationConfiguration' smart constructor.
newtype PutReplicationConfiguration = PutReplicationConfiguration'
  { _prcReplicationConfiguration ::
      ReplicationConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutReplicationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcReplicationConfiguration' - An object representing the replication configuration for a registry.
putReplicationConfiguration ::
  -- | 'prcReplicationConfiguration'
  ReplicationConfiguration ->
  PutReplicationConfiguration
putReplicationConfiguration
  pReplicationConfiguration_ =
    PutReplicationConfiguration'
      { _prcReplicationConfiguration =
          pReplicationConfiguration_
      }

-- | An object representing the replication configuration for a registry.
prcReplicationConfiguration :: Lens' PutReplicationConfiguration ReplicationConfiguration
prcReplicationConfiguration = lens _prcReplicationConfiguration (\s a -> s {_prcReplicationConfiguration = a})

instance AWSRequest PutReplicationConfiguration where
  type
    Rs PutReplicationConfiguration =
      PutReplicationConfigurationResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          PutReplicationConfigurationResponse'
            <$> (x .?> "replicationConfiguration")
            <*> (pure (fromEnum s))
      )

instance Hashable PutReplicationConfiguration

instance NFData PutReplicationConfiguration

instance ToHeaders PutReplicationConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.PutReplicationConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutReplicationConfiguration where
  toJSON PutReplicationConfiguration' {..} =
    object
      ( catMaybes
          [ Just
              ( "replicationConfiguration"
                  .= _prcReplicationConfiguration
              )
          ]
      )

instance ToPath PutReplicationConfiguration where
  toPath = const "/"

instance ToQuery PutReplicationConfiguration where
  toQuery = const mempty

-- | /See:/ 'putReplicationConfigurationResponse' smart constructor.
data PutReplicationConfigurationResponse = PutReplicationConfigurationResponse'
  { _prcrrsReplicationConfiguration ::
      !( Maybe
           ReplicationConfiguration
       ),
    _prcrrsResponseStatus ::
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

-- | Creates a value of 'PutReplicationConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcrrsReplicationConfiguration' - The contents of the replication configuration for the registry.
--
-- * 'prcrrsResponseStatus' - -- | The response status code.
putReplicationConfigurationResponse ::
  -- | 'prcrrsResponseStatus'
  Int ->
  PutReplicationConfigurationResponse
putReplicationConfigurationResponse pResponseStatus_ =
  PutReplicationConfigurationResponse'
    { _prcrrsReplicationConfiguration =
        Nothing,
      _prcrrsResponseStatus =
        pResponseStatus_
    }

-- | The contents of the replication configuration for the registry.
prcrrsReplicationConfiguration :: Lens' PutReplicationConfigurationResponse (Maybe ReplicationConfiguration)
prcrrsReplicationConfiguration = lens _prcrrsReplicationConfiguration (\s a -> s {_prcrrsReplicationConfiguration = a})

-- | -- | The response status code.
prcrrsResponseStatus :: Lens' PutReplicationConfigurationResponse Int
prcrrsResponseStatus = lens _prcrrsResponseStatus (\s a -> s {_prcrrsResponseStatus = a})

instance NFData PutReplicationConfigurationResponse
