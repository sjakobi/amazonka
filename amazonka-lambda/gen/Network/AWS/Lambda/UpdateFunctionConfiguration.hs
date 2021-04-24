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
-- Module      : Network.AWS.Lambda.UpdateFunctionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the version-specific settings of a Lambda function.
--
--
-- When you update a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute. During this time, you can't modify the function, but you can still invoke it. The @LastUpdateStatus@ , @LastUpdateStatusReason@ , and @LastUpdateStatusReasonCode@ fields in the response from 'GetFunctionConfiguration' indicate when the update is complete and the function is processing events with the new configuration. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html Function States> .
--
-- These settings can vary between versions of a function and are locked when you publish a version. You can't modify the configuration of a published version, only the unpublished version.
--
-- To configure function concurrency, use 'PutFunctionConcurrency' . To grant invoke permissions to an account or AWS service, use 'AddPermission' .
module Network.AWS.Lambda.UpdateFunctionConfiguration
  ( -- * Creating a Request
    updateFunctionConfiguration,
    UpdateFunctionConfiguration,

    -- * Request Lenses
    uVPCConfig,
    uMemorySize,
    uRevisionId,
    uTimeout,
    uHandler,
    uDeadLetterConfig,
    uImageConfig,
    uEnvironment,
    uKMSKeyARN,
    uRuntime,
    uRole,
    uTracingConfig,
    uDescription,
    uLayers,
    uFileSystemConfigs,
    uFunctionName,

    -- * Destructuring the Response
    functionConfiguration,
    FunctionConfiguration,

    -- * Response Lenses
    fcSigningProfileVersionARN,
    fcLastUpdateStatus,
    fcVPCConfig,
    fcMemorySize,
    fcMasterARN,
    fcRevisionId,
    fcLastUpdateStatusReasonCode,
    fcCodeSha256,
    fcStateReason,
    fcTimeout,
    fcHandler,
    fcDeadLetterConfig,
    fcFunctionName,
    fcEnvironment,
    fcVersion,
    fcFunctionARN,
    fcState,
    fcKMSKeyARN,
    fcRuntime,
    fcRole,
    fcSigningJobARN,
    fcStateReasonCode,
    fcImageConfigResponse,
    fcTracingConfig,
    fcDescription,
    fcLastModified,
    fcLastUpdateStatusReason,
    fcLayers,
    fcCodeSize,
    fcFileSystemConfigs,
    fcPackageType,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateFunctionConfiguration' smart constructor.
data UpdateFunctionConfiguration = UpdateFunctionConfiguration'
  { _uVPCConfig ::
      !( Maybe
           VPCConfig
       ),
    _uMemorySize ::
      !(Maybe Nat),
    _uRevisionId ::
      !(Maybe Text),
    _uTimeout ::
      !(Maybe Nat),
    _uHandler ::
      !(Maybe Text),
    _uDeadLetterConfig ::
      !( Maybe
           DeadLetterConfig
       ),
    _uImageConfig ::
      !( Maybe
           ImageConfig
       ),
    _uEnvironment ::
      !( Maybe
           Environment
       ),
    _uKMSKeyARN ::
      !(Maybe Text),
    _uRuntime ::
      !( Maybe
           Runtime
       ),
    _uRole ::
      !(Maybe Text),
    _uTracingConfig ::
      !( Maybe
           TracingConfig
       ),
    _uDescription ::
      !(Maybe Text),
    _uLayers ::
      !(Maybe [Text]),
    _uFileSystemConfigs ::
      !( Maybe
           [FileSystemConfig]
       ),
    _uFunctionName ::
      !Text
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateFunctionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uVPCConfig' - For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html VPC Settings> .
--
-- * 'uMemorySize' - The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.
--
-- * 'uRevisionId' - Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.
--
-- * 'uTimeout' - The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds.
--
-- * 'uHandler' - The name of the method within your code that Lambda calls to execute your function. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html Programming Model> .
--
-- * 'uDeadLetterConfig' - A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq Dead Letter Queues> .
--
-- * 'uImageConfig' - <https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html Container image configuration values> that override the values in the container image Dockerfile.
--
-- * 'uEnvironment' - Environment variables that are accessible from function code during execution.
--
-- * 'uKMSKeyARN' - The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment variables. If it's not provided, AWS Lambda uses a default service key.
--
-- * 'uRuntime' - The identifier of the function's <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html runtime> .
--
-- * 'uRole' - The Amazon Resource Name (ARN) of the function's execution role.
--
-- * 'uTracingConfig' - Set @Mode@ to @Active@ to sample and trace a subset of incoming requests with AWS X-Ray.
--
-- * 'uDescription' - A description of the function.
--
-- * 'uLayers' - A list of <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html function layers> to add to the function's execution environment. Specify each layer by its ARN, including the version.
--
-- * 'uFileSystemConfigs' - Connection settings for an Amazon EFS file system.
--
-- * 'uFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
updateFunctionConfiguration ::
  -- | 'uFunctionName'
  Text ->
  UpdateFunctionConfiguration
updateFunctionConfiguration pFunctionName_ =
  UpdateFunctionConfiguration'
    { _uVPCConfig = Nothing,
      _uMemorySize = Nothing,
      _uRevisionId = Nothing,
      _uTimeout = Nothing,
      _uHandler = Nothing,
      _uDeadLetterConfig = Nothing,
      _uImageConfig = Nothing,
      _uEnvironment = Nothing,
      _uKMSKeyARN = Nothing,
      _uRuntime = Nothing,
      _uRole = Nothing,
      _uTracingConfig = Nothing,
      _uDescription = Nothing,
      _uLayers = Nothing,
      _uFileSystemConfigs = Nothing,
      _uFunctionName = pFunctionName_
    }

-- | For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html VPC Settings> .
uVPCConfig :: Lens' UpdateFunctionConfiguration (Maybe VPCConfig)
uVPCConfig = lens _uVPCConfig (\s a -> s {_uVPCConfig = a})

-- | The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.
uMemorySize :: Lens' UpdateFunctionConfiguration (Maybe Natural)
uMemorySize = lens _uMemorySize (\s a -> s {_uMemorySize = a}) . mapping _Nat

-- | Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.
uRevisionId :: Lens' UpdateFunctionConfiguration (Maybe Text)
uRevisionId = lens _uRevisionId (\s a -> s {_uRevisionId = a})

-- | The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds.
uTimeout :: Lens' UpdateFunctionConfiguration (Maybe Natural)
uTimeout = lens _uTimeout (\s a -> s {_uTimeout = a}) . mapping _Nat

-- | The name of the method within your code that Lambda calls to execute your function. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html Programming Model> .
uHandler :: Lens' UpdateFunctionConfiguration (Maybe Text)
uHandler = lens _uHandler (\s a -> s {_uHandler = a})

-- | A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq Dead Letter Queues> .
uDeadLetterConfig :: Lens' UpdateFunctionConfiguration (Maybe DeadLetterConfig)
uDeadLetterConfig = lens _uDeadLetterConfig (\s a -> s {_uDeadLetterConfig = a})

-- | <https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html Container image configuration values> that override the values in the container image Dockerfile.
uImageConfig :: Lens' UpdateFunctionConfiguration (Maybe ImageConfig)
uImageConfig = lens _uImageConfig (\s a -> s {_uImageConfig = a})

-- | Environment variables that are accessible from function code during execution.
uEnvironment :: Lens' UpdateFunctionConfiguration (Maybe Environment)
uEnvironment = lens _uEnvironment (\s a -> s {_uEnvironment = a})

-- | The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment variables. If it's not provided, AWS Lambda uses a default service key.
uKMSKeyARN :: Lens' UpdateFunctionConfiguration (Maybe Text)
uKMSKeyARN = lens _uKMSKeyARN (\s a -> s {_uKMSKeyARN = a})

-- | The identifier of the function's <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html runtime> .
uRuntime :: Lens' UpdateFunctionConfiguration (Maybe Runtime)
uRuntime = lens _uRuntime (\s a -> s {_uRuntime = a})

-- | The Amazon Resource Name (ARN) of the function's execution role.
uRole :: Lens' UpdateFunctionConfiguration (Maybe Text)
uRole = lens _uRole (\s a -> s {_uRole = a})

-- | Set @Mode@ to @Active@ to sample and trace a subset of incoming requests with AWS X-Ray.
uTracingConfig :: Lens' UpdateFunctionConfiguration (Maybe TracingConfig)
uTracingConfig = lens _uTracingConfig (\s a -> s {_uTracingConfig = a})

-- | A description of the function.
uDescription :: Lens' UpdateFunctionConfiguration (Maybe Text)
uDescription = lens _uDescription (\s a -> s {_uDescription = a})

-- | A list of <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html function layers> to add to the function's execution environment. Specify each layer by its ARN, including the version.
uLayers :: Lens' UpdateFunctionConfiguration [Text]
uLayers = lens _uLayers (\s a -> s {_uLayers = a}) . _Default . _Coerce

-- | Connection settings for an Amazon EFS file system.
uFileSystemConfigs :: Lens' UpdateFunctionConfiguration [FileSystemConfig]
uFileSystemConfigs = lens _uFileSystemConfigs (\s a -> s {_uFileSystemConfigs = a}) . _Default . _Coerce

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
uFunctionName :: Lens' UpdateFunctionConfiguration Text
uFunctionName = lens _uFunctionName (\s a -> s {_uFunctionName = a})

instance AWSRequest UpdateFunctionConfiguration where
  type
    Rs UpdateFunctionConfiguration =
      FunctionConfiguration
  request = putJSON lambda
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable UpdateFunctionConfiguration

instance NFData UpdateFunctionConfiguration

instance ToHeaders UpdateFunctionConfiguration where
  toHeaders = const mempty

instance ToJSON UpdateFunctionConfiguration where
  toJSON UpdateFunctionConfiguration' {..} =
    object
      ( catMaybes
          [ ("VpcConfig" .=) <$> _uVPCConfig,
            ("MemorySize" .=) <$> _uMemorySize,
            ("RevisionId" .=) <$> _uRevisionId,
            ("Timeout" .=) <$> _uTimeout,
            ("Handler" .=) <$> _uHandler,
            ("DeadLetterConfig" .=) <$> _uDeadLetterConfig,
            ("ImageConfig" .=) <$> _uImageConfig,
            ("Environment" .=) <$> _uEnvironment,
            ("KMSKeyArn" .=) <$> _uKMSKeyARN,
            ("Runtime" .=) <$> _uRuntime,
            ("Role" .=) <$> _uRole,
            ("TracingConfig" .=) <$> _uTracingConfig,
            ("Description" .=) <$> _uDescription,
            ("Layers" .=) <$> _uLayers,
            ("FileSystemConfigs" .=) <$> _uFileSystemConfigs
          ]
      )

instance ToPath UpdateFunctionConfiguration where
  toPath UpdateFunctionConfiguration' {..} =
    mconcat
      [ "/2015-03-31/functions/",
        toBS _uFunctionName,
        "/configuration"
      ]

instance ToQuery UpdateFunctionConfiguration where
  toQuery = const mempty
