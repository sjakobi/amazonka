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
-- Module      : Network.AWS.Lambda.UpdateFunctionCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Lambda function's code. If code signing is enabled for the function, the code package must be signed by a trusted publisher. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/configuration-trustedcode.html Configuring code signing> .
--
--
-- The function's code is locked when you publish a version. You can't modify the code of a published version, only the unpublished version.
module Network.AWS.Lambda.UpdateFunctionCode
  ( -- * Creating a Request
    updateFunctionCode,
    UpdateFunctionCode,

    -- * Request Lenses
    ufcImageURI,
    ufcPublish,
    ufcRevisionId,
    ufcDryRun,
    ufcS3Bucket,
    ufcZipFile,
    ufcS3ObjectVersion,
    ufcS3Key,
    ufcFunctionName,

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

-- | /See:/ 'updateFunctionCode' smart constructor.
data UpdateFunctionCode = UpdateFunctionCode'
  { _ufcImageURI ::
      !(Maybe Text),
    _ufcPublish :: !(Maybe Bool),
    _ufcRevisionId :: !(Maybe Text),
    _ufcDryRun :: !(Maybe Bool),
    _ufcS3Bucket :: !(Maybe Text),
    _ufcZipFile ::
      !(Maybe (Sensitive Base64)),
    _ufcS3ObjectVersion ::
      !(Maybe Text),
    _ufcS3Key :: !(Maybe Text),
    _ufcFunctionName :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateFunctionCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufcImageURI' - URI of a container image in the Amazon ECR registry.
--
-- * 'ufcPublish' - Set to true to publish a new version of the function after updating the code. This has the same effect as calling 'PublishVersion' separately.
--
-- * 'ufcRevisionId' - Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.
--
-- * 'ufcDryRun' - Set to true to validate the request parameters and access permissions without modifying the function code.
--
-- * 'ufcS3Bucket' - An Amazon S3 bucket in the same AWS Region as your function. The bucket can be in a different AWS account.
--
-- * 'ufcZipFile' - The base64-encoded contents of the deployment package. AWS SDK and AWS CLI clients handle the encoding for you.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'ufcS3ObjectVersion' - For versioned objects, the version of the deployment package object to use.
--
-- * 'ufcS3Key' - The Amazon S3 key of the deployment package.
--
-- * 'ufcFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
updateFunctionCode ::
  -- | 'ufcFunctionName'
  Text ->
  UpdateFunctionCode
updateFunctionCode pFunctionName_ =
  UpdateFunctionCode'
    { _ufcImageURI = Nothing,
      _ufcPublish = Nothing,
      _ufcRevisionId = Nothing,
      _ufcDryRun = Nothing,
      _ufcS3Bucket = Nothing,
      _ufcZipFile = Nothing,
      _ufcS3ObjectVersion = Nothing,
      _ufcS3Key = Nothing,
      _ufcFunctionName = pFunctionName_
    }

-- | URI of a container image in the Amazon ECR registry.
ufcImageURI :: Lens' UpdateFunctionCode (Maybe Text)
ufcImageURI = lens _ufcImageURI (\s a -> s {_ufcImageURI = a})

-- | Set to true to publish a new version of the function after updating the code. This has the same effect as calling 'PublishVersion' separately.
ufcPublish :: Lens' UpdateFunctionCode (Maybe Bool)
ufcPublish = lens _ufcPublish (\s a -> s {_ufcPublish = a})

-- | Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a function that has changed since you last read it.
ufcRevisionId :: Lens' UpdateFunctionCode (Maybe Text)
ufcRevisionId = lens _ufcRevisionId (\s a -> s {_ufcRevisionId = a})

-- | Set to true to validate the request parameters and access permissions without modifying the function code.
ufcDryRun :: Lens' UpdateFunctionCode (Maybe Bool)
ufcDryRun = lens _ufcDryRun (\s a -> s {_ufcDryRun = a})

-- | An Amazon S3 bucket in the same AWS Region as your function. The bucket can be in a different AWS account.
ufcS3Bucket :: Lens' UpdateFunctionCode (Maybe Text)
ufcS3Bucket = lens _ufcS3Bucket (\s a -> s {_ufcS3Bucket = a})

-- | The base64-encoded contents of the deployment package. AWS SDK and AWS CLI clients handle the encoding for you.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
ufcZipFile :: Lens' UpdateFunctionCode (Maybe ByteString)
ufcZipFile = lens _ufcZipFile (\s a -> s {_ufcZipFile = a}) . mapping (_Sensitive . _Base64)

-- | For versioned objects, the version of the deployment package object to use.
ufcS3ObjectVersion :: Lens' UpdateFunctionCode (Maybe Text)
ufcS3ObjectVersion = lens _ufcS3ObjectVersion (\s a -> s {_ufcS3ObjectVersion = a})

-- | The Amazon S3 key of the deployment package.
ufcS3Key :: Lens' UpdateFunctionCode (Maybe Text)
ufcS3Key = lens _ufcS3Key (\s a -> s {_ufcS3Key = a})

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @my-function@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
ufcFunctionName :: Lens' UpdateFunctionCode Text
ufcFunctionName = lens _ufcFunctionName (\s a -> s {_ufcFunctionName = a})

instance AWSRequest UpdateFunctionCode where
  type Rs UpdateFunctionCode = FunctionConfiguration
  request = putJSON lambda
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable UpdateFunctionCode

instance NFData UpdateFunctionCode

instance ToHeaders UpdateFunctionCode where
  toHeaders = const mempty

instance ToJSON UpdateFunctionCode where
  toJSON UpdateFunctionCode' {..} =
    object
      ( catMaybes
          [ ("ImageUri" .=) <$> _ufcImageURI,
            ("Publish" .=) <$> _ufcPublish,
            ("RevisionId" .=) <$> _ufcRevisionId,
            ("DryRun" .=) <$> _ufcDryRun,
            ("S3Bucket" .=) <$> _ufcS3Bucket,
            ("ZipFile" .=) <$> _ufcZipFile,
            ("S3ObjectVersion" .=) <$> _ufcS3ObjectVersion,
            ("S3Key" .=) <$> _ufcS3Key
          ]
      )

instance ToPath UpdateFunctionCode where
  toPath UpdateFunctionCode' {..} =
    mconcat
      [ "/2015-03-31/functions/",
        toBS _ufcFunctionName,
        "/code"
      ]

instance ToQuery UpdateFunctionCode where
  toQuery = const mempty
