{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.FunctionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.FunctionConfiguration where

import Network.AWS.Lambda.Types.DeadLetterConfig
import Network.AWS.Lambda.Types.EnvironmentResponse
import Network.AWS.Lambda.Types.FileSystemConfig
import Network.AWS.Lambda.Types.ImageConfigResponse
import Network.AWS.Lambda.Types.LastUpdateStatus
import Network.AWS.Lambda.Types.LastUpdateStatusReasonCode
import Network.AWS.Lambda.Types.Layer
import Network.AWS.Lambda.Types.PackageType
import Network.AWS.Lambda.Types.Runtime
import Network.AWS.Lambda.Types.State
import Network.AWS.Lambda.Types.StateReasonCode
import Network.AWS.Lambda.Types.TracingConfigResponse
import Network.AWS.Lambda.Types.VPCConfigResponse
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about a function's configuration.
--
--
--
-- /See:/ 'functionConfiguration' smart constructor.
data FunctionConfiguration = FunctionConfiguration'
  { _fcSigningProfileVersionARN ::
      !(Maybe Text),
    _fcLastUpdateStatus ::
      !(Maybe LastUpdateStatus),
    _fcVPCConfig ::
      !(Maybe VPCConfigResponse),
    _fcMemorySize ::
      !(Maybe Nat),
    _fcMasterARN ::
      !(Maybe Text),
    _fcRevisionId ::
      !(Maybe Text),
    _fcLastUpdateStatusReasonCode ::
      !( Maybe
           LastUpdateStatusReasonCode
       ),
    _fcCodeSha256 ::
      !(Maybe Text),
    _fcStateReason ::
      !(Maybe Text),
    _fcTimeout :: !(Maybe Nat),
    _fcHandler :: !(Maybe Text),
    _fcDeadLetterConfig ::
      !(Maybe DeadLetterConfig),
    _fcFunctionName ::
      !(Maybe Text),
    _fcEnvironment ::
      !( Maybe
           EnvironmentResponse
       ),
    _fcVersion :: !(Maybe Text),
    _fcFunctionARN ::
      !(Maybe Text),
    _fcState :: !(Maybe State),
    _fcKMSKeyARN ::
      !(Maybe Text),
    _fcRuntime ::
      !(Maybe Runtime),
    _fcRole :: !(Maybe Text),
    _fcSigningJobARN ::
      !(Maybe Text),
    _fcStateReasonCode ::
      !(Maybe StateReasonCode),
    _fcImageConfigResponse ::
      !( Maybe
           ImageConfigResponse
       ),
    _fcTracingConfig ::
      !( Maybe
           TracingConfigResponse
       ),
    _fcDescription ::
      !(Maybe Text),
    _fcLastModified ::
      !(Maybe Text),
    _fcLastUpdateStatusReason ::
      !(Maybe Text),
    _fcLayers ::
      !(Maybe [Layer]),
    _fcCodeSize ::
      !(Maybe Integer),
    _fcFileSystemConfigs ::
      !(Maybe [FileSystemConfig]),
    _fcPackageType ::
      !(Maybe PackageType)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FunctionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcSigningProfileVersionARN' - The ARN of the signing profile version.
--
-- * 'fcLastUpdateStatus' - The status of the last update that was performed on the function. This is first set to @Successful@ after function creation completes.
--
-- * 'fcVPCConfig' - The function's networking configuration.
--
-- * 'fcMemorySize' - The amount of memory available to the function at runtime.
--
-- * 'fcMasterARN' - For Lambda@Edge functions, the ARN of the master function.
--
-- * 'fcRevisionId' - The latest updated revision of the function or alias.
--
-- * 'fcLastUpdateStatusReasonCode' - The reason code for the last update that was performed on the function.
--
-- * 'fcCodeSha256' - The SHA256 hash of the function's deployment package.
--
-- * 'fcStateReason' - The reason for the function's current state.
--
-- * 'fcTimeout' - The amount of time in seconds that Lambda allows a function to run before stopping it.
--
-- * 'fcHandler' - The function that Lambda calls to begin executing your function.
--
-- * 'fcDeadLetterConfig' - The function's dead letter queue.
--
-- * 'fcFunctionName' - The name of the function.
--
-- * 'fcEnvironment' - The function's environment variables.
--
-- * 'fcVersion' - The version of the Lambda function.
--
-- * 'fcFunctionARN' - The function's Amazon Resource Name (ARN).
--
-- * 'fcState' - The current state of the function. When the state is @Inactive@ , you can reactivate the function by invoking it.
--
-- * 'fcKMSKeyARN' - The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've configured a customer managed CMK.
--
-- * 'fcRuntime' - The runtime environment for the Lambda function.
--
-- * 'fcRole' - The function's execution role.
--
-- * 'fcSigningJobARN' - The ARN of the signing job.
--
-- * 'fcStateReasonCode' - The reason code for the function's current state. When the code is @Creating@ , you can't invoke or modify the function.
--
-- * 'fcImageConfigResponse' - The function's image configuration values.
--
-- * 'fcTracingConfig' - The function's AWS X-Ray tracing configuration.
--
-- * 'fcDescription' - The function's description.
--
-- * 'fcLastModified' - The date and time that the function was last updated, in <https://www.w3.org/TR/NOTE-datetime ISO-8601 format> (YYYY-MM-DDThh:mm:ss.sTZD).
--
-- * 'fcLastUpdateStatusReason' - The reason for the last update that was performed on the function.
--
-- * 'fcLayers' - The function's <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html layers> .
--
-- * 'fcCodeSize' - The size of the function's deployment package, in bytes.
--
-- * 'fcFileSystemConfigs' - Connection settings for an Amazon EFS file system.
--
-- * 'fcPackageType' - The type of deployment package. Set to @Image@ for container image and set @Zip@ for .zip file archive.
functionConfiguration ::
  FunctionConfiguration
functionConfiguration =
  FunctionConfiguration'
    { _fcSigningProfileVersionARN =
        Nothing,
      _fcLastUpdateStatus = Nothing,
      _fcVPCConfig = Nothing,
      _fcMemorySize = Nothing,
      _fcMasterARN = Nothing,
      _fcRevisionId = Nothing,
      _fcLastUpdateStatusReasonCode = Nothing,
      _fcCodeSha256 = Nothing,
      _fcStateReason = Nothing,
      _fcTimeout = Nothing,
      _fcHandler = Nothing,
      _fcDeadLetterConfig = Nothing,
      _fcFunctionName = Nothing,
      _fcEnvironment = Nothing,
      _fcVersion = Nothing,
      _fcFunctionARN = Nothing,
      _fcState = Nothing,
      _fcKMSKeyARN = Nothing,
      _fcRuntime = Nothing,
      _fcRole = Nothing,
      _fcSigningJobARN = Nothing,
      _fcStateReasonCode = Nothing,
      _fcImageConfigResponse = Nothing,
      _fcTracingConfig = Nothing,
      _fcDescription = Nothing,
      _fcLastModified = Nothing,
      _fcLastUpdateStatusReason = Nothing,
      _fcLayers = Nothing,
      _fcCodeSize = Nothing,
      _fcFileSystemConfigs = Nothing,
      _fcPackageType = Nothing
    }

-- | The ARN of the signing profile version.
fcSigningProfileVersionARN :: Lens' FunctionConfiguration (Maybe Text)
fcSigningProfileVersionARN = lens _fcSigningProfileVersionARN (\s a -> s {_fcSigningProfileVersionARN = a})

-- | The status of the last update that was performed on the function. This is first set to @Successful@ after function creation completes.
fcLastUpdateStatus :: Lens' FunctionConfiguration (Maybe LastUpdateStatus)
fcLastUpdateStatus = lens _fcLastUpdateStatus (\s a -> s {_fcLastUpdateStatus = a})

-- | The function's networking configuration.
fcVPCConfig :: Lens' FunctionConfiguration (Maybe VPCConfigResponse)
fcVPCConfig = lens _fcVPCConfig (\s a -> s {_fcVPCConfig = a})

-- | The amount of memory available to the function at runtime.
fcMemorySize :: Lens' FunctionConfiguration (Maybe Natural)
fcMemorySize = lens _fcMemorySize (\s a -> s {_fcMemorySize = a}) . mapping _Nat

-- | For Lambda@Edge functions, the ARN of the master function.
fcMasterARN :: Lens' FunctionConfiguration (Maybe Text)
fcMasterARN = lens _fcMasterARN (\s a -> s {_fcMasterARN = a})

-- | The latest updated revision of the function or alias.
fcRevisionId :: Lens' FunctionConfiguration (Maybe Text)
fcRevisionId = lens _fcRevisionId (\s a -> s {_fcRevisionId = a})

-- | The reason code for the last update that was performed on the function.
fcLastUpdateStatusReasonCode :: Lens' FunctionConfiguration (Maybe LastUpdateStatusReasonCode)
fcLastUpdateStatusReasonCode = lens _fcLastUpdateStatusReasonCode (\s a -> s {_fcLastUpdateStatusReasonCode = a})

-- | The SHA256 hash of the function's deployment package.
fcCodeSha256 :: Lens' FunctionConfiguration (Maybe Text)
fcCodeSha256 = lens _fcCodeSha256 (\s a -> s {_fcCodeSha256 = a})

-- | The reason for the function's current state.
fcStateReason :: Lens' FunctionConfiguration (Maybe Text)
fcStateReason = lens _fcStateReason (\s a -> s {_fcStateReason = a})

-- | The amount of time in seconds that Lambda allows a function to run before stopping it.
fcTimeout :: Lens' FunctionConfiguration (Maybe Natural)
fcTimeout = lens _fcTimeout (\s a -> s {_fcTimeout = a}) . mapping _Nat

-- | The function that Lambda calls to begin executing your function.
fcHandler :: Lens' FunctionConfiguration (Maybe Text)
fcHandler = lens _fcHandler (\s a -> s {_fcHandler = a})

-- | The function's dead letter queue.
fcDeadLetterConfig :: Lens' FunctionConfiguration (Maybe DeadLetterConfig)
fcDeadLetterConfig = lens _fcDeadLetterConfig (\s a -> s {_fcDeadLetterConfig = a})

-- | The name of the function.
fcFunctionName :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionName = lens _fcFunctionName (\s a -> s {_fcFunctionName = a})

-- | The function's environment variables.
fcEnvironment :: Lens' FunctionConfiguration (Maybe EnvironmentResponse)
fcEnvironment = lens _fcEnvironment (\s a -> s {_fcEnvironment = a})

-- | The version of the Lambda function.
fcVersion :: Lens' FunctionConfiguration (Maybe Text)
fcVersion = lens _fcVersion (\s a -> s {_fcVersion = a})

-- | The function's Amazon Resource Name (ARN).
fcFunctionARN :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionARN = lens _fcFunctionARN (\s a -> s {_fcFunctionARN = a})

-- | The current state of the function. When the state is @Inactive@ , you can reactivate the function by invoking it.
fcState :: Lens' FunctionConfiguration (Maybe State)
fcState = lens _fcState (\s a -> s {_fcState = a})

-- | The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've configured a customer managed CMK.
fcKMSKeyARN :: Lens' FunctionConfiguration (Maybe Text)
fcKMSKeyARN = lens _fcKMSKeyARN (\s a -> s {_fcKMSKeyARN = a})

-- | The runtime environment for the Lambda function.
fcRuntime :: Lens' FunctionConfiguration (Maybe Runtime)
fcRuntime = lens _fcRuntime (\s a -> s {_fcRuntime = a})

-- | The function's execution role.
fcRole :: Lens' FunctionConfiguration (Maybe Text)
fcRole = lens _fcRole (\s a -> s {_fcRole = a})

-- | The ARN of the signing job.
fcSigningJobARN :: Lens' FunctionConfiguration (Maybe Text)
fcSigningJobARN = lens _fcSigningJobARN (\s a -> s {_fcSigningJobARN = a})

-- | The reason code for the function's current state. When the code is @Creating@ , you can't invoke or modify the function.
fcStateReasonCode :: Lens' FunctionConfiguration (Maybe StateReasonCode)
fcStateReasonCode = lens _fcStateReasonCode (\s a -> s {_fcStateReasonCode = a})

-- | The function's image configuration values.
fcImageConfigResponse :: Lens' FunctionConfiguration (Maybe ImageConfigResponse)
fcImageConfigResponse = lens _fcImageConfigResponse (\s a -> s {_fcImageConfigResponse = a})

-- | The function's AWS X-Ray tracing configuration.
fcTracingConfig :: Lens' FunctionConfiguration (Maybe TracingConfigResponse)
fcTracingConfig = lens _fcTracingConfig (\s a -> s {_fcTracingConfig = a})

-- | The function's description.
fcDescription :: Lens' FunctionConfiguration (Maybe Text)
fcDescription = lens _fcDescription (\s a -> s {_fcDescription = a})

-- | The date and time that the function was last updated, in <https://www.w3.org/TR/NOTE-datetime ISO-8601 format> (YYYY-MM-DDThh:mm:ss.sTZD).
fcLastModified :: Lens' FunctionConfiguration (Maybe Text)
fcLastModified = lens _fcLastModified (\s a -> s {_fcLastModified = a})

-- | The reason for the last update that was performed on the function.
fcLastUpdateStatusReason :: Lens' FunctionConfiguration (Maybe Text)
fcLastUpdateStatusReason = lens _fcLastUpdateStatusReason (\s a -> s {_fcLastUpdateStatusReason = a})

-- | The function's <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html layers> .
fcLayers :: Lens' FunctionConfiguration [Layer]
fcLayers = lens _fcLayers (\s a -> s {_fcLayers = a}) . _Default . _Coerce

-- | The size of the function's deployment package, in bytes.
fcCodeSize :: Lens' FunctionConfiguration (Maybe Integer)
fcCodeSize = lens _fcCodeSize (\s a -> s {_fcCodeSize = a})

-- | Connection settings for an Amazon EFS file system.
fcFileSystemConfigs :: Lens' FunctionConfiguration [FileSystemConfig]
fcFileSystemConfigs = lens _fcFileSystemConfigs (\s a -> s {_fcFileSystemConfigs = a}) . _Default . _Coerce

-- | The type of deployment package. Set to @Image@ for container image and set @Zip@ for .zip file archive.
fcPackageType :: Lens' FunctionConfiguration (Maybe PackageType)
fcPackageType = lens _fcPackageType (\s a -> s {_fcPackageType = a})

instance FromJSON FunctionConfiguration where
  parseJSON =
    withObject
      "FunctionConfiguration"
      ( \x ->
          FunctionConfiguration'
            <$> (x .:? "SigningProfileVersionArn")
            <*> (x .:? "LastUpdateStatus")
            <*> (x .:? "VpcConfig")
            <*> (x .:? "MemorySize")
            <*> (x .:? "MasterArn")
            <*> (x .:? "RevisionId")
            <*> (x .:? "LastUpdateStatusReasonCode")
            <*> (x .:? "CodeSha256")
            <*> (x .:? "StateReason")
            <*> (x .:? "Timeout")
            <*> (x .:? "Handler")
            <*> (x .:? "DeadLetterConfig")
            <*> (x .:? "FunctionName")
            <*> (x .:? "Environment")
            <*> (x .:? "Version")
            <*> (x .:? "FunctionArn")
            <*> (x .:? "State")
            <*> (x .:? "KMSKeyArn")
            <*> (x .:? "Runtime")
            <*> (x .:? "Role")
            <*> (x .:? "SigningJobArn")
            <*> (x .:? "StateReasonCode")
            <*> (x .:? "ImageConfigResponse")
            <*> (x .:? "TracingConfig")
            <*> (x .:? "Description")
            <*> (x .:? "LastModified")
            <*> (x .:? "LastUpdateStatusReason")
            <*> (x .:? "Layers" .!= mempty)
            <*> (x .:? "CodeSize")
            <*> (x .:? "FileSystemConfigs" .!= mempty)
            <*> (x .:? "PackageType")
      )

instance Hashable FunctionConfiguration

instance NFData FunctionConfiguration
