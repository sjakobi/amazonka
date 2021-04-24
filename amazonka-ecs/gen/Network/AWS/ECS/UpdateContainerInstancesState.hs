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
-- Module      : Network.AWS.ECS.UpdateContainerInstancesState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the status of an Amazon ECS container instance.
--
--
-- Once a container instance has reached an @ACTIVE@ state, you can change the status of a container instance to @DRAINING@ to manually remove an instance from a cluster, for example to perform system updates, update the Docker daemon, or scale down the cluster size.
--
-- /Important:/ A container instance cannot be changed to @DRAINING@ until it has reached an @ACTIVE@ status. If the instance is in any other status, an error will be received.
--
-- When you set a container instance to @DRAINING@ , Amazon ECS prevents new tasks from being scheduled for placement on the container instance and replacement service tasks are started on other container instances in the cluster if the resources are available. Service tasks on the container instance that are in the @PENDING@ state are stopped immediately.
--
-- Service tasks on the container instance that are in the @RUNNING@ state are stopped and replaced according to the service's deployment configuration parameters, @minimumHealthyPercent@ and @maximumPercent@ . You can change the deployment configuration of your service using 'UpdateService' .
--
--     * If @minimumHealthyPercent@ is below 100%, the scheduler can ignore @desiredCount@ temporarily during task replacement. For example, @desiredCount@ is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. If the minimum is 100%, the service scheduler can't remove existing tasks until the replacement tasks are considered healthy. Tasks for services that do not use a load balancer are considered healthy if they are in the @RUNNING@ state. Tasks for services that use a load balancer are considered healthy if they are in the @RUNNING@ state and the container instance they are hosted on is reported as healthy by the load balancer.
--
--     * The @maximumPercent@ parameter represents an upper limit on the number of running tasks during task replacement, which enables you to define the replacement batch size. For example, if @desiredCount@ is four tasks, a maximum of 200% starts four new tasks before stopping the four tasks to be drained, provided that the cluster resources required to do this are available. If the maximum is 100%, then replacement tasks can't start until the draining tasks have stopped.
--
--
--
-- Any @PENDING@ or @RUNNING@ tasks that do not belong to a service are not affected. You must wait for them to finish or stop them manually.
--
-- A container instance has completed draining when it has no more @RUNNING@ tasks. You can verify this using 'ListTasks' .
--
-- When a container instance has been drained, you can set a container instance to @ACTIVE@ status and once it has reached that status the Amazon ECS scheduler can begin scheduling tasks on the instance again.
module Network.AWS.ECS.UpdateContainerInstancesState
  ( -- * Creating a Request
    updateContainerInstancesState,
    UpdateContainerInstancesState,

    -- * Request Lenses
    ucisCluster,
    ucisContainerInstances,
    ucisStatus,

    -- * Destructuring the Response
    updateContainerInstancesStateResponse,
    UpdateContainerInstancesStateResponse,

    -- * Response Lenses
    ucisrrsFailures,
    ucisrrsContainerInstances,
    ucisrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateContainerInstancesState' smart constructor.
data UpdateContainerInstancesState = UpdateContainerInstancesState'
  { _ucisCluster ::
      !( Maybe
           Text
       ),
    _ucisContainerInstances ::
      ![Text],
    _ucisStatus ::
      !ContainerInstanceStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateContainerInstancesState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucisCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to update. If you do not specify a cluster, the default cluster is assumed.
--
-- * 'ucisContainerInstances' - A list of container instance IDs or full ARN entries.
--
-- * 'ucisStatus' - The container instance state with which to update the container instance. The only valid values for this action are @ACTIVE@ and @DRAINING@ . A container instance can only be updated to @DRAINING@ status once it has reached an @ACTIVE@ state. If a container instance is in @REGISTERING@ , @DEREGISTERING@ , or @REGISTRATION_FAILED@ state you can describe the container instance but will be unable to update the container instance state.
updateContainerInstancesState ::
  -- | 'ucisStatus'
  ContainerInstanceStatus ->
  UpdateContainerInstancesState
updateContainerInstancesState pStatus_ =
  UpdateContainerInstancesState'
    { _ucisCluster =
        Nothing,
      _ucisContainerInstances = mempty,
      _ucisStatus = pStatus_
    }

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to update. If you do not specify a cluster, the default cluster is assumed.
ucisCluster :: Lens' UpdateContainerInstancesState (Maybe Text)
ucisCluster = lens _ucisCluster (\s a -> s {_ucisCluster = a})

-- | A list of container instance IDs or full ARN entries.
ucisContainerInstances :: Lens' UpdateContainerInstancesState [Text]
ucisContainerInstances = lens _ucisContainerInstances (\s a -> s {_ucisContainerInstances = a}) . _Coerce

-- | The container instance state with which to update the container instance. The only valid values for this action are @ACTIVE@ and @DRAINING@ . A container instance can only be updated to @DRAINING@ status once it has reached an @ACTIVE@ state. If a container instance is in @REGISTERING@ , @DEREGISTERING@ , or @REGISTRATION_FAILED@ state you can describe the container instance but will be unable to update the container instance state.
ucisStatus :: Lens' UpdateContainerInstancesState ContainerInstanceStatus
ucisStatus = lens _ucisStatus (\s a -> s {_ucisStatus = a})

instance AWSRequest UpdateContainerInstancesState where
  type
    Rs UpdateContainerInstancesState =
      UpdateContainerInstancesStateResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          UpdateContainerInstancesStateResponse'
            <$> (x .?> "failures" .!@ mempty)
            <*> (x .?> "containerInstances" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateContainerInstancesState

instance NFData UpdateContainerInstancesState

instance ToHeaders UpdateContainerInstancesState where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.UpdateContainerInstancesState" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateContainerInstancesState where
  toJSON UpdateContainerInstancesState' {..} =
    object
      ( catMaybes
          [ ("cluster" .=) <$> _ucisCluster,
            Just
              ("containerInstances" .= _ucisContainerInstances),
            Just ("status" .= _ucisStatus)
          ]
      )

instance ToPath UpdateContainerInstancesState where
  toPath = const "/"

instance ToQuery UpdateContainerInstancesState where
  toQuery = const mempty

-- | /See:/ 'updateContainerInstancesStateResponse' smart constructor.
data UpdateContainerInstancesStateResponse = UpdateContainerInstancesStateResponse'
  { _ucisrrsFailures ::
      !( Maybe
           [Failure]
       ),
    _ucisrrsContainerInstances ::
      !( Maybe
           [ContainerInstance]
       ),
    _ucisrrsResponseStatus ::
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

-- | Creates a value of 'UpdateContainerInstancesStateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucisrrsFailures' - Any failures associated with the call.
--
-- * 'ucisrrsContainerInstances' - The list of container instances.
--
-- * 'ucisrrsResponseStatus' - -- | The response status code.
updateContainerInstancesStateResponse ::
  -- | 'ucisrrsResponseStatus'
  Int ->
  UpdateContainerInstancesStateResponse
updateContainerInstancesStateResponse
  pResponseStatus_ =
    UpdateContainerInstancesStateResponse'
      { _ucisrrsFailures =
          Nothing,
        _ucisrrsContainerInstances = Nothing,
        _ucisrrsResponseStatus =
          pResponseStatus_
      }

-- | Any failures associated with the call.
ucisrrsFailures :: Lens' UpdateContainerInstancesStateResponse [Failure]
ucisrrsFailures = lens _ucisrrsFailures (\s a -> s {_ucisrrsFailures = a}) . _Default . _Coerce

-- | The list of container instances.
ucisrrsContainerInstances :: Lens' UpdateContainerInstancesStateResponse [ContainerInstance]
ucisrrsContainerInstances = lens _ucisrrsContainerInstances (\s a -> s {_ucisrrsContainerInstances = a}) . _Default . _Coerce

-- | -- | The response status code.
ucisrrsResponseStatus :: Lens' UpdateContainerInstancesStateResponse Int
ucisrrsResponseStatus = lens _ucisrrsResponseStatus (\s a -> s {_ucisrrsResponseStatus = a})

instance NFData UpdateContainerInstancesStateResponse
