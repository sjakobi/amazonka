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
-- Module      : Network.AWS.ECS.DeleteService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified service within a cluster. You can delete a service if you have no running tasks in it and the desired task count is zero. If the service is actively maintaining tasks, you cannot delete it, and you must update the service to a desired task count of zero. For more information, see 'UpdateService' .
--
--
-- /Important:/ If you attempt to create a new service with the same name as an existing service in either @ACTIVE@ or @DRAINING@ status, you receive an error.
module Network.AWS.ECS.DeleteService
  ( -- * Creating a Request
    deleteService,
    DeleteService,

    -- * Request Lenses
    dsForce,
    dsCluster,
    dsService,

    -- * Destructuring the Response
    deleteServiceResponse,
    DeleteServiceResponse,

    -- * Response Lenses
    dsrrsService,
    dsrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteService' smart constructor.
data DeleteService = DeleteService'
  { _dsForce ::
      !(Maybe Bool),
    _dsCluster :: !(Maybe Text),
    _dsService :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsForce' - If @true@ , allows you to delete a service even if it has not been scaled down to zero tasks. It is only necessary to use this if the service is using the @REPLICA@ scheduling strategy.
--
-- * 'dsCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete. If you do not specify a cluster, the default cluster is assumed.
--
-- * 'dsService' - The name of the service to delete.
deleteService ::
  -- | 'dsService'
  Text ->
  DeleteService
deleteService pService_ =
  DeleteService'
    { _dsForce = Nothing,
      _dsCluster = Nothing,
      _dsService = pService_
    }

-- | If @true@ , allows you to delete a service even if it has not been scaled down to zero tasks. It is only necessary to use this if the service is using the @REPLICA@ scheduling strategy.
dsForce :: Lens' DeleteService (Maybe Bool)
dsForce = lens _dsForce (\s a -> s {_dsForce = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete. If you do not specify a cluster, the default cluster is assumed.
dsCluster :: Lens' DeleteService (Maybe Text)
dsCluster = lens _dsCluster (\s a -> s {_dsCluster = a})

-- | The name of the service to delete.
dsService :: Lens' DeleteService Text
dsService = lens _dsService (\s a -> s {_dsService = a})

instance AWSRequest DeleteService where
  type Rs DeleteService = DeleteServiceResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DeleteServiceResponse'
            <$> (x .?> "service") <*> (pure (fromEnum s))
      )

instance Hashable DeleteService

instance NFData DeleteService

instance ToHeaders DeleteService where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.DeleteService" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteService where
  toJSON DeleteService' {..} =
    object
      ( catMaybes
          [ ("force" .=) <$> _dsForce,
            ("cluster" .=) <$> _dsCluster,
            Just ("service" .= _dsService)
          ]
      )

instance ToPath DeleteService where
  toPath = const "/"

instance ToQuery DeleteService where
  toQuery = const mempty

-- | /See:/ 'deleteServiceResponse' smart constructor.
data DeleteServiceResponse = DeleteServiceResponse'
  { _dsrrsService ::
      !(Maybe ContainerService),
    _dsrrsResponseStatus ::
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

-- | Creates a value of 'DeleteServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsService' - The full description of the deleted service.
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
deleteServiceResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DeleteServiceResponse
deleteServiceResponse pResponseStatus_ =
  DeleteServiceResponse'
    { _dsrrsService = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The full description of the deleted service.
dsrrsService :: Lens' DeleteServiceResponse (Maybe ContainerService)
dsrrsService = lens _dsrrsService (\s a -> s {_dsrrsService = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DeleteServiceResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DeleteServiceResponse
