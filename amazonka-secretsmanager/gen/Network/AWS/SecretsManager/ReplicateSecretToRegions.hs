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
-- Module      : Network.AWS.SecretsManager.ReplicateSecretToRegions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Converts an existing secret to a multi-Region secret and begins replication the secret to a list of new regions.
module Network.AWS.SecretsManager.ReplicateSecretToRegions
  ( -- * Creating a Request
    replicateSecretToRegions,
    ReplicateSecretToRegions,

    -- * Request Lenses
    rstrForceOverwriteReplicaSecret,
    rstrSecretId,
    rstrAddReplicaRegions,

    -- * Destructuring the Response
    replicateSecretToRegionsResponse,
    ReplicateSecretToRegionsResponse,

    -- * Response Lenses
    rstrrrsReplicationStatus,
    rstrrrsARN,
    rstrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'replicateSecretToRegions' smart constructor.
data ReplicateSecretToRegions = ReplicateSecretToRegions'
  { _rstrForceOverwriteReplicaSecret ::
      !(Maybe Bool),
    _rstrSecretId ::
      !Text,
    _rstrAddReplicaRegions ::
      !( List1
           ReplicaRegionType
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ReplicateSecretToRegions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rstrForceOverwriteReplicaSecret' - (Optional) If set, Secrets Manager replication overwrites a secret with the same name in the destination region.
--
-- * 'rstrSecretId' - Use the @Secret Id@ to replicate a secret to regions.
--
-- * 'rstrAddReplicaRegions' - Add Regions to replicate the secret.
replicateSecretToRegions ::
  -- | 'rstrSecretId'
  Text ->
  -- | 'rstrAddReplicaRegions'
  NonEmpty ReplicaRegionType ->
  ReplicateSecretToRegions
replicateSecretToRegions
  pSecretId_
  pAddReplicaRegions_ =
    ReplicateSecretToRegions'
      { _rstrForceOverwriteReplicaSecret =
          Nothing,
        _rstrSecretId = pSecretId_,
        _rstrAddReplicaRegions =
          _List1 # pAddReplicaRegions_
      }

-- | (Optional) If set, Secrets Manager replication overwrites a secret with the same name in the destination region.
rstrForceOverwriteReplicaSecret :: Lens' ReplicateSecretToRegions (Maybe Bool)
rstrForceOverwriteReplicaSecret = lens _rstrForceOverwriteReplicaSecret (\s a -> s {_rstrForceOverwriteReplicaSecret = a})

-- | Use the @Secret Id@ to replicate a secret to regions.
rstrSecretId :: Lens' ReplicateSecretToRegions Text
rstrSecretId = lens _rstrSecretId (\s a -> s {_rstrSecretId = a})

-- | Add Regions to replicate the secret.
rstrAddReplicaRegions :: Lens' ReplicateSecretToRegions (NonEmpty ReplicaRegionType)
rstrAddReplicaRegions = lens _rstrAddReplicaRegions (\s a -> s {_rstrAddReplicaRegions = a}) . _List1

instance AWSRequest ReplicateSecretToRegions where
  type
    Rs ReplicateSecretToRegions =
      ReplicateSecretToRegionsResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          ReplicateSecretToRegionsResponse'
            <$> (x .?> "ReplicationStatus" .!@ mempty)
            <*> (x .?> "ARN")
            <*> (pure (fromEnum s))
      )

instance Hashable ReplicateSecretToRegions

instance NFData ReplicateSecretToRegions

instance ToHeaders ReplicateSecretToRegions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "secretsmanager.ReplicateSecretToRegions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ReplicateSecretToRegions where
  toJSON ReplicateSecretToRegions' {..} =
    object
      ( catMaybes
          [ ("ForceOverwriteReplicaSecret" .=)
              <$> _rstrForceOverwriteReplicaSecret,
            Just ("SecretId" .= _rstrSecretId),
            Just
              ("AddReplicaRegions" .= _rstrAddReplicaRegions)
          ]
      )

instance ToPath ReplicateSecretToRegions where
  toPath = const "/"

instance ToQuery ReplicateSecretToRegions where
  toQuery = const mempty

-- | /See:/ 'replicateSecretToRegionsResponse' smart constructor.
data ReplicateSecretToRegionsResponse = ReplicateSecretToRegionsResponse'
  { _rstrrrsReplicationStatus ::
      !( Maybe
           [ReplicationStatusType]
       ),
    _rstrrrsARN ::
      !( Maybe
           Text
       ),
    _rstrrrsResponseStatus ::
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

-- | Creates a value of 'ReplicateSecretToRegionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rstrrrsReplicationStatus' - Describes the secret replication status as @PENDING@ , @SUCCESS@ or @FAIL@ .
--
-- * 'rstrrrsARN' - Replicate a secret based on the @ReplicaRegionType@ > consisting of a Region(required) and a KMSKeyId (optional) which can be the ARN, KeyID, or Alias.
--
-- * 'rstrrrsResponseStatus' - -- | The response status code.
replicateSecretToRegionsResponse ::
  -- | 'rstrrrsResponseStatus'
  Int ->
  ReplicateSecretToRegionsResponse
replicateSecretToRegionsResponse pResponseStatus_ =
  ReplicateSecretToRegionsResponse'
    { _rstrrrsReplicationStatus =
        Nothing,
      _rstrrrsARN = Nothing,
      _rstrrrsResponseStatus = pResponseStatus_
    }

-- | Describes the secret replication status as @PENDING@ , @SUCCESS@ or @FAIL@ .
rstrrrsReplicationStatus :: Lens' ReplicateSecretToRegionsResponse [ReplicationStatusType]
rstrrrsReplicationStatus = lens _rstrrrsReplicationStatus (\s a -> s {_rstrrrsReplicationStatus = a}) . _Default . _Coerce

-- | Replicate a secret based on the @ReplicaRegionType@ > consisting of a Region(required) and a KMSKeyId (optional) which can be the ARN, KeyID, or Alias.
rstrrrsARN :: Lens' ReplicateSecretToRegionsResponse (Maybe Text)
rstrrrsARN = lens _rstrrrsARN (\s a -> s {_rstrrrsARN = a})

-- | -- | The response status code.
rstrrrsResponseStatus :: Lens' ReplicateSecretToRegionsResponse Int
rstrrrsResponseStatus = lens _rstrrrsResponseStatus (\s a -> s {_rstrrrsResponseStatus = a})

instance NFData ReplicateSecretToRegionsResponse
