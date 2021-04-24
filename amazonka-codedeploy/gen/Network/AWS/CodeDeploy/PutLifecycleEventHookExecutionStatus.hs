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
-- Module      : Network.AWS.CodeDeploy.PutLifecycleEventHookExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the result of a Lambda validation function. The function validates lifecycle hooks during a deployment that uses the AWS Lambda or Amazon ECS compute platform. For AWS Lambda deployments, the available lifecycle hooks are @BeforeAllowTraffic@ and @AfterAllowTraffic@ . For Amazon ECS deployments, the available lifecycle hooks are @BeforeInstall@ , @AfterInstall@ , @AfterAllowTestTraffic@ , @BeforeAllowTraffic@ , and @AfterAllowTraffic@ . Lambda validation functions return @Succeeded@ or @Failed@ . For more information, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-lambda AppSpec 'hooks' Section for an AWS Lambda Deployment > and <https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-ecs AppSpec 'hooks' Section for an Amazon ECS Deployment> .
module Network.AWS.CodeDeploy.PutLifecycleEventHookExecutionStatus
  ( -- * Creating a Request
    putLifecycleEventHookExecutionStatus,
    PutLifecycleEventHookExecutionStatus,

    -- * Request Lenses
    plehesDeploymentId,
    plehesStatus,
    plehesLifecycleEventHookExecutionId,

    -- * Destructuring the Response
    putLifecycleEventHookExecutionStatusResponse,
    PutLifecycleEventHookExecutionStatusResponse,

    -- * Response Lenses
    plehesrrsLifecycleEventHookExecutionId,
    plehesrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putLifecycleEventHookExecutionStatus' smart constructor.
data PutLifecycleEventHookExecutionStatus = PutLifecycleEventHookExecutionStatus'
  { _plehesDeploymentId ::
      !( Maybe
           Text
       ),
    _plehesStatus ::
      !( Maybe
           LifecycleEventStatus
       ),
    _plehesLifecycleEventHookExecutionId ::
      !( Maybe
           Text
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

-- | Creates a value of 'PutLifecycleEventHookExecutionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plehesDeploymentId' - The unique ID of a deployment. Pass this ID to a Lambda function that validates a deployment lifecycle event.
--
-- * 'plehesStatus' - The result of a Lambda function that validates a deployment lifecycle event (@Succeeded@ or @Failed@ ).
--
-- * 'plehesLifecycleEventHookExecutionId' - The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is specified in the @hooks@ section of the AppSpec file.
putLifecycleEventHookExecutionStatus ::
  PutLifecycleEventHookExecutionStatus
putLifecycleEventHookExecutionStatus =
  PutLifecycleEventHookExecutionStatus'
    { _plehesDeploymentId =
        Nothing,
      _plehesStatus = Nothing,
      _plehesLifecycleEventHookExecutionId =
        Nothing
    }

-- | The unique ID of a deployment. Pass this ID to a Lambda function that validates a deployment lifecycle event.
plehesDeploymentId :: Lens' PutLifecycleEventHookExecutionStatus (Maybe Text)
plehesDeploymentId = lens _plehesDeploymentId (\s a -> s {_plehesDeploymentId = a})

-- | The result of a Lambda function that validates a deployment lifecycle event (@Succeeded@ or @Failed@ ).
plehesStatus :: Lens' PutLifecycleEventHookExecutionStatus (Maybe LifecycleEventStatus)
plehesStatus = lens _plehesStatus (\s a -> s {_plehesStatus = a})

-- | The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is specified in the @hooks@ section of the AppSpec file.
plehesLifecycleEventHookExecutionId :: Lens' PutLifecycleEventHookExecutionStatus (Maybe Text)
plehesLifecycleEventHookExecutionId = lens _plehesLifecycleEventHookExecutionId (\s a -> s {_plehesLifecycleEventHookExecutionId = a})

instance
  AWSRequest
    PutLifecycleEventHookExecutionStatus
  where
  type
    Rs PutLifecycleEventHookExecutionStatus =
      PutLifecycleEventHookExecutionStatusResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          PutLifecycleEventHookExecutionStatusResponse'
            <$> (x .?> "lifecycleEventHookExecutionId")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    PutLifecycleEventHookExecutionStatus

instance NFData PutLifecycleEventHookExecutionStatus

instance
  ToHeaders
    PutLifecycleEventHookExecutionStatus
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.PutLifecycleEventHookExecutionStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutLifecycleEventHookExecutionStatus where
  toJSON PutLifecycleEventHookExecutionStatus' {..} =
    object
      ( catMaybes
          [ ("deploymentId" .=) <$> _plehesDeploymentId,
            ("status" .=) <$> _plehesStatus,
            ("lifecycleEventHookExecutionId" .=)
              <$> _plehesLifecycleEventHookExecutionId
          ]
      )

instance ToPath PutLifecycleEventHookExecutionStatus where
  toPath = const "/"

instance ToQuery PutLifecycleEventHookExecutionStatus where
  toQuery = const mempty

-- | /See:/ 'putLifecycleEventHookExecutionStatusResponse' smart constructor.
data PutLifecycleEventHookExecutionStatusResponse = PutLifecycleEventHookExecutionStatusResponse'
  { _plehesrrsLifecycleEventHookExecutionId ::
      !( Maybe
           Text
       ),
    _plehesrrsResponseStatus ::
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

-- | Creates a value of 'PutLifecycleEventHookExecutionStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plehesrrsLifecycleEventHookExecutionId' - The execution ID of the lifecycle event hook. A hook is specified in the @hooks@ section of the deployment's AppSpec file.
--
-- * 'plehesrrsResponseStatus' - -- | The response status code.
putLifecycleEventHookExecutionStatusResponse ::
  -- | 'plehesrrsResponseStatus'
  Int ->
  PutLifecycleEventHookExecutionStatusResponse
putLifecycleEventHookExecutionStatusResponse
  pResponseStatus_ =
    PutLifecycleEventHookExecutionStatusResponse'
      { _plehesrrsLifecycleEventHookExecutionId =
          Nothing,
        _plehesrrsResponseStatus =
          pResponseStatus_
      }

-- | The execution ID of the lifecycle event hook. A hook is specified in the @hooks@ section of the deployment's AppSpec file.
plehesrrsLifecycleEventHookExecutionId :: Lens' PutLifecycleEventHookExecutionStatusResponse (Maybe Text)
plehesrrsLifecycleEventHookExecutionId = lens _plehesrrsLifecycleEventHookExecutionId (\s a -> s {_plehesrrsLifecycleEventHookExecutionId = a})

-- | -- | The response status code.
plehesrrsResponseStatus :: Lens' PutLifecycleEventHookExecutionStatusResponse Int
plehesrrsResponseStatus = lens _plehesrrsResponseStatus (\s a -> s {_plehesrrsResponseStatus = a})

instance
  NFData
    PutLifecycleEventHookExecutionStatusResponse
