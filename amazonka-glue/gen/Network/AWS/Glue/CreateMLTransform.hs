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
-- Module      : Network.AWS.Glue.CreateMLTransform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AWS Glue machine learning transform. This operation creates the transform and all the necessary parameters to train it.
--
--
-- Call this operation as the first step in the process of using a machine learning transform (such as the @FindMatches@ transform) for deduplicating data. You can provide an optional @Description@ , in addition to the parameters that you want to use for your algorithm.
--
-- You must also specify certain parameters for the tasks that AWS Glue runs on your behalf as part of learning from your data and creating a high-quality machine learning transform. These parameters include @Role@ , and optionally, @AllocatedCapacity@ , @Timeout@ , and @MaxRetries@ . For more information, see <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html Jobs> .
module Network.AWS.Glue.CreateMLTransform
  ( -- * Creating a Request
    createMLTransform,
    CreateMLTransform,

    -- * Request Lenses
    cmltTransformEncryption,
    cmltTimeout,
    cmltMaxCapacity,
    cmltNumberOfWorkers,
    cmltGlueVersion,
    cmltTags,
    cmltWorkerType,
    cmltDescription,
    cmltMaxRetries,
    cmltName,
    cmltInputRecordTables,
    cmltParameters,
    cmltRole,

    -- * Destructuring the Response
    createMLTransformResponse,
    CreateMLTransformResponse,

    -- * Response Lenses
    cmltrrsTransformId,
    cmltrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createMLTransform' smart constructor.
data CreateMLTransform = CreateMLTransform'
  { _cmltTransformEncryption ::
      !(Maybe TransformEncryption),
    _cmltTimeout :: !(Maybe Nat),
    _cmltMaxCapacity :: !(Maybe Double),
    _cmltNumberOfWorkers ::
      !(Maybe Int),
    _cmltGlueVersion :: !(Maybe Text),
    _cmltTags ::
      !(Maybe (Map Text Text)),
    _cmltWorkerType ::
      !(Maybe WorkerType),
    _cmltDescription :: !(Maybe Text),
    _cmltMaxRetries :: !(Maybe Int),
    _cmltName :: !Text,
    _cmltInputRecordTables ::
      ![GlueTable],
    _cmltParameters ::
      !TransformParameters,
    _cmltRole :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateMLTransform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmltTransformEncryption' - The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.
--
-- * 'cmltTimeout' - The timeout of the task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
--
-- * 'cmltMaxCapacity' - The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .  @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and @WorkerType@ .     * If either @NumberOfWorkers@ or @WorkerType@ is set, then @MaxCapacity@ cannot be set.     * If @MaxCapacity@ is set then neither @NumberOfWorkers@ or @WorkerType@ can be set.     * If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).     * @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1. When the @WorkerType@ field is set to a value other than @Standard@ , the @MaxCapacity@ field is set automatically and becomes read-only. When the @WorkerType@ field is set to a value other than @Standard@ , the @MaxCapacity@ field is set automatically and becomes read-only.
--
-- * 'cmltNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated when this task runs. If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).
--
-- * 'cmltGlueVersion' - This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions AWS Glue Versions> in the developer guide.
--
-- * 'cmltTags' - The tags to use with this machine learning transform. You may use tags to limit access to the machine learning transform. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
--
-- * 'cmltWorkerType' - The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker. @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and @WorkerType@ .     * If either @NumberOfWorkers@ or @WorkerType@ is set, then @MaxCapacity@ cannot be set.     * If @MaxCapacity@ is set then neither @NumberOfWorkers@ or @WorkerType@ can be set.     * If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).     * @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
--
-- * 'cmltDescription' - A description of the machine learning transform that is being defined. The default is an empty string.
--
-- * 'cmltMaxRetries' - The maximum number of times to retry a task for this transform after a task run fails.
--
-- * 'cmltName' - The unique name that you give the transform when you create it.
--
-- * 'cmltInputRecordTables' - A list of AWS Glue table definitions used by the transform.
--
-- * 'cmltParameters' - The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type.
--
-- * 'cmltRole' - The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both AWS Glue service role permissions to AWS Glue resources, and Amazon S3 permissions required by the transform.      * This role needs AWS Glue service role permissions to allow access to resources in AWS Glue. See <https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html Attach a Policy to IAM Users That Access AWS Glue> .     * This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.
createMLTransform ::
  -- | 'cmltName'
  Text ->
  -- | 'cmltParameters'
  TransformParameters ->
  -- | 'cmltRole'
  Text ->
  CreateMLTransform
