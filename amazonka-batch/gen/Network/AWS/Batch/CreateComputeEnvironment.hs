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
-- Module      : Network.AWS.Batch.CreateComputeEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AWS Batch compute environment. You can create @MANAGED@ or @UNMANAGED@ compute environments. @MANAGED@ compute environments can use Amazon EC2 or AWS Fargate resources. @UNMANAGED@ compute environments can only use EC2 resources.
--
--
-- In a managed compute environment, AWS Batch manages the capacity and instance types of the compute resources within the environment. This is based on the compute resource specification that you define or the <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html launch template> that you specify when you create the compute environment. You can choose either to use EC2 On-Demand Instances and EC2 Spot Instances, or to use Fargate and Fargate Spot capacity in your managed compute environment. You can optionally set a maximum price so that Spot Instances only launch when the Spot Instance price is less than a specified percentage of the On-Demand price.
--
-- In an unmanaged compute environment, you can manage your own EC2 compute resources and have a lot of flexibility with how you configure your compute resources. For example, you can use custom AMI. However, you need to verify that your AMI meets the Amazon ECS container instance AMI specification. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html container instance AMIs> in the /Amazon Elastic Container Service Developer Guide/ . After you have created your unmanaged compute environment, you can use the 'DescribeComputeEnvironments' operation to find the Amazon ECS cluster that's associated with it. Then, manually launch your container instances into that Amazon ECS cluster. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html Launching an Amazon ECS container instance> in the /Amazon Elastic Container Service Developer Guide/ .
module Network.AWS.Batch.CreateComputeEnvironment
  ( -- * Creating a Request
    createComputeEnvironment,
    CreateComputeEnvironment,

    -- * Request Lenses
    cceState,
    cceComputeResources,
    cceTags,
    cceComputeEnvironmentName,
    cceType,
    cceServiceRole,

    -- * Destructuring the Response
    createComputeEnvironmentResponse,
    CreateComputeEnvironmentResponse,

    -- * Response Lenses
    ccerrsComputeEnvironmentName,
    ccerrsComputeEnvironmentARN,
    ccerrsResponseStatus,
  )
where

