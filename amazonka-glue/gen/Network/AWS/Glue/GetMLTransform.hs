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
-- Module      : Network.AWS.Glue.GetMLTransform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an AWS Glue machine learning transform artifact and all its corresponding metadata. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue. You can retrieve their metadata by calling @GetMLTransform@ .
module Network.AWS.Glue.GetMLTransform
  ( -- * Creating a Request
    getMLTransform,
    GetMLTransform,

    -- * Request Lenses
    gmltTransformId,

    -- * Destructuring the Response
    getMLTransformResponse,
    GetMLTransformResponse,

    -- * Response Lenses
    gmltrmrsStatus,
    gmltrmrsTransformId,
    gmltrmrsSchema,
    gmltrmrsCreatedOn,
    gmltrmrsInputRecordTables,
    gmltrmrsTransformEncryption,
    gmltrmrsTimeout,
    gmltrmrsMaxCapacity,
    gmltrmrsLastModifiedOn,
    gmltrmrsNumberOfWorkers,
    gmltrmrsName,
    gmltrmrsRole,
    gmltrmrsGlueVersion,
    gmltrmrsEvaluationMetrics,
    gmltrmrsWorkerType,
    gmltrmrsDescription,
    gmltrmrsLabelCount,
    gmltrmrsParameters,
    gmltrmrsMaxRetries,
    gmltrmrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMLTransform' smart constructor.
newtype GetMLTransform = GetMLTransform'
  { _gmltTransformId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMLTransform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmltTransformId' - The unique identifier of the transform, generated at the time that the transform was created.
getMLTransform ::
  -- | 'gmltTransformId'
  Text ->
  GetMLTransform
getMLTransform pTransformId_ =
  GetMLTransform' {_gmltTransformId = pTransformId_}

-- | The unique identifier of the transform, generated at the time that the transform was created.
gmltTransformId :: Lens' GetMLTransform Text
gmltTransformId = lens _gmltTransformId (\s a -> s {_gmltTransformId = a})

instance AWSRequest GetMLTransform where
  type Rs GetMLTransform = GetMLTransformResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetMLTransformResponse'
            <$> (x .?> "Status")
            <*> (x .?> "TransformId")
            <*> (x .?> "Schema" .!@ mempty)
            <*> (x .?> "CreatedOn")
            <*> (x .?> "InputRecordTables" .!@ mempty)
            <*> (x .?> "TransformEncryption")
            <*> (x .?> "Timeout")
            <*> (x .?> "MaxCapacity")
            <*> (x .?> "LastModifiedOn")
            <*> (x .?> "NumberOfWorkers")
            <*> (x .?> "Name")
            <*> (x .?> "Role")
            <*> (x .?> "GlueVersion")
            <*> (x .?> "EvaluationMetrics")
            <*> (x .?> "WorkerType")
            <*> (x .?> "Description")
            <*> (x .?> "LabelCount")
            <*> (x .?> "Parameters")
            <*> (x .?> "MaxRetries")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMLTransform

instance NFData GetMLTransform

instance ToHeaders GetMLTransform where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetMLTransform" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMLTransform where
  toJSON GetMLTransform' {..} =
    object
      ( catMaybes
          [Just ("TransformId" .= _gmltTransformId)]
      )

instance ToPath GetMLTransform where
  toPath = const "/"

instance ToQuery GetMLTransform where
  toQuery = const mempty

-- | /See:/ 'getMLTransformResponse' smart constructor.
data GetMLTransformResponse = GetMLTransformResponse'
  { _gmltrmrsStatus ::
      !( Maybe
           TransformStatusType
       ),
    _gmltrmrsTransformId ::
      !(Maybe Text),
    _gmltrmrsSchema ::
      !(Maybe [SchemaColumn]),
    _gmltrmrsCreatedOn ::
      !(Maybe POSIX),
    _gmltrmrsInputRecordTables ::
      !(Maybe [GlueTable]),
    _gmltrmrsTransformEncryption ::
      !( Maybe
           TransformEncryption
       ),
    _gmltrmrsTimeout ::
      !(Maybe Nat),
    _gmltrmrsMaxCapacity ::
      !(Maybe Double),
    _gmltrmrsLastModifiedOn ::
      !(Maybe POSIX),
    _gmltrmrsNumberOfWorkers ::
      !(Maybe Int),
    _gmltrmrsName ::
      !(Maybe Text),
    _gmltrmrsRole ::
      !(Maybe Text),
    _gmltrmrsGlueVersion ::
      !(Maybe Text),
    _gmltrmrsEvaluationMetrics ::
      !( Maybe
           EvaluationMetrics
       ),
    _gmltrmrsWorkerType ::
      !(Maybe WorkerType),
    _gmltrmrsDescription ::
      !(Maybe Text),
    _gmltrmrsLabelCount ::
      !(Maybe Int),
    _gmltrmrsParameters ::
      !( Maybe
           TransformParameters
       ),
    _gmltrmrsMaxRetries ::
      !(Maybe Int),
    _gmltrmrsResponseStatus ::
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

-- | Creates a value of 'GetMLTransformResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmltrmrsStatus' - The last known status of the transform (to indicate whether it can be used or not). One of "NOT_READY", "READY", or "DELETING".
--
-- * 'gmltrmrsTransformId' - The unique identifier of the transform, generated at the time that the transform was created.
--
-- * 'gmltrmrsSchema' - The @Map<Column, Type>@ object that represents the schema that this transform accepts. Has an upper bound of 100 columns.
--
-- * 'gmltrmrsCreatedOn' - The date and time when the transform was created.
--
-- * 'gmltrmrsInputRecordTables' - A list of AWS Glue table definitions used by the transform.
--
-- * 'gmltrmrsTransformEncryption' - The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.
--
-- * 'gmltrmrsTimeout' - The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
--
-- * 'gmltrmrsMaxCapacity' - The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .  When the @WorkerType@ field is set to a value other than @Standard@ , the @MaxCapacity@ field is set automatically and becomes read-only.
--
-- * 'gmltrmrsLastModifiedOn' - The date and time when the transform was last modified.
--
-- * 'gmltrmrsNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated when this task runs.
--
-- * 'gmltrmrsName' - The unique name given to the transform when it was created.
--
-- * 'gmltrmrsRole' - The name or Amazon Resource Name (ARN) of the IAM role with the required permissions.
--
-- * 'gmltrmrsGlueVersion' - This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions AWS Glue Versions> in the developer guide.
--
-- * 'gmltrmrsEvaluationMetrics' - The latest evaluation metrics.
--
-- * 'gmltrmrsWorkerType' - The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.
--
-- * 'gmltrmrsDescription' - A description of the transform.
--
-- * 'gmltrmrsLabelCount' - The number of labels available for this transform.
--
-- * 'gmltrmrsParameters' - The configuration parameters that are specific to the algorithm used.
--
-- * 'gmltrmrsMaxRetries' - The maximum number of times to retry a task for this transform after a task run fails.
--
-- * 'gmltrmrsResponseStatus' - -- | The response status code.
getMLTransformResponse ::
  -- | 'gmltrmrsResponseStatus'
  Int ->
  GetMLTransformResponse
getMLTransformResponse pResponseStatus_ =
  GetMLTransformResponse'
    { _gmltrmrsStatus = Nothing,
      _gmltrmrsTransformId = Nothing,
      _gmltrmrsSchema = Nothing,
      _gmltrmrsCreatedOn = Nothing,
      _gmltrmrsInputRecordTables = Nothing,
      _gmltrmrsTransformEncryption = Nothing,
      _gmltrmrsTimeout = Nothing,
      _gmltrmrsMaxCapacity = Nothing,
      _gmltrmrsLastModifiedOn = Nothing,
      _gmltrmrsNumberOfWorkers = Nothing,
      _gmltrmrsName = Nothing,
      _gmltrmrsRole = Nothing,
      _gmltrmrsGlueVersion = Nothing,
      _gmltrmrsEvaluationMetrics = Nothing,
      _gmltrmrsWorkerType = Nothing,
      _gmltrmrsDescription = Nothing,
      _gmltrmrsLabelCount = Nothing,
      _gmltrmrsParameters = Nothing,
      _gmltrmrsMaxRetries = Nothing,
      _gmltrmrsResponseStatus = pResponseStatus_
    }

-- | The last known status of the transform (to indicate whether it can be used or not). One of "NOT_READY", "READY", or "DELETING".
gmltrmrsStatus :: Lens' GetMLTransformResponse (Maybe TransformStatusType)
gmltrmrsStatus = lens _gmltrmrsStatus (\s a -> s {_gmltrmrsStatus = a})

-- | The unique identifier of the transform, generated at the time that the transform was created.
gmltrmrsTransformId :: Lens' GetMLTransformResponse (Maybe Text)
gmltrmrsTransformId = lens _gmltrmrsTransformId (\s a -> s {_gmltrmrsTransformId = a})

-- | The @Map<Column, Type>@ object that represents the schema that this transform accepts. Has an upper bound of 100 columns.
gmltrmrsSchema :: Lens' GetMLTransformResponse [SchemaColumn]
gmltrmrsSchema = lens _gmltrmrsSchema (\s a -> s {_gmltrmrsSchema = a}) . _Default . _Coerce

-- | The date and time when the transform was created.
gmltrmrsCreatedOn :: Lens' GetMLTransformResponse (Maybe UTCTime)
gmltrmrsCreatedOn = lens _gmltrmrsCreatedOn (\s a -> s {_gmltrmrsCreatedOn = a}) . mapping _Time

-- | A list of AWS Glue table definitions used by the transform.
gmltrmrsInputRecordTables :: Lens' GetMLTransformResponse [GlueTable]
gmltrmrsInputRecordTables = lens _gmltrmrsInputRecordTables (\s a -> s {_gmltrmrsInputRecordTables = a}) . _Default . _Coerce

-- | The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.
gmltrmrsTransformEncryption :: Lens' GetMLTransformResponse (Maybe TransformEncryption)
gmltrmrsTransformEncryption = lens _gmltrmrsTransformEncryption (\s a -> s {_gmltrmrsTransformEncryption = a})

-- | The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
gmltrmrsTimeout :: Lens' GetMLTransformResponse (Maybe Natural)
gmltrmrsTimeout = lens _gmltrmrsTimeout (\s a -> s {_gmltrmrsTimeout = a}) . mapping _Nat

-- | The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .  When the @WorkerType@ field is set to a value other than @Standard@ , the @MaxCapacity@ field is set automatically and becomes read-only.
gmltrmrsMaxCapacity :: Lens' GetMLTransformResponse (Maybe Double)
gmltrmrsMaxCapacity = lens _gmltrmrsMaxCapacity (\s a -> s {_gmltrmrsMaxCapacity = a})

-- | The date and time when the transform was last modified.
gmltrmrsLastModifiedOn :: Lens' GetMLTransformResponse (Maybe UTCTime)
gmltrmrsLastModifiedOn = lens _gmltrmrsLastModifiedOn (\s a -> s {_gmltrmrsLastModifiedOn = a}) . mapping _Time

-- | The number of workers of a defined @workerType@ that are allocated when this task runs.
gmltrmrsNumberOfWorkers :: Lens' GetMLTransformResponse (Maybe Int)
gmltrmrsNumberOfWorkers = lens _gmltrmrsNumberOfWorkers (\s a -> s {_gmltrmrsNumberOfWorkers = a})

-- | The unique name given to the transform when it was created.
gmltrmrsName :: Lens' GetMLTransformResponse (Maybe Text)
gmltrmrsName = lens _gmltrmrsName (\s a -> s {_gmltrmrsName = a})

-- | The name or Amazon Resource Name (ARN) of the IAM role with the required permissions.
gmltrmrsRole :: Lens' GetMLTransformResponse (Maybe Text)
gmltrmrsRole = lens _gmltrmrsRole (\s a -> s {_gmltrmrsRole = a})

-- | This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions AWS Glue Versions> in the developer guide.
gmltrmrsGlueVersion :: Lens' GetMLTransformResponse (Maybe Text)
gmltrmrsGlueVersion = lens _gmltrmrsGlueVersion (\s a -> s {_gmltrmrsGlueVersion = a})

-- | The latest evaluation metrics.
gmltrmrsEvaluationMetrics :: Lens' GetMLTransformResponse (Maybe EvaluationMetrics)
gmltrmrsEvaluationMetrics = lens _gmltrmrsEvaluationMetrics (\s a -> s {_gmltrmrsEvaluationMetrics = a})

-- | The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.
gmltrmrsWorkerType :: Lens' GetMLTransformResponse (Maybe WorkerType)
gmltrmrsWorkerType = lens _gmltrmrsWorkerType (\s a -> s {_gmltrmrsWorkerType = a})

-- | A description of the transform.
gmltrmrsDescription :: Lens' GetMLTransformResponse (Maybe Text)
gmltrmrsDescription = lens _gmltrmrsDescription (\s a -> s {_gmltrmrsDescription = a})

-- | The number of labels available for this transform.
gmltrmrsLabelCount :: Lens' GetMLTransformResponse (Maybe Int)
gmltrmrsLabelCount = lens _gmltrmrsLabelCount (\s a -> s {_gmltrmrsLabelCount = a})

-- | The configuration parameters that are specific to the algorithm used.
gmltrmrsParameters :: Lens' GetMLTransformResponse (Maybe TransformParameters)
gmltrmrsParameters = lens _gmltrmrsParameters (\s a -> s {_gmltrmrsParameters = a})

-- | The maximum number of times to retry a task for this transform after a task run fails.
gmltrmrsMaxRetries :: Lens' GetMLTransformResponse (Maybe Int)
gmltrmrsMaxRetries = lens _gmltrmrsMaxRetries (\s a -> s {_gmltrmrsMaxRetries = a})

-- | -- | The response status code.
gmltrmrsResponseStatus :: Lens' GetMLTransformResponse Int
gmltrmrsResponseStatus = lens _gmltrmrsResponseStatus (\s a -> s {_gmltrmrsResponseStatus = a})

instance NFData GetMLTransformResponse