createMLTransform pName_ pParameters_ pRole_ =
  CreateMLTransform'
    { _cmltTransformEncryption =
        Nothing,
      _cmltTimeout = Nothing,
      _cmltMaxCapacity = Nothing,
      _cmltNumberOfWorkers = Nothing,
      _cmltGlueVersion = Nothing,
      _cmltTags = Nothing,
      _cmltWorkerType = Nothing,
      _cmltDescription = Nothing,
      _cmltMaxRetries = Nothing,
      _cmltName = pName_,
      _cmltInputRecordTables = mempty,
      _cmltParameters = pParameters_,
      _cmltRole = pRole_
    }

-- | The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.
cmltTransformEncryption :: Lens' CreateMLTransform (Maybe TransformEncryption)
cmltTransformEncryption = lens _cmltTransformEncryption (\s a -> s {_cmltTransformEncryption = a})

-- | The timeout of the task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
cmltTimeout :: Lens' CreateMLTransform (Maybe Natural)
cmltTimeout = lens _cmltTimeout (\s a -> s {_cmltTimeout = a}) . mapping _Nat

-- | The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .  @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and @WorkerType@ .     * If either @NumberOfWorkers@ or @WorkerType@ is set, then @MaxCapacity@ cannot be set.     * If @MaxCapacity@ is set then neither @NumberOfWorkers@ or @WorkerType@ can be set.     * If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).     * @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1. When the @WorkerType@ field is set to a value other than @Standard@ , the @MaxCapacity@ field is set automatically and becomes read-only. When the @WorkerType@ field is set to a value other than @Standard@ , the @MaxCapacity@ field is set automatically and becomes read-only.
cmltMaxCapacity :: Lens' CreateMLTransform (Maybe Double)
cmltMaxCapacity = lens _cmltMaxCapacity (\s a -> s {_cmltMaxCapacity = a})

-- | The number of workers of a defined @workerType@ that are allocated when this task runs. If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).
cmltNumberOfWorkers :: Lens' CreateMLTransform (Maybe Int)
cmltNumberOfWorkers = lens _cmltNumberOfWorkers (\s a -> s {_cmltNumberOfWorkers = a})

-- | This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions AWS Glue Versions> in the developer guide.
cmltGlueVersion :: Lens' CreateMLTransform (Maybe Text)
cmltGlueVersion = lens _cmltGlueVersion (\s a -> s {_cmltGlueVersion = a})

-- | The tags to use with this machine learning transform. You may use tags to limit access to the machine learning transform. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
cmltTags :: Lens' CreateMLTransform (HashMap Text Text)
cmltTags = lens _cmltTags (\s a -> s {_cmltTags = a}) . _Default . _Map

-- | The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker. @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and @WorkerType@ .     * If either @NumberOfWorkers@ or @WorkerType@ is set, then @MaxCapacity@ cannot be set.     * If @MaxCapacity@ is set then neither @NumberOfWorkers@ or @WorkerType@ can be set.     * If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).     * @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
cmltWorkerType :: Lens' CreateMLTransform (Maybe WorkerType)
cmltWorkerType = lens _cmltWorkerType (\s a -> s {_cmltWorkerType = a})

-- | A description of the machine learning transform that is being defined. The default is an empty string.
cmltDescription :: Lens' CreateMLTransform (Maybe Text)
cmltDescription = lens _cmltDescription (\s a -> s {_cmltDescription = a})

