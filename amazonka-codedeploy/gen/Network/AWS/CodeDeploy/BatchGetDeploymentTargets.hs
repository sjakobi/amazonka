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
-- Module      : Network.AWS.CodeDeploy.BatchGetDeploymentTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of one or more targets associated with a deployment. This method works with all compute types and should be used instead of the deprecated @BatchGetDeploymentInstances@ . The maximum number of targets that can be returned is 25.
--
--
-- The type of targets returned depends on the deployment's compute platform or deployment method:
--
--     * __EC2/On-premises__ : Information about EC2 instance targets.
--
--     * __AWS Lambda__ : Information about Lambda functions targets.
--
--     * __Amazon ECS__ : Information about Amazon ECS service targets.
--
--     * __CloudFormation__ : Information about targets of blue/green deployments initiated by a CloudFormation stack update.
module Network.AWS.CodeDeploy.BatchGetDeploymentTargets
  ( -- * Creating a Request
    batchGetDeploymentTargets,
    BatchGetDeploymentTargets,

    -- * Request Lenses
    bgdtTargetIds,
    bgdtDeploymentId,

    -- * Destructuring the Response
    batchGetDeploymentTargetsResponse,
    BatchGetDeploymentTargetsResponse,

    -- * Response Lenses
    bgdtrrsDeploymentTargets,
    bgdtrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetDeploymentTargets' smart constructor.
data BatchGetDeploymentTargets = BatchGetDeploymentTargets'
  { _bgdtTargetIds ::
      !(Maybe [Text]),
    _bgdtDeploymentId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchGetDeploymentTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgdtTargetIds' - The unique IDs of the deployment targets. The compute platform of the deployment determines the type of the targets and their formats. The maximum number of deployment target IDs you can specify is 25.     * For deployments that use the EC2/On-premises compute platform, the target IDs are EC2 or on-premises instances IDs, and their target type is @instanceTarget@ .      * For deployments that use the AWS Lambda compute platform, the target IDs are the names of Lambda functions, and their target type is @instanceTarget@ .      * For deployments that use the Amazon ECS compute platform, the target IDs are pairs of Amazon ECS clusters and services specified using the format @<clustername>:<servicename>@ . Their target type is @ecsTarget@ .      * For deployments that are deployed with AWS CloudFormation, the target IDs are CloudFormation stack IDs. Their target type is @cloudFormationTarget@ .
--
-- * 'bgdtDeploymentId' - The unique ID of a deployment.
batchGetDeploymentTargets ::
  BatchGetDeploymentTargets
batchGetDeploymentTargets =
  BatchGetDeploymentTargets'
    { _bgdtTargetIds =
        Nothing,
      _bgdtDeploymentId = Nothing
    }

-- | The unique IDs of the deployment targets. The compute platform of the deployment determines the type of the targets and their formats. The maximum number of deployment target IDs you can specify is 25.     * For deployments that use the EC2/On-premises compute platform, the target IDs are EC2 or on-premises instances IDs, and their target type is @instanceTarget@ .      * For deployments that use the AWS Lambda compute platform, the target IDs are the names of Lambda functions, and their target type is @instanceTarget@ .      * For deployments that use the Amazon ECS compute platform, the target IDs are pairs of Amazon ECS clusters and services specified using the format @<clustername>:<servicename>@ . Their target type is @ecsTarget@ .      * For deployments that are deployed with AWS CloudFormation, the target IDs are CloudFormation stack IDs. Their target type is @cloudFormationTarget@ .
bgdtTargetIds :: Lens' BatchGetDeploymentTargets [Text]
bgdtTargetIds = lens _bgdtTargetIds (\s a -> s {_bgdtTargetIds = a}) . _Default . _Coerce

-- | The unique ID of a deployment.
bgdtDeploymentId :: Lens' BatchGetDeploymentTargets (Maybe Text)
bgdtDeploymentId = lens _bgdtDeploymentId (\s a -> s {_bgdtDeploymentId = a})

instance AWSRequest BatchGetDeploymentTargets where
  type
    Rs BatchGetDeploymentTargets =
      BatchGetDeploymentTargetsResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          BatchGetDeploymentTargetsResponse'
            <$> (x .?> "deploymentTargets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetDeploymentTargets

instance NFData BatchGetDeploymentTargets

instance ToHeaders BatchGetDeploymentTargets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.BatchGetDeploymentTargets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetDeploymentTargets where
  toJSON BatchGetDeploymentTargets' {..} =
    object
      ( catMaybes
          [ ("targetIds" .=) <$> _bgdtTargetIds,
            ("deploymentId" .=) <$> _bgdtDeploymentId
          ]
      )

instance ToPath BatchGetDeploymentTargets where
  toPath = const "/"

instance ToQuery BatchGetDeploymentTargets where
  toQuery = const mempty

-- | /See:/ 'batchGetDeploymentTargetsResponse' smart constructor.
data BatchGetDeploymentTargetsResponse = BatchGetDeploymentTargetsResponse'
  { _bgdtrrsDeploymentTargets ::
      !( Maybe
           [DeploymentTarget]
       ),
    _bgdtrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetDeploymentTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgdtrrsDeploymentTargets' - A list of target objects for a deployment. Each target object contains details about the target, such as its status and lifecycle events. The type of the target objects depends on the deployment' compute platform.      * __EC2/On-premises__ : Each target object is an EC2 or on-premises instance.      * __AWS Lambda__ : The target object is a specific version of an AWS Lambda function.      * __Amazon ECS__ : The target object is an Amazon ECS service.      * __CloudFormation__ : The target object is an AWS CloudFormation blue/green deployment.
--
-- * 'bgdtrrsResponseStatus' - -- | The response status code.
batchGetDeploymentTargetsResponse ::
  -- | 'bgdtrrsResponseStatus'
  Int ->
  BatchGetDeploymentTargetsResponse
batchGetDeploymentTargetsResponse pResponseStatus_ =
  BatchGetDeploymentTargetsResponse'
    { _bgdtrrsDeploymentTargets =
        Nothing,
      _bgdtrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of target objects for a deployment. Each target object contains details about the target, such as its status and lifecycle events. The type of the target objects depends on the deployment' compute platform.      * __EC2/On-premises__ : Each target object is an EC2 or on-premises instance.      * __AWS Lambda__ : The target object is a specific version of an AWS Lambda function.      * __Amazon ECS__ : The target object is an Amazon ECS service.      * __CloudFormation__ : The target object is an AWS CloudFormation blue/green deployment.
bgdtrrsDeploymentTargets :: Lens' BatchGetDeploymentTargetsResponse [DeploymentTarget]
bgdtrrsDeploymentTargets = lens _bgdtrrsDeploymentTargets (\s a -> s {_bgdtrrsDeploymentTargets = a}) . _Default . _Coerce

-- | -- | The response status code.
bgdtrrsResponseStatus :: Lens' BatchGetDeploymentTargetsResponse Int
bgdtrrsResponseStatus = lens _bgdtrrsResponseStatus (\s a -> s {_bgdtrrsResponseStatus = a})

instance NFData BatchGetDeploymentTargetsResponse
