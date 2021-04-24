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
-- Module      : Network.AWS.GameLift.DeleteScalingPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a fleet scaling policy. Once deleted, the policy is no longer in force and GameLift removes all record of it. To delete a scaling policy, specify both the scaling policy name and the fleet ID it is associated with.
--
--
-- To temporarily suspend scaling policies, call 'StopFleetActions' . This operation suspends all policies for the fleet.
--
--     * 'DescribeFleetCapacity'
--
--     * 'UpdateFleetCapacity'
--
--     * 'DescribeEC2InstanceLimits'
--
--     * Manage scaling policies:
--
--     * 'PutScalingPolicy' (auto-scaling)
--
--     * 'DescribeScalingPolicies' (auto-scaling)
--
--     * 'DeleteScalingPolicy' (auto-scaling)
--
--
--
--     * Manage fleet actions:
--
--     * 'StartFleetActions'
--
--     * 'StopFleetActions'
module Network.AWS.GameLift.DeleteScalingPolicy
  ( -- * Creating a Request
    deleteScalingPolicy,
    DeleteScalingPolicy,

    -- * Request Lenses
    dName,
    dFleetId,

    -- * Destructuring the Response
    deleteScalingPolicyResponse,
    DeleteScalingPolicyResponse,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'deleteScalingPolicy' smart constructor.
data DeleteScalingPolicy = DeleteScalingPolicy'
  { _dName ::
      !Text,
    _dFleetId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteScalingPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dName' - A descriptive label that is associated with a scaling policy. Policy names do not need to be unique.
--
-- * 'dFleetId' - A unique identifier for a fleet to be deleted. You can use either the fleet ID or ARN value.
deleteScalingPolicy ::
  -- | 'dName'
  Text ->
  -- | 'dFleetId'
  Text ->
  DeleteScalingPolicy
deleteScalingPolicy pName_ pFleetId_ =
  DeleteScalingPolicy'
    { _dName = pName_,
      _dFleetId = pFleetId_
    }

-- | A descriptive label that is associated with a scaling policy. Policy names do not need to be unique.
dName :: Lens' DeleteScalingPolicy Text
dName = lens _dName (\s a -> s {_dName = a})

-- | A unique identifier for a fleet to be deleted. You can use either the fleet ID or ARN value.
dFleetId :: Lens' DeleteScalingPolicy Text
dFleetId = lens _dFleetId (\s a -> s {_dFleetId = a})

instance AWSRequest DeleteScalingPolicy where
  type
    Rs DeleteScalingPolicy =
      DeleteScalingPolicyResponse
  request = postJSON gameLift
  response = receiveNull DeleteScalingPolicyResponse'

instance Hashable DeleteScalingPolicy

instance NFData DeleteScalingPolicy

instance ToHeaders DeleteScalingPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DeleteScalingPolicy" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteScalingPolicy where
  toJSON DeleteScalingPolicy' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _dName),
            Just ("FleetId" .= _dFleetId)
          ]
      )

instance ToPath DeleteScalingPolicy where
  toPath = const "/"

instance ToQuery DeleteScalingPolicy where
  toQuery = const mempty

-- | /See:/ 'deleteScalingPolicyResponse' smart constructor.
data DeleteScalingPolicyResponse = DeleteScalingPolicyResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteScalingPolicyResponse' with the minimum fields required to make a request.
deleteScalingPolicyResponse ::
  DeleteScalingPolicyResponse
deleteScalingPolicyResponse =
  DeleteScalingPolicyResponse'

instance NFData DeleteScalingPolicyResponse
