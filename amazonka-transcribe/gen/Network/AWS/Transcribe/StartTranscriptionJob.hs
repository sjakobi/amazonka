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
-- Module      : Network.AWS.Transcribe.StartTranscriptionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an asynchronous job to transcribe speech to text.
module Network.AWS.Transcribe.StartTranscriptionJob
  ( -- * Creating a Request
    startTranscriptionJob,
    StartTranscriptionJob,

    -- * Request Lenses
    stjLanguageCode,
    stjMediaFormat,
    stjContentRedaction,
    stjIdentifyLanguage,
    stjOutputKey,
    stjModelSettings,
    stjOutputEncryptionKMSKeyId,
    stjMediaSampleRateHertz,
    stjOutputBucketName,
    stjJobExecutionSettings,
    stjSettings,
    stjLanguageOptions,
    stjTranscriptionJobName,
    stjMedia,

    -- * Destructuring the Response
    startTranscriptionJobResponse,
    StartTranscriptionJobResponse,

    -- * Response Lenses
    stjrrsTranscriptionJob,
    stjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'startTranscriptionJob' smart constructor.
data StartTranscriptionJob = StartTranscriptionJob'
  { _stjLanguageCode ::
      !(Maybe LanguageCode),
    _stjMediaFormat ::
      !(Maybe MediaFormat),
    _stjContentRedaction ::
      !(Maybe ContentRedaction),
    _stjIdentifyLanguage ::
      !(Maybe Bool),
    _stjOutputKey ::
      !(Maybe Text),
    _stjModelSettings ::
      !(Maybe ModelSettings),
    _stjOutputEncryptionKMSKeyId ::
      !(Maybe Text),
    _stjMediaSampleRateHertz ::
      !(Maybe Nat),
    _stjOutputBucketName ::
      !(Maybe Text),
    _stjJobExecutionSettings ::
      !( Maybe
           JobExecutionSettings
       ),
    _stjSettings ::
      !(Maybe Settings),
    _stjLanguageOptions ::
      !( Maybe
           (List1 LanguageCode)
       ),
    _stjTranscriptionJobName ::
      !Text,
    _stjMedia :: !Media
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartTranscriptionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stjLanguageCode' - The language code for the language used in the input media file.
--
-- * 'stjMediaFormat' - The format of the input media file.
--
-- * 'stjContentRedaction' - An object that contains the request parameters for content redaction.
--
-- * 'stjIdentifyLanguage' - Set this field to @true@ to enable automatic language identification. Automatic language identification is disabled by default. You receive a @BadRequestException@ error if you enter a value for a @LanguageCode@ .
--
-- * 'stjOutputKey' - You can specify a location in an Amazon S3 bucket to store the output of your transcription job. If you don't specify an output key, Amazon Transcribe stores the output of your transcription job in the Amazon S3 bucket you specified. By default, the object key is "your-transcription-job-name.json". You can use output keys to specify the Amazon S3 prefix and file name of the transcription output. For example, specifying the Amazon S3 prefix, "folder1/folder2/", as an output key would lead to the output being stored as "folder1/folder2/your-transcription-job-name.json". If you specify "my-other-job-name.json" as the output key, the object key is changed to "my-other-job-name.json". You can use an output key to change both the prefix and the file name, for example "folder/my-other-job-name.json". If you specify an output key, you must also specify an S3 bucket in the @OutputBucketName@ parameter.
--
-- * 'stjModelSettings' - Choose the custom language model you use for your transcription job in this parameter.
--
-- * 'stjOutputEncryptionKMSKeyId' - The Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key used to encrypt the output of the transcription job. The user calling the @StartTranscriptionJob@ operation must have permission to use the specified KMS key. You can use either of the following to identify a KMS key in the current account:     * KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"     * KMS Key Alias: "alias/ExampleAlias" You can use either of the following to identify a KMS key in the current account or another account:     * Amazon Resource Name (ARN) of a KMS Key: "arn:aws:kms:region:account ID:key/1234abcd-12ab-34cd-56ef-1234567890ab"     * ARN of a KMS Key Alias: "arn:aws:kms:region:account ID:alias/ExampleAlias" If you don't specify an encryption key, the output of the transcription job is encrypted with the default Amazon S3 key (SSE-S3).  If you specify a KMS key to encrypt your output, you must also specify an output location in the @OutputBucketName@ parameter.
--
-- * 'stjMediaSampleRateHertz' - The sample rate, in Hertz, of the audio track in the input media file.  If you do not specify the media sample rate, Amazon Transcribe determines the sample rate. If you specify the sample rate, it must match the sample rate detected by Amazon Transcribe. In most cases, you should leave the @MediaSampleRateHertz@ field blank and let Amazon Transcribe determine the sample rate.
--
-- * 'stjOutputBucketName' - The location where the transcription is stored. If you set the @OutputBucketName@ , Amazon Transcribe puts the transcript in the specified S3 bucket. When you call the 'GetTranscriptionJob' operation, the operation returns this location in the @TranscriptFileUri@ field. If you enable content redaction, the redacted transcript appears in @RedactedTranscriptFileUri@ . If you enable content redaction and choose to output an unredacted transcript, that transcript's location still appears in the @TranscriptFileUri@ . The S3 bucket must have permissions that allow Amazon Transcribe to put files in the bucket. For more information, see <https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user Permissions Required for IAM User Roles> . You can specify an AWS Key Management Service (KMS) key to encrypt the output of your transcription using the @OutputEncryptionKMSKeyId@ parameter. If you don't specify a KMS key, Amazon Transcribe uses the default Amazon S3 key for server-side encryption of transcripts that are placed in your S3 bucket. If you don't set the @OutputBucketName@ , Amazon Transcribe generates a pre-signed URL, a shareable URL that provides secure access to your transcription, and returns it in the @TranscriptFileUri@ field. Use this URL to download the transcription.
--
-- * 'stjJobExecutionSettings' - Provides information about how a transcription job is executed. Use this field to indicate that the job can be queued for deferred execution if the concurrency limit is reached and there are no slots available to immediately run the job.
--
-- * 'stjSettings' - A @Settings@ object that provides optional settings for a transcription job.
--
-- * 'stjLanguageOptions' - An object containing a list of languages that might be present in your collection of audio files. Automatic language identification chooses a language that best matches the source audio from that list.
--
-- * 'stjTranscriptionJobName' - The name of the job. You can't use the strings "@.@ " or "@..@ " by themselves as the job name. The name must also be unique within an AWS account. If you try to create a transcription job with the same name as a previous transcription job, you get a @ConflictException@ error.
--
-- * 'stjMedia' - An object that describes the input media for a transcription job.
startTranscriptionJob ::
  -- | 'stjTranscriptionJobName'
  Text ->
  -- | 'stjMedia'
  Media ->
  StartTranscriptionJob
startTranscriptionJob pTranscriptionJobName_ pMedia_ =
  StartTranscriptionJob'
    { _stjLanguageCode = Nothing,
      _stjMediaFormat = Nothing,
      _stjContentRedaction = Nothing,
      _stjIdentifyLanguage = Nothing,
      _stjOutputKey = Nothing,
      _stjModelSettings = Nothing,
      _stjOutputEncryptionKMSKeyId = Nothing,
      _stjMediaSampleRateHertz = Nothing,
      _stjOutputBucketName = Nothing,
      _stjJobExecutionSettings = Nothing,
      _stjSettings = Nothing,
      _stjLanguageOptions = Nothing,
      _stjTranscriptionJobName = pTranscriptionJobName_,
      _stjMedia = pMedia_
    }

-- | The language code for the language used in the input media file.
stjLanguageCode :: Lens' StartTranscriptionJob (Maybe LanguageCode)
stjLanguageCode = lens _stjLanguageCode (\s a -> s {_stjLanguageCode = a})

-- | The format of the input media file.
stjMediaFormat :: Lens' StartTranscriptionJob (Maybe MediaFormat)
stjMediaFormat = lens _stjMediaFormat (\s a -> s {_stjMediaFormat = a})

-- | An object that contains the request parameters for content redaction.
stjContentRedaction :: Lens' StartTranscriptionJob (Maybe ContentRedaction)
stjContentRedaction = lens _stjContentRedaction (\s a -> s {_stjContentRedaction = a})

-- | Set this field to @true@ to enable automatic language identification. Automatic language identification is disabled by default. You receive a @BadRequestException@ error if you enter a value for a @LanguageCode@ .
stjIdentifyLanguage :: Lens' StartTranscriptionJob (Maybe Bool)
stjIdentifyLanguage = lens _stjIdentifyLanguage (\s a -> s {_stjIdentifyLanguage = a})

-- | You can specify a location in an Amazon S3 bucket to store the output of your transcription job. If you don't specify an output key, Amazon Transcribe stores the output of your transcription job in the Amazon S3 bucket you specified. By default, the object key is "your-transcription-job-name.json". You can use output keys to specify the Amazon S3 prefix and file name of the transcription output. For example, specifying the Amazon S3 prefix, "folder1/folder2/", as an output key would lead to the output being stored as "folder1/folder2/your-transcription-job-name.json". If you specify "my-other-job-name.json" as the output key, the object key is changed to "my-other-job-name.json". You can use an output key to change both the prefix and the file name, for example "folder/my-other-job-name.json". If you specify an output key, you must also specify an S3 bucket in the @OutputBucketName@ parameter.
stjOutputKey :: Lens' StartTranscriptionJob (Maybe Text)
stjOutputKey = lens _stjOutputKey (\s a -> s {_stjOutputKey = a})

-- | Choose the custom language model you use for your transcription job in this parameter.
stjModelSettings :: Lens' StartTranscriptionJob (Maybe ModelSettings)
stjModelSettings = lens _stjModelSettings (\s a -> s {_stjModelSettings = a})

-- | The Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key used to encrypt the output of the transcription job. The user calling the @StartTranscriptionJob@ operation must have permission to use the specified KMS key. You can use either of the following to identify a KMS key in the current account:     * KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"     * KMS Key Alias: "alias/ExampleAlias" You can use either of the following to identify a KMS key in the current account or another account:     * Amazon Resource Name (ARN) of a KMS Key: "arn:aws:kms:region:account ID:key/1234abcd-12ab-34cd-56ef-1234567890ab"     * ARN of a KMS Key Alias: "arn:aws:kms:region:account ID:alias/ExampleAlias" If you don't specify an encryption key, the output of the transcription job is encrypted with the default Amazon S3 key (SSE-S3).  If you specify a KMS key to encrypt your output, you must also specify an output location in the @OutputBucketName@ parameter.
stjOutputEncryptionKMSKeyId :: Lens' StartTranscriptionJob (Maybe Text)
stjOutputEncryptionKMSKeyId = lens _stjOutputEncryptionKMSKeyId (\s a -> s {_stjOutputEncryptionKMSKeyId = a})

-- | The sample rate, in Hertz, of the audio track in the input media file.  If you do not specify the media sample rate, Amazon Transcribe determines the sample rate. If you specify the sample rate, it must match the sample rate detected by Amazon Transcribe. In most cases, you should leave the @MediaSampleRateHertz@ field blank and let Amazon Transcribe determine the sample rate.
stjMediaSampleRateHertz :: Lens' StartTranscriptionJob (Maybe Natural)
stjMediaSampleRateHertz = lens _stjMediaSampleRateHertz (\s a -> s {_stjMediaSampleRateHertz = a}) . mapping _Nat

-- | The location where the transcription is stored. If you set the @OutputBucketName@ , Amazon Transcribe puts the transcript in the specified S3 bucket. When you call the 'GetTranscriptionJob' operation, the operation returns this location in the @TranscriptFileUri@ field. If you enable content redaction, the redacted transcript appears in @RedactedTranscriptFileUri@ . If you enable content redaction and choose to output an unredacted transcript, that transcript's location still appears in the @TranscriptFileUri@ . The S3 bucket must have permissions that allow Amazon Transcribe to put files in the bucket. For more information, see <https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user Permissions Required for IAM User Roles> . You can specify an AWS Key Management Service (KMS) key to encrypt the output of your transcription using the @OutputEncryptionKMSKeyId@ parameter. If you don't specify a KMS key, Amazon Transcribe uses the default Amazon S3 key for server-side encryption of transcripts that are placed in your S3 bucket. If you don't set the @OutputBucketName@ , Amazon Transcribe generates a pre-signed URL, a shareable URL that provides secure access to your transcription, and returns it in the @TranscriptFileUri@ field. Use this URL to download the transcription.
stjOutputBucketName :: Lens' StartTranscriptionJob (Maybe Text)
stjOutputBucketName = lens _stjOutputBucketName (\s a -> s {_stjOutputBucketName = a})

-- | Provides information about how a transcription job is executed. Use this field to indicate that the job can be queued for deferred execution if the concurrency limit is reached and there are no slots available to immediately run the job.
stjJobExecutionSettings :: Lens' StartTranscriptionJob (Maybe JobExecutionSettings)
stjJobExecutionSettings = lens _stjJobExecutionSettings (\s a -> s {_stjJobExecutionSettings = a})

-- | A @Settings@ object that provides optional settings for a transcription job.
stjSettings :: Lens' StartTranscriptionJob (Maybe Settings)
stjSettings = lens _stjSettings (\s a -> s {_stjSettings = a})

-- | An object containing a list of languages that might be present in your collection of audio files. Automatic language identification chooses a language that best matches the source audio from that list.
stjLanguageOptions :: Lens' StartTranscriptionJob (Maybe (NonEmpty LanguageCode))
stjLanguageOptions = lens _stjLanguageOptions (\s a -> s {_stjLanguageOptions = a}) . mapping _List1

-- | The name of the job. You can't use the strings "@.@ " or "@..@ " by themselves as the job name. The name must also be unique within an AWS account. If you try to create a transcription job with the same name as a previous transcription job, you get a @ConflictException@ error.
stjTranscriptionJobName :: Lens' StartTranscriptionJob Text
stjTranscriptionJobName = lens _stjTranscriptionJobName (\s a -> s {_stjTranscriptionJobName = a})

-- | An object that describes the input media for a transcription job.
stjMedia :: Lens' StartTranscriptionJob Media
stjMedia = lens _stjMedia (\s a -> s {_stjMedia = a})

instance AWSRequest StartTranscriptionJob where
  type
    Rs StartTranscriptionJob =
      StartTranscriptionJobResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          StartTranscriptionJobResponse'
            <$> (x .?> "TranscriptionJob") <*> (pure (fromEnum s))
      )

instance Hashable StartTranscriptionJob

instance NFData StartTranscriptionJob

instance ToHeaders StartTranscriptionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.StartTranscriptionJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartTranscriptionJob where
  toJSON StartTranscriptionJob' {..} =
    object
      ( catMaybes
          [ ("LanguageCode" .=) <$> _stjLanguageCode,
            ("MediaFormat" .=) <$> _stjMediaFormat,
            ("ContentRedaction" .=) <$> _stjContentRedaction,
            ("IdentifyLanguage" .=) <$> _stjIdentifyLanguage,
            ("OutputKey" .=) <$> _stjOutputKey,
            ("ModelSettings" .=) <$> _stjModelSettings,
            ("OutputEncryptionKMSKeyId" .=)
              <$> _stjOutputEncryptionKMSKeyId,
            ("MediaSampleRateHertz" .=)
              <$> _stjMediaSampleRateHertz,
            ("OutputBucketName" .=) <$> _stjOutputBucketName,
            ("JobExecutionSettings" .=)
              <$> _stjJobExecutionSettings,
            ("Settings" .=) <$> _stjSettings,
            ("LanguageOptions" .=) <$> _stjLanguageOptions,
            Just
              ("TranscriptionJobName" .= _stjTranscriptionJobName),
            Just ("Media" .= _stjMedia)
          ]
      )

instance ToPath StartTranscriptionJob where
  toPath = const "/"

instance ToQuery StartTranscriptionJob where
  toQuery = const mempty

-- | /See:/ 'startTranscriptionJobResponse' smart constructor.
data StartTranscriptionJobResponse = StartTranscriptionJobResponse'
  { _stjrrsTranscriptionJob ::
      !( Maybe
           TranscriptionJob
       ),
    _stjrrsResponseStatus ::
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

-- | Creates a value of 'StartTranscriptionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stjrrsTranscriptionJob' - An object containing details of the asynchronous transcription job.
--
-- * 'stjrrsResponseStatus' - -- | The response status code.
startTranscriptionJobResponse ::
  -- | 'stjrrsResponseStatus'
  Int ->
  StartTranscriptionJobResponse
startTranscriptionJobResponse pResponseStatus_ =
  StartTranscriptionJobResponse'
    { _stjrrsTranscriptionJob =
        Nothing,
      _stjrrsResponseStatus = pResponseStatus_
    }

-- | An object containing details of the asynchronous transcription job.
stjrrsTranscriptionJob :: Lens' StartTranscriptionJobResponse (Maybe TranscriptionJob)
stjrrsTranscriptionJob = lens _stjrrsTranscriptionJob (\s a -> s {_stjrrsTranscriptionJob = a})

-- | -- | The response status code.
stjrrsResponseStatus :: Lens' StartTranscriptionJobResponse Int
stjrrsResponseStatus = lens _stjrrsResponseStatus (\s a -> s {_stjrrsResponseStatus = a})

instance NFData StartTranscriptionJobResponse