-- | The maximum number of times to retry a task for this transform after a task run fails.
cmltMaxRetries :: Lens' CreateMLTransform (Maybe Int)
cmltMaxRetries = lens _cmltMaxRetries (\s a -> s {_cmltMaxRetries = a})

-- | The unique name that you give the transform when you create it.
cmltName :: Lens' CreateMLTransform Text
cmltName = lens _cmltName (\s a -> s {_cmltName = a})

-- | A list of AWS Glue table definitions used by the transform.
cmltInputRecordTables :: Lens' CreateMLTransform [GlueTable]
cmltInputRecordTables = lens _cmltInputRecordTables (\s a -> s {_cmltInputRecordTables = a}) . _Coerce

-- | The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type.
cmltParameters :: Lens' CreateMLTransform TransformParameters
cmltParameters = lens _cmltParameters (\s a -> s {_cmltParameters = a})

-- | The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both AWS Glue service role permissions to AWS Glue resources, and Amazon S3 permissions required by the transform.      * This role needs AWS Glue service role permissions to allow access to resources in AWS Glue. See <https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html Attach a Policy to IAM Users That Access AWS Glue> .     * This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.
cmltRole :: Lens' CreateMLTransform Text
cmltRole = lens _cmltRole (\s a -> s {_cmltRole = a})

instance AWSRequest CreateMLTransform where
  type Rs CreateMLTransform = CreateMLTransformResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          CreateMLTransformResponse'
            <$> (x .?> "TransformId") <*> (pure (fromEnum s))
      )

instance Hashable CreateMLTransform

instance NFData CreateMLTransform

instance ToHeaders CreateMLTransform where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CreateMLTransform" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateMLTransform where
  toJSON CreateMLTransform' {..} =
    object
      ( catMaybes
          [ ("TransformEncryption" .=)
              <$> _cmltTransformEncryption,
            ("Timeout" .=) <$> _cmltTimeout,
            ("MaxCapacity" .=) <$> _cmltMaxCapacity,
            ("NumberOfWorkers" .=) <$> _cmltNumberOfWorkers,
            ("GlueVersion" .=) <$> _cmltGlueVersion,
            ("Tags" .=) <$> _cmltTags,
            ("WorkerType" .=) <$> _cmltWorkerType,
            ("Description" .=) <$> _cmltDescription,
            ("MaxRetries" .=) <$> _cmltMaxRetries,
            Just ("Name" .= _cmltName),
            Just ("InputRecordTables" .= _cmltInputRecordTables),
            Just ("Parameters" .= _cmltParameters),
            Just ("Role" .= _cmltRole)
          ]
      )

instance ToPath CreateMLTransform where
  toPath = const "/"

instance ToQuery CreateMLTransform where
  toQuery = const mempty

-- | /See:/ 'createMLTransformResponse' smart constructor.
data CreateMLTransformResponse = CreateMLTransformResponse'
  { _cmltrrsTransformId ::
      !(Maybe Text),
    _cmltrrsResponseStatus ::
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

-- | Creates a value of 'CreateMLTransformResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmltrrsTransformId' - A unique identifier that is generated for the transform.
--
-- * 'cmltrrsResponseStatus' - -- | The response status code.
createMLTransformResponse ::
  -- | 'cmltrrsResponseStatus'
  Int ->
  CreateMLTransformResponse
createMLTransformResponse pResponseStatus_ =
  CreateMLTransformResponse'
    { _cmltrrsTransformId =
        Nothing,
      _cmltrrsResponseStatus = pResponseStatus_
    }

-- | A unique identifier that is generated for the transform.
cmltrrsTransformId :: Lens' CreateMLTransformResponse (Maybe Text)
cmltrrsTransformId = lens _cmltrrsTransformId (\s a -> s {_cmltrrsTransformId = a})

-- | -- | The response status code.
cmltrrsResponseStatus :: Lens' CreateMLTransformResponse Int
cmltrrsResponseStatus = lens _cmltrrsResponseStatus (\s a -> s {_cmltrrsResponseStatus = a})

instance NFData CreateMLTransformResponse
