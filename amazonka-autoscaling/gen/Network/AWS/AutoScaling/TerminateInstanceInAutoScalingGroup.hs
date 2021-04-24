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
-- Module      : Network.AWS.AutoScaling.TerminateInstanceInAutoScalingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Terminates the specified instance and optionally adjusts the desired group size.
--
--
-- This call simply makes a termination request. The instance is not terminated immediately. When an instance is terminated, the instance status changes to @terminated@ . You can't connect to or start an instance after you've terminated it.
--
-- If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are terminated.
--
-- By default, Amazon EC2 Auto Scaling balances instances across all Availability Zones. If you decrement the desired capacity, your Auto Scaling group can become unbalanced between Availability Zones. Amazon EC2 Auto Scaling tries to rebalance the group, and rebalancing might terminate instances in other zones. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-benefits.html#AutoScalingBehavior.InstanceUsage Rebalancing activities> in the /Amazon EC2 Auto Scaling User Guide/ .
module Network.AWS.AutoScaling.TerminateInstanceInAutoScalingGroup
  ( -- * Creating a Request
    terminateInstanceInAutoScalingGroup,
    TerminateInstanceInAutoScalingGroup,

    -- * Request Lenses
    tiiasgInstanceId,
    tiiasgShouldDecrementDesiredCapacity,

    -- * Destructuring the Response
    terminateInstanceInAutoScalingGroupResponse,
    TerminateInstanceInAutoScalingGroupResponse,

    -- * Response Lenses
    tiiasgrrsActivity,
    tiiasgrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'terminateInstanceInAutoScalingGroup' smart constructor.
data TerminateInstanceInAutoScalingGroup = TerminateInstanceInAutoScalingGroup'
  { _tiiasgInstanceId ::
      !Text,
    _tiiasgShouldDecrementDesiredCapacity ::
      !Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TerminateInstanceInAutoScalingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiasgInstanceId' - The ID of the instance.
--
-- * 'tiiasgShouldDecrementDesiredCapacity' - Indicates whether terminating the instance also decrements the size of the Auto Scaling group.
terminateInstanceInAutoScalingGroup ::
  -- | 'tiiasgInstanceId'
  Text ->
  -- | 'tiiasgShouldDecrementDesiredCapacity'
  Bool ->
  TerminateInstanceInAutoScalingGroup
terminateInstanceInAutoScalingGroup
  pInstanceId_
  pShouldDecrementDesiredCapacity_ =
    TerminateInstanceInAutoScalingGroup'
      { _tiiasgInstanceId =
          pInstanceId_,
        _tiiasgShouldDecrementDesiredCapacity =
          pShouldDecrementDesiredCapacity_
      }

-- | The ID of the instance.
tiiasgInstanceId :: Lens' TerminateInstanceInAutoScalingGroup Text
tiiasgInstanceId = lens _tiiasgInstanceId (\s a -> s {_tiiasgInstanceId = a})

-- | Indicates whether terminating the instance also decrements the size of the Auto Scaling group.
tiiasgShouldDecrementDesiredCapacity :: Lens' TerminateInstanceInAutoScalingGroup Bool
tiiasgShouldDecrementDesiredCapacity = lens _tiiasgShouldDecrementDesiredCapacity (\s a -> s {_tiiasgShouldDecrementDesiredCapacity = a})

instance
  AWSRequest
    TerminateInstanceInAutoScalingGroup
  where
  type
    Rs TerminateInstanceInAutoScalingGroup =
      TerminateInstanceInAutoScalingGroupResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "TerminateInstanceInAutoScalingGroupResult"
      ( \s h x ->
          TerminateInstanceInAutoScalingGroupResponse'
            <$> (x .@? "Activity") <*> (pure (fromEnum s))
      )

instance Hashable TerminateInstanceInAutoScalingGroup

instance NFData TerminateInstanceInAutoScalingGroup

instance
  ToHeaders
    TerminateInstanceInAutoScalingGroup
  where
  toHeaders = const mempty

instance ToPath TerminateInstanceInAutoScalingGroup where
  toPath = const "/"

instance ToQuery TerminateInstanceInAutoScalingGroup where
  toQuery TerminateInstanceInAutoScalingGroup' {..} =
    mconcat
      [ "Action"
          =: ( "TerminateInstanceInAutoScalingGroup" ::
                 ByteString
             ),
        "Version" =: ("2011-01-01" :: ByteString),
        "InstanceId" =: _tiiasgInstanceId,
        "ShouldDecrementDesiredCapacity"
          =: _tiiasgShouldDecrementDesiredCapacity
      ]

-- | /See:/ 'terminateInstanceInAutoScalingGroupResponse' smart constructor.
data TerminateInstanceInAutoScalingGroupResponse = TerminateInstanceInAutoScalingGroupResponse'
  { _tiiasgrrsActivity ::
      !( Maybe
           Activity
       ),
    _tiiasgrrsResponseStatus ::
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

-- | Creates a value of 'TerminateInstanceInAutoScalingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiasgrrsActivity' - A scaling activity.
--
-- * 'tiiasgrrsResponseStatus' - -- | The response status code.
terminateInstanceInAutoScalingGroupResponse ::
  -- | 'tiiasgrrsResponseStatus'
  Int ->
  TerminateInstanceInAutoScalingGroupResponse
terminateInstanceInAutoScalingGroupResponse
  pResponseStatus_ =
    TerminateInstanceInAutoScalingGroupResponse'
      { _tiiasgrrsActivity =
          Nothing,
        _tiiasgrrsResponseStatus =
          pResponseStatus_
      }

-- | A scaling activity.
tiiasgrrsActivity :: Lens' TerminateInstanceInAutoScalingGroupResponse (Maybe Activity)
tiiasgrrsActivity = lens _tiiasgrrsActivity (\s a -> s {_tiiasgrrsActivity = a})

-- | -- | The response status code.
tiiasgrrsResponseStatus :: Lens' TerminateInstanceInAutoScalingGroupResponse Int
tiiasgrrsResponseStatus = lens _tiiasgrrsResponseStatus (\s a -> s {_tiiasgrrsResponseStatus = a})

instance
  NFData
    TerminateInstanceInAutoScalingGroupResponse
