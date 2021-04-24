{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.MLTransform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.MLTransform where

import Network.AWS.Glue.Types.EvaluationMetrics
import Network.AWS.Glue.Types.GlueTable
import Network.AWS.Glue.Types.SchemaColumn
import Network.AWS.Glue.Types.TransformEncryption
import Network.AWS.Glue.Types.TransformParameters
import Network.AWS.Glue.Types.TransformStatusType
import Network.AWS.Glue.Types.WorkerType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure for a machine learning transform.
--
--
--
-- /See:/ 'mLTransform' smart constructor.
data MLTransform = MLTransform'
  { _mltStatus ::
      !(Maybe TransformStatusType),
    _mltTransformId :: !(Maybe Text),
    _mltSchema :: !(Maybe [SchemaColumn]),
    _mltCreatedOn :: !(Maybe POSIX),
    _mltInputRecordTables :: !(Maybe [GlueTable]),
    _mltTransformEncryption ::
      !(Maybe TransformEncryption),
    _mltTimeout :: !(Maybe Nat),
    _mltMaxCapacity :: !(Maybe Double),
    _mltLastModifiedOn :: !(Maybe POSIX),
    _mltNumberOfWorkers :: !(Maybe Int),
    _mltName :: !(Maybe Text),
    _mltRole :: !(Maybe Text),
    _mltGlueVersion :: !(Maybe Text),
    _mltEvaluationMetrics ::
      !(Maybe EvaluationMetrics),
    _mltWorkerType :: !(Maybe WorkerType),
    _mltDescription :: !(Maybe Text),
    _mltLabelCount :: !(Maybe Int),
    _mltParameters :: !(Maybe TransformParameters),
    _mltMaxRetries :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MLTransform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mltStatus' - The current status of the machine learning transform.
--
-- * 'mltTransformId' - The unique transform ID that is generated for the machine learning transform. The ID is guaranteed to be unique and does not change.
--
-- * 'mltSchema' - A map of key-value pairs representing the columns and data types that this transform can run against. Has an upper bound of 100 columns.
--
-- * 'mltCreatedOn' - A timestamp. The time and date that this machine learning transform was created.
--
-- * 'mltInputRecordTables' - A list of AWS Glue table definitions used by the transform.
--
-- * 'mltTransformEncryption' - The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.
--
-- * 'mltTimeout' - The timeout in minutes of the machine learning transform.
--
-- * 'mltMaxCapacity' - The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <http://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .  @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and @WorkerType@ .     * If either @NumberOfWorkers@ or @WorkerType@ is set, then @MaxCapacity@ cannot be set.     * If @MaxCapacity@ is set then neither @NumberOfWorkers@ or @WorkerType@ can be set.     * If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).     * @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1. When the @WorkerType@ field is set to a value other than @Standard@ , the @MaxCapacity@ field is set automatically and becomes read-only.
--
-- * 'mltLastModifiedOn' - A timestamp. The last point in time when this machine learning transform was modified.
--
-- * 'mltNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated when a task of the transform runs. If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).
--
-- * 'mltName' - A user-defined name for the machine learning transform. Names are not guaranteed unique and can be changed at any time.
--
-- * 'mltRole' - The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both AWS Glue service role permissions to AWS Glue resources, and Amazon S3 permissions required by the transform.      * This role needs AWS Glue service role permissions to allow access to resources in AWS Glue. See <https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html Attach a Policy to IAM Users That Access AWS Glue> .     * This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.
--
-- * 'mltGlueVersion' - This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions AWS Glue Versions> in the developer guide.
--
-- * 'mltEvaluationMetrics' - An @EvaluationMetrics@ object. Evaluation metrics provide an estimate of the quality of your machine learning transform.
--
-- * 'mltWorkerType' - The type of predefined worker that is allocated when a task of this transform runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker. @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and @WorkerType@ .     * If either @NumberOfWorkers@ or @WorkerType@ is set, then @MaxCapacity@ cannot be set.     * If @MaxCapacity@ is set then neither @NumberOfWorkers@ or @WorkerType@ can be set.     * If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).     * @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
--
-- * 'mltDescription' - A user-defined, long-form description text for the machine learning transform. Descriptions are not guaranteed to be unique and can be changed at any time.
--
-- * 'mltLabelCount' - A count identifier for the labeling files generated by AWS Glue for this transform. As you create a better transform, you can iteratively download, label, and upload the labeling file.
--
-- * 'mltParameters' - A @TransformParameters@ object. You can use parameters to tune (customize) the behavior of the machine learning transform by specifying what data it learns from and your preference on various tradeoffs (such as precious vs. recall, or accuracy vs. cost).
--
-- * 'mltMaxRetries' - The maximum number of times to retry after an @MLTaskRun@ of the machine learning transform fails.
mLTransform ::
  MLTransform
mLTransform =
  MLTransform'
    { _mltStatus = Nothing,
      _mltTransformId = Nothing,
      _mltSchema = Nothing,
      _mltCreatedOn = Nothing,
      _mltInputRecordTables = Nothing,
      _mltTransformEncryption = Nothing,
      _mltTimeout = Nothing,
      _mltMaxCapacity = Nothing,
      _mltLastModifiedOn = Nothing,
      _mltNumberOfWorkers = Nothing,
      _mltName = Nothing,
      _mltRole = Nothing,
      _mltGlueVersion = Nothing,
      _mltEvaluationMetrics = Nothing,
      _mltWorkerType = Nothing,
      _mltDescription = Nothing,
      _mltLabelCount = Nothing,
      _mltParameters = Nothing,
      _mltMaxRetries = Nothing
    }

-- | The current status of the machine learning transform.
mltStatus :: Lens' MLTransform (Maybe TransformStatusType)
mltStatus = lens _mltStatus (\s a -> s {_mltStatus = a})

-- | The unique transform ID that is generated for the machine learning transform. The ID is guaranteed to be unique and does not change.
mltTransformId :: Lens' MLTransform (Maybe Text)
mltTransformId = lens _mltTransformId (\s a -> s {_mltTransformId = a})

-- | A map of key-value pairs representing the columns and data types that this transform can run against. Has an upper bound of 100 columns.
mltSchema :: Lens' MLTransform [SchemaColumn]
mltSchema = lens _mltSchema (\s a -> s {_mltSchema = a}) . _Default . _Coerce

-- | A timestamp. The time and date that this machine learning transform was created.
mltCreatedOn :: Lens' MLTransform (Maybe UTCTime)
mltCreatedOn = lens _mltCreatedOn (\s a -> s {_mltCreatedOn = a}) . mapping _Time

-- | A list of AWS Glue table definitions used by the transform.
mltInputRecordTables :: Lens' MLTransform [GlueTable]
mltInputRecordTables = lens _mltInputRecordTables (\s a -> s {_mltInputRecordTables = a}) . _Default . _Coerce

-- | The encryption-at-rest settings of the transform that apply to accessing user data. Machine learning transforms can access user data encrypted in Amazon S3 using KMS.
mltTransformEncryption :: Lens' MLTransform (Maybe TransformEncryption)
mltTransformEncryption = lens _mltTransformEncryption (\s a -> s {_mltTransformEncryption = a})

-- | The timeout in minutes of the machine learning transform.
mltTimeout :: Lens' MLTransform (Maybe Natural)
mltTimeout = lens _mltTimeout (\s a -> s {_mltTimeout = a}) . mapping _Nat

-- | The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <http://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .  @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and @WorkerType@ .     * If either @NumberOfWorkers@ or @WorkerType@ is set, then @MaxCapacity@ cannot be set.     * If @MaxCapacity@ is set then neither @NumberOfWorkers@ or @WorkerType@ can be set.     * If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).     * @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1. When the @WorkerType@ field is set to a value other than @Standard@ , the @MaxCapacity@ field is set automatically and becomes read-only.
mltMaxCapacity :: Lens' MLTransform (Maybe Double)
mltMaxCapacity = lens _mltMaxCapacity (\s a -> s {_mltMaxCapacity = a})

-- | A timestamp. The last point in time when this machine learning transform was modified.
mltLastModifiedOn :: Lens' MLTransform (Maybe UTCTime)
mltLastModifiedOn = lens _mltLastModifiedOn (\s a -> s {_mltLastModifiedOn = a}) . mapping _Time

-- | The number of workers of a defined @workerType@ that are allocated when a task of the transform runs. If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).
mltNumberOfWorkers :: Lens' MLTransform (Maybe Int)
mltNumberOfWorkers = lens _mltNumberOfWorkers (\s a -> s {_mltNumberOfWorkers = a})

