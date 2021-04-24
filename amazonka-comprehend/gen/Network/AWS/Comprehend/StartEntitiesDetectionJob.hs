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
-- Module      : Network.AWS.Comprehend.StartEntitiesDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an asynchronous entity detection job for a collection of documents. Use the operation to track the status of a job.
--
--
-- This API can be used for either standard entity detection or custom entity recognition. In order to be used for custom entity recognition, the optional @EntityRecognizerArn@ must be used in order to provide access to the recognizer being used to detect the custom entity.
module Network.AWS.Comprehend.StartEntitiesDetectionJob
  ( -- * Creating a Request
    startEntitiesDetectionJob,
    StartEntitiesDetectionJob,

    -- * Request Lenses
    sVPCConfig,
    sVolumeKMSKeyId,
    sClientRequestToken,
    sEntityRecognizerARN,
    sJobName,
    sInputDataConfig,
    sOutputDataConfig,
    sDataAccessRoleARN,
    sLanguageCode,

    -- * Destructuring the Response
    startEntitiesDetectionJobResponse,
    StartEntitiesDetectionJobResponse,

    -- * Response Lenses
    sedjrersJobStatus,
    sedjrersJobId,
    sedjrersResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startEntitiesDetectionJob' smart constructor.
data StartEntitiesDetectionJob = StartEntitiesDetectionJob'
  { _sVPCConfig ::
      !(Maybe VPCConfig),
    _sVolumeKMSKeyId ::
      !(Maybe Text),
    _sClientRequestToken ::
      !(Maybe Text),
    _sEntityRecognizerARN ::
      !(Maybe Text),
    _sJobName ::
      !(Maybe Text),
    _sInputDataConfig ::
      !InputDataConfig,
    _sOutputDataConfig ::
      !OutputDataConfig,
    _sDataAccessRoleARN ::
      !Text,
    _sLanguageCode ::
      !LanguageCode
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartEntitiesDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sVPCConfig' - Configuration parameters for an optional private Virtual Private Cloud (VPC) containing the resources you are using for your entity detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'sVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'sClientRequestToken' - A unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.
--
-- * 'sEntityRecognizerARN' - The Amazon Resource Name (ARN) that identifies the specific entity recognizer to be used by the @StartEntitiesDetectionJob@ . This ARN is optional and is only used for a custom entity recognition job.
--
-- * 'sJobName' - The identifier of the job.
--
-- * 'sInputDataConfig' - Specifies the format and location of the input data for the job.
--
-- * 'sOutputDataConfig' - Specifies where to send the output files.
--
-- * 'sDataAccessRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions> .
--
-- * 'sLanguageCode' - The language of the input documents. All documents must be in the same language. You can specify any of the languages supported by Amazon Comprehend. If custom entities recognition is used, this parameter is ignored and the language used for training the model is used instead.
startEntitiesDetectionJob ::
  -- | 'sInputDataConfig'
  InputDataConfig ->
  -- | 'sOutputDataConfig'
  OutputDataConfig ->
  -- | 'sDataAccessRoleARN'
  Text ->
  -- | 'sLanguageCode'
  LanguageCode ->
  StartEntitiesDetectionJob
startEntitiesDetectionJob
  pInputDataConfig_
  pOutputDataConfig_
  pDataAccessRoleARN_
  pLanguageCode_ =
    StartEntitiesDetectionJob'
      { _sVPCConfig = Nothing,
        _sVolumeKMSKeyId = Nothing,
        _sClientRequestToken = Nothing,
        _sEntityRecognizerARN = Nothing,
        _sJobName = Nothing,
        _sInputDataConfig = pInputDataConfig_,
        _sOutputDataConfig = pOutputDataConfig_,
        _sDataAccessRoleARN = pDataAccessRoleARN_,
        _sLanguageCode = pLanguageCode_
      }

-- | Configuration parameters for an optional private Virtual Private Cloud (VPC) containing the resources you are using for your entity detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
sVPCConfig :: Lens' StartEntitiesDetectionJob (Maybe VPCConfig)
sVPCConfig = lens _sVPCConfig (\s a -> s {_sVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
sVolumeKMSKeyId :: Lens' StartEntitiesDetectionJob (Maybe Text)
sVolumeKMSKeyId = lens _sVolumeKMSKeyId (\s a -> s {_sVolumeKMSKeyId = a})

-- | A unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.
sClientRequestToken :: Lens' StartEntitiesDetectionJob (Maybe Text)
sClientRequestToken = lens _sClientRequestToken (\s a -> s {_sClientRequestToken = a})

-- | The Amazon Resource Name (ARN) that identifies the specific entity recognizer to be used by the @StartEntitiesDetectionJob@ . This ARN is optional and is only used for a custom entity recognition job.
sEntityRecognizerARN :: Lens' StartEntitiesDetectionJob (Maybe Text)
sEntityRecognizerARN = lens _sEntityRecognizerARN (\s a -> s {_sEntityRecognizerARN = a})

-- | The identifier of the job.
sJobName :: Lens' StartEntitiesDetectionJob (Maybe Text)
sJobName = lens _sJobName (\s a -> s {_sJobName = a})

-- | Specifies the format and location of the input data for the job.
sInputDataConfig :: Lens' StartEntitiesDetectionJob InputDataConfig
sInputDataConfig = lens _sInputDataConfig (\s a -> s {_sInputDataConfig = a})

-- | Specifies where to send the output files.
sOutputDataConfig :: Lens' StartEntitiesDetectionJob OutputDataConfig
sOutputDataConfig = lens _sOutputDataConfig (\s a -> s {_sOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions> .
sDataAccessRoleARN :: Lens' StartEntitiesDetectionJob Text
sDataAccessRoleARN = lens _sDataAccessRoleARN (\s a -> s {_sDataAccessRoleARN = a})

-- | The language of the input documents. All documents must be in the same language. You can specify any of the languages supported by Amazon Comprehend. If custom entities recognition is used, this parameter is ignored and the language used for training the model is used instead.
sLanguageCode :: Lens' StartEntitiesDetectionJob LanguageCode
sLanguageCode = lens _sLanguageCode (\s a -> s {_sLanguageCode = a})

instance AWSRequest StartEntitiesDetectionJob where
  type
    Rs StartEntitiesDetectionJob =
      StartEntitiesDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          StartEntitiesDetectionJobResponse'
            <$> (x .?> "JobStatus")
            <*> (x .?> "JobId")
            <*> (pure (fromEnum s))
      )

instance Hashable StartEntitiesDetectionJob

instance NFData StartEntitiesDetectionJob

instance ToHeaders StartEntitiesDetectionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.StartEntitiesDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartEntitiesDetectionJob where
  toJSON StartEntitiesDetectionJob' {..} =
    object
      ( catMaybes
          [ ("VpcConfig" .=) <$> _sVPCConfig,
            ("VolumeKmsKeyId" .=) <$> _sVolumeKMSKeyId,
            ("ClientRequestToken" .=) <$> _sClientRequestToken,
            ("EntityRecognizerArn" .=) <$> _sEntityRecognizerARN,
            ("JobName" .=) <$> _sJobName,
            Just ("InputDataConfig" .= _sInputDataConfig),
            Just ("OutputDataConfig" .= _sOutputDataConfig),
            Just ("DataAccessRoleArn" .= _sDataAccessRoleARN),
            Just ("LanguageCode" .= _sLanguageCode)
          ]
      )

instance ToPath StartEntitiesDetectionJob where
  toPath = const "/"

instance ToQuery StartEntitiesDetectionJob where
  toQuery = const mempty

-- | /See:/ 'startEntitiesDetectionJobResponse' smart constructor.
data StartEntitiesDetectionJobResponse = StartEntitiesDetectionJobResponse'
  { _sedjrersJobStatus ::
      !( Maybe
           JobStatus
       ),
    _sedjrersJobId ::
      !( Maybe
           Text
       ),
    _sedjrersResponseStatus ::
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

-- | Creates a value of 'StartEntitiesDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sedjrersJobStatus' - The status of the job.      * SUBMITTED - The job has been received and is queued for processing.     * IN_PROGRESS - Amazon Comprehend is processing the job.     * COMPLETED - The job was successfully completed and the output is available.     * FAILED - The job did not complete. To get details, use the operation.     * STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is processing the request.     * STOPPED - The job was successfully stopped without completing.
--
-- * 'sedjrersJobId' - The identifier generated for the job. To get the status of job, use this identifier with the operation.
--
-- * 'sedjrersResponseStatus' - -- | The response status code.
startEntitiesDetectionJobResponse ::
  -- | 'sedjrersResponseStatus'
  Int ->
  StartEntitiesDetectionJobResponse
startEntitiesDetectionJobResponse pResponseStatus_ =
  StartEntitiesDetectionJobResponse'
    { _sedjrersJobStatus =
        Nothing,
      _sedjrersJobId = Nothing,
      _sedjrersResponseStatus =
        pResponseStatus_
    }

-- | The status of the job.      * SUBMITTED - The job has been received and is queued for processing.     * IN_PROGRESS - Amazon Comprehend is processing the job.     * COMPLETED - The job was successfully completed and the output is available.     * FAILED - The job did not complete. To get details, use the operation.     * STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is processing the request.     * STOPPED - The job was successfully stopped without completing.
sedjrersJobStatus :: Lens' StartEntitiesDetectionJobResponse (Maybe JobStatus)
sedjrersJobStatus = lens _sedjrersJobStatus (\s a -> s {_sedjrersJobStatus = a})

-- | The identifier generated for the job. To get the status of job, use this identifier with the operation.
sedjrersJobId :: Lens' StartEntitiesDetectionJobResponse (Maybe Text)
sedjrersJobId = lens _sedjrersJobId (\s a -> s {_sedjrersJobId = a})

-- | -- | The response status code.
sedjrersResponseStatus :: Lens' StartEntitiesDetectionJobResponse Int
sedjrersResponseStatus = lens _sedjrersResponseStatus (\s a -> s {_sedjrersResponseStatus = a})

instance NFData StartEntitiesDetectionJobResponse
