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
-- Module      : Network.AWS.ECS.DeleteTaskSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified task set within a service. This is used when a service uses the @EXTERNAL@ deployment controller type. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html Amazon ECS Deployment Types> in the /Amazon Elastic Container Service Developer Guide/ .
module Network.AWS.ECS.DeleteTaskSet
  ( -- * Creating a Request
    deleteTaskSet,
    DeleteTaskSet,

    -- * Request Lenses
    dForce,
    dCluster,
    dService,
    dTaskSet,

    -- * Destructuring the Response
    deleteTaskSetResponse,
    DeleteTaskSetResponse,

    -- * Response Lenses
    dtsrrsTaskSet,
    dtsrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTaskSet' smart constructor.
data DeleteTaskSet = DeleteTaskSet'
  { _dForce ::
      !(Maybe Bool),
    _dCluster :: !Text,
    _dService :: !Text,
    _dTaskSet :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTaskSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dForce' - If @true@ , this allows you to delete a task set even if it hasn't been scaled down to zero.
--
-- * 'dCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task set exists in to delete.
--
-- * 'dService' - The short name or full Amazon Resource Name (ARN) of the service that hosts the task set to delete.
--
-- * 'dTaskSet' - The task set ID or full Amazon Resource Name (ARN) of the task set to delete.
deleteTaskSet ::
  -- | 'dCluster'
  Text ->
  -- | 'dService'
  Text ->
  -- | 'dTaskSet'
  Text ->
  DeleteTaskSet
deleteTaskSet pCluster_ pService_ pTaskSet_ =
  DeleteTaskSet'
    { _dForce = Nothing,
      _dCluster = pCluster_,
      _dService = pService_,
      _dTaskSet = pTaskSet_
    }

-- | If @true@ , this allows you to delete a task set even if it hasn't been scaled down to zero.
dForce :: Lens' DeleteTaskSet (Maybe Bool)
dForce = lens _dForce (\s a -> s {_dForce = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task set exists in to delete.
dCluster :: Lens' DeleteTaskSet Text
dCluster = lens _dCluster (\s a -> s {_dCluster = a})

-- | The short name or full Amazon Resource Name (ARN) of the service that hosts the task set to delete.
dService :: Lens' DeleteTaskSet Text
dService = lens _dService (\s a -> s {_dService = a})

-- | The task set ID or full Amazon Resource Name (ARN) of the task set to delete.
dTaskSet :: Lens' DeleteTaskSet Text
dTaskSet = lens _dTaskSet (\s a -> s {_dTaskSet = a})

instance AWSRequest DeleteTaskSet where
  type Rs DeleteTaskSet = DeleteTaskSetResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DeleteTaskSetResponse'
            <$> (x .?> "taskSet") <*> (pure (fromEnum s))
      )

instance Hashable DeleteTaskSet

instance NFData DeleteTaskSet

instance ToHeaders DeleteTaskSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.DeleteTaskSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteTaskSet where
  toJSON DeleteTaskSet' {..} =
    object
      ( catMaybes
          [ ("force" .=) <$> _dForce,
            Just ("cluster" .= _dCluster),
            Just ("service" .= _dService),
            Just ("taskSet" .= _dTaskSet)
          ]
      )

instance ToPath DeleteTaskSet where
  toPath = const "/"

instance ToQuery DeleteTaskSet where
  toQuery = const mempty

-- | /See:/ 'deleteTaskSetResponse' smart constructor.
data DeleteTaskSetResponse = DeleteTaskSetResponse'
  { _dtsrrsTaskSet ::
      !(Maybe TaskSet),
    _dtsrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTaskSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtsrrsTaskSet' - Undocumented member.
--
-- * 'dtsrrsResponseStatus' - -- | The response status code.
deleteTaskSetResponse ::
  -- | 'dtsrrsResponseStatus'
  Int ->
  DeleteTaskSetResponse
deleteTaskSetResponse pResponseStatus_ =
  DeleteTaskSetResponse'
    { _dtsrrsTaskSet = Nothing,
      _dtsrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dtsrrsTaskSet :: Lens' DeleteTaskSetResponse (Maybe TaskSet)
dtsrrsTaskSet = lens _dtsrrsTaskSet (\s a -> s {_dtsrrsTaskSet = a})

-- | -- | The response status code.
dtsrrsResponseStatus :: Lens' DeleteTaskSetResponse Int
dtsrrsResponseStatus = lens _dtsrrsResponseStatus (\s a -> s {_dtsrrsResponseStatus = a})

instance NFData DeleteTaskSetResponse
