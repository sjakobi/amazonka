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
-- Module      : Network.AWS.EMR.ModifyCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the number of steps that can be executed concurrently for the cluster specified using ClusterID.
module Network.AWS.EMR.ModifyCluster
  ( -- * Creating a Request
    modifyCluster,
    ModifyCluster,

    -- * Request Lenses
    mcStepConcurrencyLevel,
    mcClusterId,

    -- * Destructuring the Response
    modifyClusterResponse,
    ModifyClusterResponse,

    -- * Response Lenses
    mcrrsStepConcurrencyLevel,
    mcrrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyCluster' smart constructor.
data ModifyCluster = ModifyCluster'
  { _mcStepConcurrencyLevel ::
      !(Maybe Int),
    _mcClusterId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcStepConcurrencyLevel' - The number of steps that can be executed concurrently. You can specify a maximum of 256 steps.
--
-- * 'mcClusterId' - The unique identifier of the cluster.
modifyCluster ::
  -- | 'mcClusterId'
  Text ->
  ModifyCluster
modifyCluster pClusterId_ =
  ModifyCluster'
    { _mcStepConcurrencyLevel = Nothing,
      _mcClusterId = pClusterId_
    }

-- | The number of steps that can be executed concurrently. You can specify a maximum of 256 steps.
mcStepConcurrencyLevel :: Lens' ModifyCluster (Maybe Int)
mcStepConcurrencyLevel = lens _mcStepConcurrencyLevel (\s a -> s {_mcStepConcurrencyLevel = a})

-- | The unique identifier of the cluster.
mcClusterId :: Lens' ModifyCluster Text
mcClusterId = lens _mcClusterId (\s a -> s {_mcClusterId = a})

instance AWSRequest ModifyCluster where
  type Rs ModifyCluster = ModifyClusterResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          ModifyClusterResponse'
            <$> (x .?> "StepConcurrencyLevel")
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyCluster

instance NFData ModifyCluster

instance ToHeaders ModifyCluster where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.ModifyCluster" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ModifyCluster where
  toJSON ModifyCluster' {..} =
    object
      ( catMaybes
          [ ("StepConcurrencyLevel" .=)
              <$> _mcStepConcurrencyLevel,
            Just ("ClusterId" .= _mcClusterId)
          ]
      )

instance ToPath ModifyCluster where
  toPath = const "/"

instance ToQuery ModifyCluster where
  toQuery = const mempty

-- | /See:/ 'modifyClusterResponse' smart constructor.
data ModifyClusterResponse = ModifyClusterResponse'
  { _mcrrsStepConcurrencyLevel ::
      !(Maybe Int),
    _mcrrsResponseStatus ::
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

-- | Creates a value of 'ModifyClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcrrsStepConcurrencyLevel' - The number of steps that can be executed concurrently.
--
-- * 'mcrrsResponseStatus' - -- | The response status code.
modifyClusterResponse ::
  -- | 'mcrrsResponseStatus'
  Int ->
  ModifyClusterResponse
modifyClusterResponse pResponseStatus_ =
  ModifyClusterResponse'
    { _mcrrsStepConcurrencyLevel =
        Nothing,
      _mcrrsResponseStatus = pResponseStatus_
    }

-- | The number of steps that can be executed concurrently.
mcrrsStepConcurrencyLevel :: Lens' ModifyClusterResponse (Maybe Int)
mcrrsStepConcurrencyLevel = lens _mcrrsStepConcurrencyLevel (\s a -> s {_mcrrsStepConcurrencyLevel = a})

-- | -- | The response status code.
mcrrsResponseStatus :: Lens' ModifyClusterResponse Int
mcrrsResponseStatus = lens _mcrrsResponseStatus (\s a -> s {_mcrrsResponseStatus = a})

instance NFData ModifyClusterResponse
