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
-- Module      : Network.AWS.SecretsManager.RemoveRegionsFromReplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove regions from replication.
module Network.AWS.SecretsManager.RemoveRegionsFromReplication
  ( -- * Creating a Request
    removeRegionsFromReplication,
    RemoveRegionsFromReplication,

    -- * Request Lenses
    rrfrSecretId,
    rrfrRemoveReplicaRegions,

    -- * Destructuring the Response
    removeRegionsFromReplicationResponse,
    RemoveRegionsFromReplicationResponse,

    -- * Response Lenses
    rrfrrrsReplicationStatus,
    rrfrrrsARN,
    rrfrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'removeRegionsFromReplication' smart constructor.
data RemoveRegionsFromReplication = RemoveRegionsFromReplication'
  { _rrfrSecretId ::
      !Text,
    _rrfrRemoveReplicaRegions ::
      !(List1 Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RemoveRegionsFromReplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrfrSecretId' - Remove a secret by @SecretId@ from replica Regions.
--
-- * 'rrfrRemoveReplicaRegions' - Remove replication from specific Regions.
removeRegionsFromReplication ::
  -- | 'rrfrSecretId'
  Text ->
  -- | 'rrfrRemoveReplicaRegions'
  NonEmpty Text ->
  RemoveRegionsFromReplication
removeRegionsFromReplication
  pSecretId_
  pRemoveReplicaRegions_ =
    RemoveRegionsFromReplication'
      { _rrfrSecretId =
          pSecretId_,
        _rrfrRemoveReplicaRegions =
          _List1 # pRemoveReplicaRegions_
      }

-- | Remove a secret by @SecretId@ from replica Regions.
rrfrSecretId :: Lens' RemoveRegionsFromReplication Text
rrfrSecretId = lens _rrfrSecretId (\s a -> s {_rrfrSecretId = a})

-- | Remove replication from specific Regions.
rrfrRemoveReplicaRegions :: Lens' RemoveRegionsFromReplication (NonEmpty Text)
rrfrRemoveReplicaRegions = lens _rrfrRemoveReplicaRegions (\s a -> s {_rrfrRemoveReplicaRegions = a}) . _List1

instance AWSRequest RemoveRegionsFromReplication where
  type
    Rs RemoveRegionsFromReplication =
      RemoveRegionsFromReplicationResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          RemoveRegionsFromReplicationResponse'
            <$> (x .?> "ReplicationStatus" .!@ mempty)
            <*> (x .?> "ARN")
            <*> (pure (fromEnum s))
      )

instance Hashable RemoveRegionsFromReplication

instance NFData RemoveRegionsFromReplication

instance ToHeaders RemoveRegionsFromReplication where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "secretsmanager.RemoveRegionsFromReplication" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RemoveRegionsFromReplication where
  toJSON RemoveRegionsFromReplication' {..} =
    object
      ( catMaybes
          [ Just ("SecretId" .= _rrfrSecretId),
            Just
              ( "RemoveReplicaRegions"
                  .= _rrfrRemoveReplicaRegions
              )
          ]
      )

instance ToPath RemoveRegionsFromReplication where
  toPath = const "/"

instance ToQuery RemoveRegionsFromReplication where
  toQuery = const mempty

-- | /See:/ 'removeRegionsFromReplicationResponse' smart constructor.
data RemoveRegionsFromReplicationResponse = RemoveRegionsFromReplicationResponse'
  { _rrfrrrsReplicationStatus ::
      !( Maybe
           [ReplicationStatusType]
       ),
    _rrfrrrsARN ::
      !( Maybe
           Text
       ),
    _rrfrrrsResponseStatus ::
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

-- | Creates a value of 'RemoveRegionsFromReplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrfrrrsReplicationStatus' - Describes the remaining replication status after you remove regions from the replication list.
--
-- * 'rrfrrrsARN' - The secret @ARN@ removed from replication regions.
--
-- * 'rrfrrrsResponseStatus' - -- | The response status code.
removeRegionsFromReplicationResponse ::
  -- | 'rrfrrrsResponseStatus'
  Int ->
  RemoveRegionsFromReplicationResponse
removeRegionsFromReplicationResponse pResponseStatus_ =
  RemoveRegionsFromReplicationResponse'
    { _rrfrrrsReplicationStatus =
        Nothing,
      _rrfrrrsARN = Nothing,
      _rrfrrrsResponseStatus =
        pResponseStatus_
    }

-- | Describes the remaining replication status after you remove regions from the replication list.
rrfrrrsReplicationStatus :: Lens' RemoveRegionsFromReplicationResponse [ReplicationStatusType]
rrfrrrsReplicationStatus = lens _rrfrrrsReplicationStatus (\s a -> s {_rrfrrrsReplicationStatus = a}) . _Default . _Coerce

-- | The secret @ARN@ removed from replication regions.
rrfrrrsARN :: Lens' RemoveRegionsFromReplicationResponse (Maybe Text)
rrfrrrsARN = lens _rrfrrrsARN (\s a -> s {_rrfrrrsARN = a})

-- | -- | The response status code.
rrfrrrsResponseStatus :: Lens' RemoveRegionsFromReplicationResponse Int
rrfrrrsResponseStatus = lens _rrfrrrsResponseStatus (\s a -> s {_rrfrrrsResponseStatus = a})

instance NFData RemoveRegionsFromReplicationResponse