-- | A user-defined name for the machine learning transform. Names are not guaranteed unique and can be changed at any time.
mltName :: Lens' MLTransform (Maybe Text)
mltName = lens _mltName (\s a -> s {_mltName = a})

-- | The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both AWS Glue service role permissions to AWS Glue resources, and Amazon S3 permissions required by the transform.      * This role needs AWS Glue service role permissions to allow access to resources in AWS Glue. See <https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html Attach a Policy to IAM Users That Access AWS Glue> .     * This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.
mltRole :: Lens' MLTransform (Maybe Text)
mltRole = lens _mltRole (\s a -> s {_mltRole = a})

-- | This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions AWS Glue Versions> in the developer guide.
mltGlueVersion :: Lens' MLTransform (Maybe Text)
mltGlueVersion = lens _mltGlueVersion (\s a -> s {_mltGlueVersion = a})

-- | An @EvaluationMetrics@ object. Evaluation metrics provide an estimate of the quality of your machine learning transform.
mltEvaluationMetrics :: Lens' MLTransform (Maybe EvaluationMetrics)
mltEvaluationMetrics = lens _mltEvaluationMetrics (\s a -> s {_mltEvaluationMetrics = a})

-- | The type of predefined worker that is allocated when a task of this transform runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker. @MaxCapacity@ is a mutually exclusive option with @NumberOfWorkers@ and @WorkerType@ .     * If either @NumberOfWorkers@ or @WorkerType@ is set, then @MaxCapacity@ cannot be set.     * If @MaxCapacity@ is set then neither @NumberOfWorkers@ or @WorkerType@ can be set.     * If @WorkerType@ is set, then @NumberOfWorkers@ is required (and vice versa).     * @MaxCapacity@ and @NumberOfWorkers@ must both be at least 1.
mltWorkerType :: Lens' MLTransform (Maybe WorkerType)
mltWorkerType = lens _mltWorkerType (\s a -> s {_mltWorkerType = a})

