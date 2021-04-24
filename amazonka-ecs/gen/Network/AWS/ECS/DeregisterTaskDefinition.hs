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
-- Module      : Network.AWS.ECS.DeregisterTaskDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deregisters the specified task definition by family and revision. Upon deregistration, the task definition is marked as @INACTIVE@ . Existing tasks and services that reference an @INACTIVE@ task definition continue to run without disruption. Existing services that reference an @INACTIVE@ task definition can still scale up or down by modifying the service's desired count.
--
--
-- You cannot use an @INACTIVE@ task definition to run new tasks or create new services, and you cannot update an existing service to reference an @INACTIVE@ task definition. However, there may be up to a 10-minute window following deregistration where these restrictions have not yet taken effect.
module Network.AWS.ECS.DeregisterTaskDefinition
  ( -- * Creating a Request
    deregisterTaskDefinition,
    DeregisterTaskDefinition,

    -- * Request Lenses
    dtdTaskDefinition,

    -- * Destructuring the Response
    deregisterTaskDefinitionResponse,
    DeregisterTaskDefinitionResponse,

    -- * Response Lenses
    derrsTaskDefinition,
    derrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deregisterTaskDefinition' smart constructor.
newtype DeregisterTaskDefinition = DeregisterTaskDefinition'
  { _dtdTaskDefinition ::
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

-- | Creates a value of 'DeregisterTaskDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtdTaskDefinition' - The @family@ and @revision@ (@family:revision@ ) or full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a @revision@ .
deregisterTaskDefinition ::
  -- | 'dtdTaskDefinition'
  Text ->
  DeregisterTaskDefinition
deregisterTaskDefinition pTaskDefinition_ =
  DeregisterTaskDefinition'
    { _dtdTaskDefinition =
        pTaskDefinition_
    }

-- | The @family@ and @revision@ (@family:revision@ ) or full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a @revision@ .
dtdTaskDefinition :: Lens' DeregisterTaskDefinition Text
dtdTaskDefinition = lens _dtdTaskDefinition (\s a -> s {_dtdTaskDefinition = a})

instance AWSRequest DeregisterTaskDefinition where
  type
    Rs DeregisterTaskDefinition =
      DeregisterTaskDefinitionResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DeregisterTaskDefinitionResponse'
            <$> (x .?> "taskDefinition") <*> (pure (fromEnum s))
      )

instance Hashable DeregisterTaskDefinition

instance NFData DeregisterTaskDefinition

instance ToHeaders DeregisterTaskDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.DeregisterTaskDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeregisterTaskDefinition where
  toJSON DeregisterTaskDefinition' {..} =
    object
      ( catMaybes
          [Just ("taskDefinition" .= _dtdTaskDefinition)]
      )

instance ToPath DeregisterTaskDefinition where
  toPath = const "/"

instance ToQuery DeregisterTaskDefinition where
  toQuery = const mempty

-- | /See:/ 'deregisterTaskDefinitionResponse' smart constructor.
data DeregisterTaskDefinitionResponse = DeregisterTaskDefinitionResponse'
  { _derrsTaskDefinition ::
      !( Maybe
           TaskDefinition
       ),
    _derrsResponseStatus ::
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

-- | Creates a value of 'DeregisterTaskDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsTaskDefinition' - The full description of the deregistered task.
--
-- * 'derrsResponseStatus' - -- | The response status code.
deregisterTaskDefinitionResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DeregisterTaskDefinitionResponse
deregisterTaskDefinitionResponse pResponseStatus_ =
  DeregisterTaskDefinitionResponse'
    { _derrsTaskDefinition =
        Nothing,
      _derrsResponseStatus = pResponseStatus_
    }

-- | The full description of the deregistered task.
derrsTaskDefinition :: Lens' DeregisterTaskDefinitionResponse (Maybe TaskDefinition)
derrsTaskDefinition = lens _derrsTaskDefinition (\s a -> s {_derrsTaskDefinition = a})

-- | -- | The response status code.
derrsResponseStatus :: Lens' DeregisterTaskDefinitionResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DeregisterTaskDefinitionResponse
