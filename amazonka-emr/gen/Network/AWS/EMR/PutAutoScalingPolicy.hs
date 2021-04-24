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
-- Module      : Network.AWS.EMR.PutAutoScalingPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.
module Network.AWS.EMR.PutAutoScalingPolicy
  ( -- * Creating a Request
    putAutoScalingPolicy,
    PutAutoScalingPolicy,

    -- * Request Lenses
    paspClusterId,
    paspInstanceGroupId,
    paspAutoScalingPolicy,

    -- * Destructuring the Response
    putAutoScalingPolicyResponse,
    PutAutoScalingPolicyResponse,

    -- * Response Lenses
    pasprrsClusterARN,
    pasprrsClusterId,
    pasprrsInstanceGroupId,
    pasprrsAutoScalingPolicy,
    pasprrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putAutoScalingPolicy' smart constructor.
data PutAutoScalingPolicy = PutAutoScalingPolicy'
  { _paspClusterId ::
      !Text,
    _paspInstanceGroupId :: !Text,
    _paspAutoScalingPolicy ::
      !AutoScalingPolicy
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutAutoScalingPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paspClusterId' - Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.
--
-- * 'paspInstanceGroupId' - Specifies the ID of the instance group to which the automatic scaling policy is applied.
--
-- * 'paspAutoScalingPolicy' - Specifies the definition of the automatic scaling policy.
putAutoScalingPolicy ::
  -- | 'paspClusterId'
  Text ->
  -- | 'paspInstanceGroupId'
  Text ->
  -- | 'paspAutoScalingPolicy'
  AutoScalingPolicy ->
  PutAutoScalingPolicy
putAutoScalingPolicy
  pClusterId_
  pInstanceGroupId_
  pAutoScalingPolicy_ =
    PutAutoScalingPolicy'
      { _paspClusterId = pClusterId_,
        _paspInstanceGroupId = pInstanceGroupId_,
        _paspAutoScalingPolicy = pAutoScalingPolicy_
      }

-- | Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.
paspClusterId :: Lens' PutAutoScalingPolicy Text
paspClusterId = lens _paspClusterId (\s a -> s {_paspClusterId = a})

-- | Specifies the ID of the instance group to which the automatic scaling policy is applied.
paspInstanceGroupId :: Lens' PutAutoScalingPolicy Text
paspInstanceGroupId = lens _paspInstanceGroupId (\s a -> s {_paspInstanceGroupId = a})

-- | Specifies the definition of the automatic scaling policy.
paspAutoScalingPolicy :: Lens' PutAutoScalingPolicy AutoScalingPolicy
paspAutoScalingPolicy = lens _paspAutoScalingPolicy (\s a -> s {_paspAutoScalingPolicy = a})

instance AWSRequest PutAutoScalingPolicy where
  type
    Rs PutAutoScalingPolicy =
      PutAutoScalingPolicyResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          PutAutoScalingPolicyResponse'
            <$> (x .?> "ClusterArn")
            <*> (x .?> "ClusterId")
            <*> (x .?> "InstanceGroupId")
            <*> (x .?> "AutoScalingPolicy")
            <*> (pure (fromEnum s))
      )

instance Hashable PutAutoScalingPolicy

instance NFData PutAutoScalingPolicy

instance ToHeaders PutAutoScalingPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ElasticMapReduce.PutAutoScalingPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutAutoScalingPolicy where
  toJSON PutAutoScalingPolicy' {..} =
    object
      ( catMaybes
          [ Just ("ClusterId" .= _paspClusterId),
            Just ("InstanceGroupId" .= _paspInstanceGroupId),
            Just
              ("AutoScalingPolicy" .= _paspAutoScalingPolicy)
          ]
      )

instance ToPath PutAutoScalingPolicy where
  toPath = const "/"

instance ToQuery PutAutoScalingPolicy where
  toQuery = const mempty

-- | /See:/ 'putAutoScalingPolicyResponse' smart constructor.
data PutAutoScalingPolicyResponse = PutAutoScalingPolicyResponse'
  { _pasprrsClusterARN ::
      !(Maybe Text),
    _pasprrsClusterId ::
      !(Maybe Text),
    _pasprrsInstanceGroupId ::
      !(Maybe Text),
    _pasprrsAutoScalingPolicy ::
      !( Maybe
           AutoScalingPolicyDescription
       ),
    _pasprrsResponseStatus ::
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

-- | Creates a value of 'PutAutoScalingPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasprrsClusterARN' - The Amazon Resource Name (ARN) of the cluster.
--
-- * 'pasprrsClusterId' - Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.
--
-- * 'pasprrsInstanceGroupId' - Specifies the ID of the instance group to which the scaling policy is applied.
--
-- * 'pasprrsAutoScalingPolicy' - The automatic scaling policy definition.
--
-- * 'pasprrsResponseStatus' - -- | The response status code.
putAutoScalingPolicyResponse ::
  -- | 'pasprrsResponseStatus'
  Int ->
  PutAutoScalingPolicyResponse
putAutoScalingPolicyResponse pResponseStatus_ =
  PutAutoScalingPolicyResponse'
    { _pasprrsClusterARN =
        Nothing,
      _pasprrsClusterId = Nothing,
      _pasprrsInstanceGroupId = Nothing,
      _pasprrsAutoScalingPolicy = Nothing,
      _pasprrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the cluster.
pasprrsClusterARN :: Lens' PutAutoScalingPolicyResponse (Maybe Text)
pasprrsClusterARN = lens _pasprrsClusterARN (\s a -> s {_pasprrsClusterARN = a})

-- | Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.
pasprrsClusterId :: Lens' PutAutoScalingPolicyResponse (Maybe Text)
pasprrsClusterId = lens _pasprrsClusterId (\s a -> s {_pasprrsClusterId = a})

-- | Specifies the ID of the instance group to which the scaling policy is applied.
pasprrsInstanceGroupId :: Lens' PutAutoScalingPolicyResponse (Maybe Text)
pasprrsInstanceGroupId = lens _pasprrsInstanceGroupId (\s a -> s {_pasprrsInstanceGroupId = a})

-- | The automatic scaling policy definition.
pasprrsAutoScalingPolicy :: Lens' PutAutoScalingPolicyResponse (Maybe AutoScalingPolicyDescription)
pasprrsAutoScalingPolicy = lens _pasprrsAutoScalingPolicy (\s a -> s {_pasprrsAutoScalingPolicy = a})

-- | -- | The response status code.
pasprrsResponseStatus :: Lens' PutAutoScalingPolicyResponse Int
pasprrsResponseStatus = lens _pasprrsResponseStatus (\s a -> s {_pasprrsResponseStatus = a})

instance NFData PutAutoScalingPolicyResponse
