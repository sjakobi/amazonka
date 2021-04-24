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
-- Module      : Network.AWS.Lambda.CreateFunction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Lambda function. To create a function, you need a <https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html deployment package> and an <https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role execution role> . The deployment package is a .zip file archive or container image that contains your function code. The execution role grants the function permission to use AWS services, such as Amazon CloudWatch Logs for log streaming and AWS X-Ray for request tracing.
--
--
-- When you create a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute or so. During this time, you can't invoke or modify the function. The @State@ , @StateReason@ , and @StateReasonCode@ fields in the response from 'GetFunctionConfiguration' indicate when the function is ready to invoke. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html Function States> .
--
-- A function has an unpublished version, and can have published versions and aliases. The unpublished version changes when you update your function's code and configuration. A published version is a snapshot of your function code and configuration that can't be changed. An alias is a named resource that maps to a version, and can be changed to map to a different version. Use the @Publish@ parameter to create version @1@ of your function from its initial configuration.
--
-- The other parameters let you configure version-specific and function-level settings. You can modify version-specific settings later with 'UpdateFunctionConfiguration' . Function-level settings apply to both the unpublished and published versions of the function, and include tags ('TagResource' ) and per-function concurrency limits ('PutFunctionConcurrency' ).
--
-- You can use code signing if your deployment package is a .zip file archive. To enable code signing for this function, specify the ARN of a code-signing configuration. When a user attempts to deploy a code package with 'UpdateFunctionCode' , Lambda checks that the code package has a valid signature from a trusted publisher. The code-signing configuration includes set set of signing profiles, which define the trusted publishers for this function.
--
-- If another account or an AWS service invokes your function, use 'AddPermission' to grant permission by creating a resource-based IAM policy. You can grant permissions at the function level, on a version, or on an alias.
--
-- To invoke your function directly, use 'Invoke' . To invoke your function in response to events in other AWS services, create an event source mapping ('CreateEventSourceMapping' ), or configure a function trigger in the other service. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html Invoking Functions> .
module Network.AWS.Lambda.CreateFunction
  ( -- * Creating a Request
    createFunction,
    CreateFunction,

    -- * Request Lenses
    cfVPCConfig,
    cfMemorySize,
    cfPublish,
    cfCodeSigningConfigARN,
    cfTimeout,
    cfHandler,
    cfDeadLetterConfig,
    cfImageConfig,
    cfEnvironment,
    cfKMSKeyARN,
    cfRuntime,
    cfTags,
    cfTracingConfig,
    cfDescription,
    cfLayers,
    cfFileSystemConfigs,
    cfPackageType,
    cfFunctionName,
    cfRole,
    cfCode,

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

-- | /See:/ 'createFunction' smart constructor.
data CreateFunction = CreateFunction'
  { _cfVPCConfig ::
      !(Maybe VPCConfig),
    _cfMemorySize :: !(Maybe Nat),
    _cfPublish :: !(Maybe Bool),
    _cfCodeSigningConfigARN :: !(Maybe Text),
    _cfTimeout :: !(Maybe Nat),
    _cfHandler :: !(Maybe Text),
    _cfDeadLetterConfig ::
      !(Maybe DeadLetterConfig),
    _cfImageConfig :: !(Maybe ImageConfig),
    _cfEnvironment :: !(Maybe Environment),
    _cfKMSKeyARN :: !(Maybe Text),
    _cfRuntime :: !(Maybe Runtime),
    _cfTags :: !(Maybe (Map Text Text)),
    _cfTracingConfig ::
      !(Maybe TracingConfig),
    _cfDescription :: !(Maybe Text),
    _cfLayers :: !(Maybe [Text]),
    _cfFileSystemConfigs ::
      !(Maybe [FileSystemConfig]),
    _cfPackageType :: !(Maybe PackageType),
    _cfFunctionName :: !Text,
    _cfRole :: !Text,
    _cfCode :: !FunctionCode
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateFunction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfVPCConfig' - For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html VPC Settings> .
--
-- * 'cfMemorySize' - The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.
--
-- * 'cfPublish' - Set to true to publish the first version of the function during creation.
--
-- * 'cfCodeSigningConfigARN' - To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function.
--
-- * 'cfTimeout' - The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds.
--
-- * 'cfHandler' - The name of the method within your code that Lambda calls to execute your function. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html Programming Model> .
--
-- * 'cfDeadLetterConfig' - A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq Dead Letter Queues> .
--
-- * 'cfImageConfig' - <https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html Container image configuration values> that override the values in the container image Dockerfile.
--
-- * 'cfEnvironment' - Environment variables that are accessible from function code during execution.
--
-- * 'cfKMSKeyARN' - The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment variables. If it's not provided, AWS Lambda uses a default service key.
--
-- * 'cfRuntime' - The identifier of the function's <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html runtime> .
--
-- * 'cfTags' - A list of <https://docs.aws.amazon.com/lambda/latest/dg/tagging.html tags> to apply to the function.
--
-- * 'cfTracingConfig' - Set @Mode@ to @Active@ to sample and trace a subset of incoming requests with AWS X-Ray.
--
-- * 'cfDescription' - A description of the function.
--
-- * 'cfLayers' - A list of <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html function layers> to add to the function's execution environment. Specify each layer by its ARN, including the version.
--
-- * 'cfFileSystemConfigs' - Connection settings for an Amazon EFS file system.
--
-- * 'cfPackageType' - The type of deployment package. Set to @Image@ for container image and set @Zip@ for ZIP archive.
--
-- * 'cfFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
--
-- * 'cfRole' - The Amazon Resource Name (ARN) of the function's execution role.
--
-- * 'cfCode' - The code for the function.
createFunction ::
  -- | 'cfFunctionName'
  Text ->
  -- | 'cfRole'
  Text ->
  -- | 'cfCode'
  FunctionCode ->
  CreateFunction
createFunction pFunctionName_ pRole_ pCode_ =
  CreateFunction'
    { _cfVPCConfig = Nothing,
      _cfMemorySize = Nothing,
      _cfPublish = Nothing,
      _cfCodeSigningConfigARN = Nothing,
      _cfTimeout = Nothing,
      _cfHandler = Nothing,
      _cfDeadLetterConfig = Nothing,
      _cfImageConfig = Nothing,
      _cfEnvironment = Nothing,
      _cfKMSKeyARN = Nothing,
      _cfRuntime = Nothing,
      _cfTags = Nothing,
      _cfTracingConfig = Nothing,
      _cfDescription = Nothing,
      _cfLayers = Nothing,
      _cfFileSystemConfigs = Nothing,
      _cfPackageType = Nothing,
      _cfFunctionName = pFunctionName_,
      _cfRole = pRole_,
      _cfCode = pCode_
    }

-- | For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html VPC Settings> .
cfVPCConfig :: Lens' CreateFunction (Maybe VPCConfig)
cfVPCConfig = lens _cfVPCConfig (\s a -> s {_cfVPCConfig = a})

-- | The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.
cfMemorySize :: Lens' CreateFunction (Maybe Natural)
cfMemorySize = lens _cfMemorySize (\s a -> s {_cfMemorySize = a}) . mapping _Nat

-- | Set to true to publish the first version of the function during creation.
cfPublish :: Lens' CreateFunction (Maybe Bool)
cfPublish = lens _cfPublish (\s a -> s {_cfPublish = a})

-- | To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function.
cfCodeSigningConfigARN :: Lens' CreateFunction (Maybe Text)
cfCodeSigningConfigARN = lens _cfCodeSigningConfigARN (\s a -> s {_cfCodeSigningConfigARN = a})

-- | The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds.
cfTimeout :: Lens' CreateFunction (Maybe Natural)
cfTimeout = lens _cfTimeout (\s a -> s {_cfTimeout = a}) . mapping _Nat

-- | The name of the method within your code that Lambda calls to execute your function. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html Programming Model> .
cfHandler :: Lens' CreateFunction (Maybe Text)
cfHandler = lens _cfHandler (\s a -> s {_cfHandler = a})

-- | A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq Dead Letter Queues> .
cfDeadLetterConfig :: Lens' CreateFunction (Maybe DeadLetterConfig)
cfDeadLetterConfig = lens _cfDeadLetterConfig (\s a -> s {_cfDeadLetterConfig = a})

-- | <https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html Container image configuration values> that override the values in the container image Dockerfile.
cfImageConfig :: Lens' CreateFunction (Maybe ImageConfig)
cfImageConfig = lens _cfImageConfig (\s a -> s {_cfImageConfig = a})

-- | Environment variables that are accessible from function code during execution.
cfEnvironment :: Lens' CreateFunction (Maybe Environment)
cfEnvironment = lens _cfEnvironment (\s a -> s {_cfEnvironment = a})

-- | The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment variables. If it's not provided, AWS Lambda uses a default service key.
cfKMSKeyARN :: Lens' CreateFunction (Maybe Text)
cfKMSKeyARN = lens _cfKMSKeyARN (\s a -> s {_cfKMSKeyARN = a})

-- | The identifier of the function's <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html runtime> .
cfRuntime :: Lens' CreateFunction (Maybe Runtime)
cfRuntime = lens _cfRuntime (\s a -> s {_cfRuntime = a})

-- | A list of <https://docs.aws.amazon.com/lambda/latest/dg/tagging.html tags> to apply to the function.
cfTags :: Lens' CreateFunction (HashMap Text Text)
cfTags = lens _cfTags (\s a -> s {_cfTags = a}) . _Default . _Map

-- | Set @Mode@ to @Active@ to sample and trace a subset of incoming requests with AWS X-Ray.
cfTracingConfig :: Lens' CreateFunction (Maybe TracingConfig)
cfTracingConfig = lens _cfTracingConfig (\s a -> s {_cfTracingConfig = a})

-- | A description of the function.
cfDescription :: Lens' CreateFunction (Maybe Text)
cfDescription = lens _cfDescription (\s a -> s {_cfDescription = a})

-- | A list of <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html function layers> to add to the function's execution environment. Specify each layer by its ARN, including the version.
cfLayers :: Lens' CreateFunction [Text]
cfLayers = lens _cfLayers (\s a -> s {_cfLayers = a}) . _Default . _Coerce

-- | Connection settings for an Amazon EFS file system.
cfFileSystemConfigs :: Lens' CreateFunction [FileSystemConfig]
cfFileSystemConfigs = lens _cfFileSystemConfigs (\s a -> s {_cfFileSystemConfigs = a}) . _Default . _Coerce

-- | The type of deployment package. Set to @Image@ for container image and set @Zip@ for ZIP archive.
cfPackageType :: Lens' CreateFunction (Maybe PackageType)
cfPackageType = lens _cfPackageType (\s a -> s {_cfPackageType = a})

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
cfFunctionName :: Lens' CreateFunction Text
cfFunctionName = lens _cfFunctionName (\s a -> s {_cfFunctionName = a})

-- | The Amazon Resource Name (ARN) of the function's execution role.
cfRole :: Lens' CreateFunction Text
cfRole = lens _cfRole (\s a -> s {_cfRole = a})

-- | The code for the function.
cfCode :: Lens' CreateFunction FunctionCode
cfCode = lens _cfCode (\s a -> s {_cfCode = a})

instance AWSRequest CreateFunction where
  type Rs CreateFunction = FunctionConfiguration
  request = postJSON lambda
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable CreateFunction

instance NFData CreateFunction

instance ToHeaders CreateFunction where
  toHeaders = const mempty

instance ToJSON CreateFunction where
  toJSON CreateFunction' {..} =
    object
      ( catMaybes
          [ ("VpcConfig" .=) <$> _cfVPCConfig,
            ("MemorySize" .=) <$> _cfMemorySize,
            ("Publish" .=) <$> _cfPublish,
            ("CodeSigningConfigArn" .=)
              <$> _cfCodeSigningConfigARN,
            ("Timeout" .=) <$> _cfTimeout,
            ("Handler" .=) <$> _cfHandler,
            ("DeadLetterConfig" .=) <$> _cfDeadLetterConfig,
            ("ImageConfig" .=) <$> _cfImageConfig,
            ("Environment" .=) <$> _cfEnvironment,
            ("KMSKeyArn" .=) <$> _cfKMSKeyARN,
            ("Runtime" .=) <$> _cfRuntime,
            ("Tags" .=) <$> _cfTags,
            ("TracingConfig" .=) <$> _cfTracingConfig,
            ("Description" .=) <$> _cfDescription,
            ("Layers" .=) <$> _cfLayers,
            ("FileSystemConfigs" .=) <$> _cfFileSystemConfigs,
            ("PackageType" .=) <$> _cfPackageType,
            Just ("FunctionName" .= _cfFunctionName),
            Just ("Role" .= _cfRole),
            Just ("Code" .= _cfCode)
          ]
      )

instance ToPath CreateFunction where
  toPath = const "/2015-03-31/functions"

instance ToQuery CreateFunction where
  toQuery = const mempty
