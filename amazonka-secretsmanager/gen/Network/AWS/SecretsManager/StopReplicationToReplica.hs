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
-- Module      : Network.AWS.SecretsManager.StopReplicationToReplica
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the secret from replication and promotes the secret to a regional secret in the replica Region.
module Network.AWS.SecretsManager.StopReplicationToReplica
  ( -- * Creating a Request
    stopReplicationToReplica,
    StopReplicationToReplica,

    -- * Request Lenses
    srtrSecretId,

    -- * Destructuring the Response
    stopReplicationToReplicaResponse,
    StopReplicationToReplicaResponse,

    -- * Response Lenses
    srtrrrsARN,
    srtrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'stopReplicationToReplica' smart constructor.
newtype StopReplicationToReplica = StopReplicationToReplica'
  { _srtrSecretId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StopReplicationToReplica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srtrSecretId' - Response to @StopReplicationToReplica@ of a secret, based on the @SecretId@ .
stopReplicationToReplica ::
  -- | 'srtrSecretId'
  Text ->
  StopReplicationToReplica
stopReplicationToReplica pSecretId_ =
  StopReplicationToReplica'
    { _srtrSecretId =
        pSecretId_
    }

-- | Response to @StopReplicationToReplica@ of a secret, based on the @SecretId@ .
srtrSecretId :: Lens' StopReplicationToReplica Text
srtrSecretId = lens _srtrSecretId (\s a -> s {_srtrSecretId = a})

instance AWSRequest StopReplicationToReplica where
  type
    Rs StopReplicationToReplica =
      StopReplicationToReplicaResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          StopReplicationToReplicaResponse'
            <$> (x .?> "ARN") <*> (pure (fromEnum s))
      )

instance Hashable StopReplicationToReplica

instance NFData StopReplicationToReplica

instance ToHeaders StopReplicationToReplica where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "secretsmanager.StopReplicationToReplica" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopReplicationToReplica where
  toJSON StopReplicationToReplica' {..} =
    object
      (catMaybes [Just ("SecretId" .= _srtrSecretId)])

instance ToPath StopReplicationToReplica where
  toPath = const "/"

instance ToQuery StopReplicationToReplica where
  toQuery = const mempty

-- | /See:/ 'stopReplicationToReplicaResponse' smart constructor.
data StopReplicationToReplicaResponse = StopReplicationToReplicaResponse'
  { _srtrrrsARN ::
      !( Maybe
           Text
       ),
    _srtrrrsResponseStatus ::
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

-- | Creates a value of 'StopReplicationToReplicaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srtrrrsARN' - Response @StopReplicationToReplica@ of a secret, based on the @ARN,@ .
--
-- * 'srtrrrsResponseStatus' - -- | The response status code.
stopReplicationToReplicaResponse ::
  -- | 'srtrrrsResponseStatus'
  Int ->
  StopReplicationToReplicaResponse
stopReplicationToReplicaResponse pResponseStatus_ =
  StopReplicationToReplicaResponse'
    { _srtrrrsARN =
        Nothing,
      _srtrrrsResponseStatus = pResponseStatus_
    }

-- | Response @StopReplicationToReplica@ of a secret, based on the @ARN,@ .
srtrrrsARN :: Lens' StopReplicationToReplicaResponse (Maybe Text)
srtrrrsARN = lens _srtrrrsARN (\s a -> s {_srtrrrsARN = a})

-- | -- | The response status code.
srtrrrsResponseStatus :: Lens' StopReplicationToReplicaResponse Int
srtrrrsResponseStatus = lens _srtrrrsResponseStatus (\s a -> s {_srtrrrsResponseStatus = a})

instance NFData StopReplicationToReplicaResponse