import Network.AWS.Batch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for @CreateComputeEnvironment@ .
--
--
--
-- /See:/ 'createComputeEnvironment' smart constructor.
data CreateComputeEnvironment = CreateComputeEnvironment'
  { _cceState ::
      !(Maybe CEState),
    _cceComputeResources ::
      !( Maybe
           ComputeResource
       ),
    _cceTags ::
      !( Maybe
           (Map Text Text)
       ),
    _cceComputeEnvironmentName ::
      !Text,
    _cceType :: !CEType,
    _cceServiceRole ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateComputeEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cceState' - The state of the compute environment. If the state is @ENABLED@ , then the compute environment accepts jobs from a queue and can scale out automatically based on queues. If the state is @ENABLED@ , then the AWS Batch scheduler can attempt to place jobs from an associated job queue on the compute resources within the environment. If the compute environment is managed, then it can scale its instances out or in automatically, based on the job queue demand. If the state is @DISABLED@ , then the AWS Batch scheduler doesn't attempt to place jobs within the environment. Jobs in a @STARTING@ or @RUNNING@ state continue to progress normally. Managed compute environments in the @DISABLED@ state don't scale out. However, they scale in to @minvCpus@ value after instances become idle.
--
-- * 'cceComputeResources' - Details about the compute resources managed by the compute environment. This parameter is required for managed compute environments. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html Compute Environments> in the /AWS Batch User Guide/ .
--
-- * 'cceTags' - The tags that you apply to the compute environment to help you categorize and organize your resources. Each tag consists of a key and an optional value. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> in /AWS General Reference/ . These tags can be updated or removed using the <https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html TagResource> and <https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html UntagResource> API operations. These tags don't propagate to the underlying compute resources.
--
-- * 'cceComputeEnvironmentName' - The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
--
-- * 'cceType' - The type of the compute environment: @MANAGED@ or @UNMANAGED@ . For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html Compute Environments> in the /AWS Batch User Guide/ .
--
-- * 'cceServiceRole' - The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html AWS Batch service IAM role> in the /AWS Batch User Guide/ . If your specified role has a path other than @/@ , then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.
createComputeEnvironment ::
  -- | 'cceComputeEnvironmentName'
  Text ->
  -- | 'cceType'
  CEType ->
  -- | 'cceServiceRole'
  Text ->
  CreateComputeEnvironment
createComputeEnvironment
  pComputeEnvironmentName_
  pType_
  pServiceRole_ =
    CreateComputeEnvironment'
      { _cceState = Nothing,
        _cceComputeResources = Nothing,
        _cceTags = Nothing,
        _cceComputeEnvironmentName =
          pComputeEnvironmentName_,
        _cceType = pType_,
        _cceServiceRole = pServiceRole_
      }

-- | The state of the compute environment. If the state is @ENABLED@ , then the compute environment accepts jobs from a queue and can scale out automatically based on queues. If the state is @ENABLED@ , then the AWS Batch scheduler can attempt to place jobs from an associated job queue on the compute resources within the environment. If the compute environment is managed, then it can scale its instances out or in automatically, based on the job queue demand. If the state is @DISABLED@ , then the AWS Batch scheduler doesn't attempt to place jobs within the environment. Jobs in a @STARTING@ or @RUNNING@ state continue to progress normally. Managed compute environments in the @DISABLED@ state don't scale out. However, they scale in to @minvCpus@ value after instances become idle.
cceState :: Lens' CreateComputeEnvironment (Maybe CEState)
cceState = lens _cceState (\s a -> s {_cceState = a})

-- | Details about the compute resources managed by the compute environment. This parameter is required for managed compute environments. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html Compute Environments> in the /AWS Batch User Guide/ .
cceComputeResources :: Lens' CreateComputeEnvironment (Maybe ComputeResource)
cceComputeResources = lens _cceComputeResources (\s a -> s {_cceComputeResources = a})

-- | The tags that you apply to the compute environment to help you categorize and organize your resources. Each tag consists of a key and an optional value. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> in /AWS General Reference/ . These tags can be updated or removed using the <https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html TagResource> and <https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html UntagResource> API operations. These tags don't propagate to the underlying compute resources.
cceTags :: Lens' CreateComputeEnvironment (HashMap Text Text)
cceTags = lens _cceTags (\s a -> s {_cceTags = a}) . _Default . _Map

-- | The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
cceComputeEnvironmentName :: Lens' CreateComputeEnvironment Text
cceComputeEnvironmentName = lens _cceComputeEnvironmentName (\s a -> s {_cceComputeEnvironmentName = a})

-- | The type of the compute environment: @MANAGED@ or @UNMANAGED@ . For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html Compute Environments> in the /AWS Batch User Guide/ .
cceType :: Lens' CreateComputeEnvironment CEType
cceType = lens _cceType (\s a -> s {_cceType = a})

-- | The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html AWS Batch service IAM role> in the /AWS Batch User Guide/ . If your specified role has a path other than @/@ , then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.
cceServiceRole :: Lens' CreateComputeEnvironment Text
cceServiceRole = lens _cceServiceRole (\s a -> s {_cceServiceRole = a})

instance AWSRequest CreateComputeEnvironment where
  type
    Rs CreateComputeEnvironment =
      CreateComputeEnvironmentResponse
  request = postJSON batch
  response =
    receiveJSON
      ( \s h x ->
          CreateComputeEnvironmentResponse'
            <$> (x .?> "computeEnvironmentName")
            <*> (x .?> "computeEnvironmentArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateComputeEnvironment

instance NFData CreateComputeEnvironment

instance ToHeaders CreateComputeEnvironment where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateComputeEnvironment where
  toJSON CreateComputeEnvironment' {..} =
    object
      ( catMaybes
          [ ("state" .=) <$> _cceState,
            ("computeResources" .=) <$> _cceComputeResources,
            ("tags" .=) <$> _cceTags,
            Just
              ( "computeEnvironmentName"
                  .= _cceComputeEnvironmentName
              ),
            Just ("type" .= _cceType),
            Just ("serviceRole" .= _cceServiceRole)
          ]
      )

instance ToPath CreateComputeEnvironment where
  toPath = const "/v1/createcomputeenvironment"

instance ToQuery CreateComputeEnvironment where
  toQuery = const mempty

-- | /See:/ 'createComputeEnvironmentResponse' smart constructor.
data CreateComputeEnvironmentResponse = CreateComputeEnvironmentResponse'
  { _ccerrsComputeEnvironmentName ::
      !( Maybe
           Text
       ),
    _ccerrsComputeEnvironmentARN ::
      !( Maybe
           Text
       ),
    _ccerrsResponseStatus ::
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

-- | Creates a value of 'CreateComputeEnvironmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccerrsComputeEnvironmentName' - The name of the compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
--
-- * 'ccerrsComputeEnvironmentARN' - The Amazon Resource Name (ARN) of the compute environment.
--
-- * 'ccerrsResponseStatus' - -- | The response status code.
createComputeEnvironmentResponse ::
  -- | 'ccerrsResponseStatus'
  Int ->
  CreateComputeEnvironmentResponse
createComputeEnvironmentResponse pResponseStatus_ =
  CreateComputeEnvironmentResponse'
    { _ccerrsComputeEnvironmentName =
        Nothing,
      _ccerrsComputeEnvironmentARN = Nothing,
      _ccerrsResponseStatus = pResponseStatus_
    }

-- | The name of the compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
ccerrsComputeEnvironmentName :: Lens' CreateComputeEnvironmentResponse (Maybe Text)
ccerrsComputeEnvironmentName = lens _ccerrsComputeEnvironmentName (\s a -> s {_ccerrsComputeEnvironmentName = a})

-- | The Amazon Resource Name (ARN) of the compute environment.
ccerrsComputeEnvironmentARN :: Lens' CreateComputeEnvironmentResponse (Maybe Text)
ccerrsComputeEnvironmentARN = lens _ccerrsComputeEnvironmentARN (\s a -> s {_ccerrsComputeEnvironmentARN = a})

-- | -- | The response status code.
ccerrsResponseStatus :: Lens' CreateComputeEnvironmentResponse Int
ccerrsResponseStatus = lens _ccerrsResponseStatus (\s a -> s {_ccerrsResponseStatus = a})

instance NFData CreateComputeEnvironmentResponse