-- | A user-defined, long-form description text for the machine learning transform. Descriptions are not guaranteed to be unique and can be changed at any time.
mltDescription :: Lens' MLTransform (Maybe Text)
mltDescription = lens _mltDescription (\s a -> s {_mltDescription = a})

-- | A count identifier for the labeling files generated by AWS Glue for this transform. As you create a better transform, you can iteratively download, label, and upload the labeling file.
mltLabelCount :: Lens' MLTransform (Maybe Int)
mltLabelCount = lens _mltLabelCount (\s a -> s {_mltLabelCount = a})

-- | A @TransformParameters@ object. You can use parameters to tune (customize) the behavior of the machine learning transform by specifying what data it learns from and your preference on various tradeoffs (such as precious vs. recall, or accuracy vs. cost).
mltParameters :: Lens' MLTransform (Maybe TransformParameters)
mltParameters = lens _mltParameters (\s a -> s {_mltParameters = a})

-- | The maximum number of times to retry after an @MLTaskRun@ of the machine learning transform fails.
mltMaxRetries :: Lens' MLTransform (Maybe Int)
mltMaxRetries = lens _mltMaxRetries (\s a -> s {_mltMaxRetries = a})

instance FromJSON MLTransform where
  parseJSON =
    withObject
      "MLTransform"
      ( \x ->
          MLTransform'
            <$> (x .:? "Status")
            <*> (x .:? "TransformId")
            <*> (x .:? "Schema" .!= mempty)
            <*> (x .:? "CreatedOn")
            <*> (x .:? "InputRecordTables" .!= mempty)
            <*> (x .:? "TransformEncryption")
            <*> (x .:? "Timeout")
            <*> (x .:? "MaxCapacity")
            <*> (x .:? "LastModifiedOn")
            <*> (x .:? "NumberOfWorkers")
            <*> (x .:? "Name")
            <*> (x .:? "Role")
            <*> (x .:? "GlueVersion")
            <*> (x .:? "EvaluationMetrics")
            <*> (x .:? "WorkerType")
            <*> (x .:? "Description")
            <*> (x .:? "LabelCount")
            <*> (x .:? "Parameters")
            <*> (x .:? "MaxRetries")
      )

instance Hashable MLTransform

instance NFData MLTransform
