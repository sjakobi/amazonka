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
-- Module      : Network.AWS.Glue.CreateJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new job definition.
module Network.AWS.Glue.CreateJob
  ( -- * Creating a Request
    createJob,
    CreateJob,

    -- * Request Lenses
    cjNonOverridableArguments,
    cjSecurityConfiguration,
    cjTimeout,
    cjMaxCapacity,
    cjConnections,
    cjNotificationProperty,
    cjNumberOfWorkers,
    cjGlueVersion,
    cjTags,
    cjWorkerType,
    cjDescription,
    cjDefaultArguments,
    cjAllocatedCapacity,
    cjExecutionProperty,
    cjMaxRetries,
    cjLogURI,
    cjName,
    cjRole,
    cjCommand,

    -- * Destructuring the Response
    createJobResponse,
    CreateJobResponse,

    -- * Response Lenses
    cjrrsName,
    cjrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createJob' smart constructor.
data CreateJob = CreateJob'
  { _cjNonOverridableArguments ::
      !(Maybe (Map Text Text)),
    _cjSecurityConfiguration :: !(Maybe Text),
    _cjTimeout :: !(Maybe Nat),
    _cjMaxCapacity :: !(Maybe Double),
    _cjConnections :: !(Maybe ConnectionsList),
    _cjNotificationProperty ::
      !(Maybe NotificationProperty),
    _cjNumberOfWorkers :: !(Maybe Int),
    _cjGlueVersion :: !(Maybe Text),
    _cjTags :: !(Maybe (Map Text Text)),
    _cjWorkerType :: !(Maybe WorkerType),
    _cjDescription :: !(Maybe Text),
    _cjDefaultArguments :: !(Maybe (Map Text Text)),
    _cjAllocatedCapacity :: !(Maybe Int),
    _cjExecutionProperty :: !(Maybe ExecutionProperty),
    _cjMaxRetries :: !(Maybe Int),
    _cjLogURI :: !(Maybe Text),
    _cjName :: !Text,
    _cjRole :: !Text,
    _cjCommand :: !JobCommand
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjNonOverridableArguments' - Non-overridable arguments for this job, specified as name-value pairs.
--
-- * 'cjSecurityConfiguration' - The name of the @SecurityConfiguration@ structure to be used with this job.
--
-- * 'cjTimeout' - The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
--
-- * 'cjMaxCapacity' - The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> . Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ . The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job or an Apache Spark ETL job:     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl") or Apache Spark streaming ETL job (@JobCommand.Name@ ="gluestreaming"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
--
-- * 'cjConnections' - The connections used for this job.
--
-- * 'cjNotificationProperty' - Specifies configuration properties of a job notification.
--
-- * 'cjNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated when a job runs. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
--
-- * 'cjGlueVersion' - Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Jobs that are created without specifying a Glue version default to Glue 0.9.
--
-- * 'cjTags' - The tags to use with this job. You may use tags to limit access to the job. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
--
-- * 'cjWorkerType' - The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.
--
-- * 'cjDescription' - Description of the job being defined.
--
-- * 'cjDefaultArguments' - The default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
--
-- * 'cjAllocatedCapacity' - This parameter is deprecated. Use @MaxCapacity@ instead. The number of AWS Glue data processing units (DPUs) to allocate to this Job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- * 'cjExecutionProperty' - An @ExecutionProperty@ specifying the maximum number of concurrent runs allowed for this job.
--
-- * 'cjMaxRetries' - The maximum number of times to retry this job if it fails.
--
-- * 'cjLogURI' - This field is reserved for future use.
--
-- * 'cjName' - The name you assign to this job definition. It must be unique in your account.
--
-- * 'cjRole' - The name or Amazon Resource Name (ARN) of the IAM role associated with this job.
--
-- * 'cjCommand' - The @JobCommand@ that executes this job.
createJob ::
  -- | 'cjName'
  Text ->
  -- | 'cjRole'
  Text ->
  -- | 'cjCommand'
  JobCommand ->
  CreateJob
createJob pName_ pRole_ pCommand_ =
  CreateJob'
    { _cjNonOverridableArguments = Nothing,
      _cjSecurityConfiguration = Nothing,
      _cjTimeout = Nothing,
      _cjMaxCapacity = Nothing,
      _cjConnections = Nothing,
      _cjNotificationProperty = Nothing,
      _cjNumberOfWorkers = Nothing,
      _cjGlueVersion = Nothing,
      _cjTags = Nothing,
      _cjWorkerType = Nothing,
      _cjDescription = Nothing,
      _cjDefaultArguments = Nothing,
      _cjAllocatedCapacity = Nothing,
      _cjExecutionProperty = Nothing,
      _cjMaxRetries = Nothing,
      _cjLogURI = Nothing,
      _cjName = pName_,
      _cjRole = pRole_,
      _cjCommand = pCommand_
    }

-- | Non-overridable arguments for this job, specified as name-value pairs.
cjNonOverridableArguments :: Lens' CreateJob (HashMap Text Text)
cjNonOverridableArguments = lens _cjNonOverridableArguments (\s a -> s {_cjNonOverridableArguments = a}) . _Default . _Map

-- | The name of the @SecurityConfiguration@ structure to be used with this job.
cjSecurityConfiguration :: Lens' CreateJob (Maybe Text)
cjSecurityConfiguration = lens _cjSecurityConfiguration (\s a -> s {_cjSecurityConfiguration = a})

-- | The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
cjTimeout :: Lens' CreateJob (Maybe Natural)
cjTimeout = lens _cjTimeout (\s a -> s {_cjTimeout = a}) . mapping _Nat

-- | The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> . Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ . The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job or an Apache Spark ETL job:     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl") or Apache Spark streaming ETL job (@JobCommand.Name@ ="gluestreaming"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
cjMaxCapacity :: Lens' CreateJob (Maybe Double)
cjMaxCapacity = lens _cjMaxCapacity (\s a -> s {_cjMaxCapacity = a})

-- | The connections used for this job.
cjConnections :: Lens' CreateJob (Maybe ConnectionsList)
cjConnections = lens _cjConnections (\s a -> s {_cjConnections = a})

-- | Specifies configuration properties of a job notification.
cjNotificationProperty :: Lens' CreateJob (Maybe NotificationProperty)
cjNotificationProperty = lens _cjNotificationProperty (\s a -> s {_cjNotificationProperty = a})

-- | The number of workers of a defined @workerType@ that are allocated when a job runs. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
cjNumberOfWorkers :: Lens' CreateJob (Maybe Int)
cjNumberOfWorkers = lens _cjNumberOfWorkers (\s a -> s {_cjNumberOfWorkers = a})

-- | Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Jobs that are created without specifying a Glue version default to Glue 0.9.
cjGlueVersion :: Lens' CreateJob (Maybe Text)
cjGlueVersion = lens _cjGlueVersion (\s a -> s {_cjGlueVersion = a})

-- | The tags to use with this job. You may use tags to limit access to the job. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
cjTags :: Lens' CreateJob (HashMap Text Text)
cjTags = lens _cjTags (\s a -> s {_cjTags = a}) . _Default . _Map

-- | The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.
cjWorkerType :: Lens' CreateJob (Maybe WorkerType)
cjWorkerType = lens _cjWorkerType (\s a -> s {_cjWorkerType = a})

-- | Description of the job being defined.
cjDescription :: Lens' CreateJob (Maybe Text)
cjDescription = lens _cjDescription (\s a -> s {_cjDescription = a})

-- | The default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
cjDefaultArguments :: Lens' CreateJob (HashMap Text Text)
cjDefaultArguments = lens _cjDefaultArguments (\s a -> s {_cjDefaultArguments = a}) . _Default . _Map

-- | This parameter is deprecated. Use @MaxCapacity@ instead. The number of AWS Glue data processing units (DPUs) to allocate to this Job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
cjAllocatedCapacity :: Lens' CreateJob (Maybe Int)
cjAllocatedCapacity = lens _cjAllocatedCapacity (\s a -> s {_cjAllocatedCapacity = a})

-- | An @ExecutionProperty@ specifying the maximum number of concurrent runs allowed for this job.
cjExecutionProperty :: Lens' CreateJob (Maybe ExecutionProperty)
cjExecutionProperty = lens _cjExecutionProperty (\s a -> s {_cjExecutionProperty = a})

-- | The maximum number of times to retry this job if it fails.
cjMaxRetries :: Lens' CreateJob (Maybe Int)
cjMaxRetries = lens _cjMaxRetries (\s a -> s {_cjMaxRetries = a})

-- | This field is reserved for future use.
cjLogURI :: Lens' CreateJob (Maybe Text)
cjLogURI = lens _cjLogURI (\s a -> s {_cjLogURI = a})

-- | The name you assign to this job definition. It must be unique in your account.
cjName :: Lens' CreateJob Text
cjName = lens _cjName (\s a -> s {_cjName = a})

-- | The name or Amazon Resource Name (ARN) of the IAM role associated with this job.
cjRole :: Lens' CreateJob Text
cjRole = lens _cjRole (\s a -> s {_cjRole = a})

-- | The @JobCommand@ that executes this job.
cjCommand :: Lens' CreateJob JobCommand
cjCommand = lens _cjCommand (\s a -> s {_cjCommand = a})

instance AWSRequest CreateJob where
  type Rs CreateJob = CreateJobResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          CreateJobResponse'
            <$> (x .?> "Name") <*> (pure (fromEnum s))
      )

instance Hashable CreateJob

instance NFData CreateJob

instance ToHeaders CreateJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CreateJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateJob where
  toJSON CreateJob' {..} =
    object
      ( catMaybes
          [ ("NonOverridableArguments" .=)
              <$> _cjNonOverridableArguments,
            ("SecurityConfiguration" .=)
              <$> _cjSecurityConfiguration,
            ("Timeout" .=) <$> _cjTimeout,
            ("MaxCapacity" .=) <$> _cjMaxCapacity,
            ("Connections" .=) <$> _cjConnections,
            ("NotificationProperty" .=)
              <$> _cjNotificationProperty,
            ("NumberOfWorkers" .=) <$> _cjNumberOfWorkers,
            ("GlueVersion" .=) <$> _cjGlueVersion,
            ("Tags" .=) <$> _cjTags,
            ("WorkerType" .=) <$> _cjWorkerType,
            ("Description" .=) <$> _cjDescription,
            ("DefaultArguments" .=) <$> _cjDefaultArguments,
            ("AllocatedCapacity" .=) <$> _cjAllocatedCapacity,
            ("ExecutionProperty" .=) <$> _cjExecutionProperty,
            ("MaxRetries" .=) <$> _cjMaxRetries,
            ("LogUri" .=) <$> _cjLogURI,
            Just ("Name" .= _cjName),
            Just ("Role" .= _cjRole),
            Just ("Command" .= _cjCommand)
          ]
      )

instance ToPath CreateJob where
  toPath = const "/"

instance ToQuery CreateJob where
  toQuery = const mempty

-- | /See:/ 'createJobResponse' smart constructor.
data CreateJobResponse = CreateJobResponse'
  { _cjrrsName ::
      !(Maybe Text),
    _cjrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjrrsName' - The unique name that was provided for this job definition.
--
-- * 'cjrrsResponseStatus' - -- | The response status code.
createJobResponse ::
  -- | 'cjrrsResponseStatus'
  Int ->
  CreateJobResponse
createJobResponse pResponseStatus_ =
  CreateJobResponse'
    { _cjrrsName = Nothing,
      _cjrrsResponseStatus = pResponseStatus_
    }

-- | The unique name that was provided for this job definition.
cjrrsName :: Lens' CreateJobResponse (Maybe Text)
cjrrsName = lens _cjrrsName (\s a -> s {_cjrrsName = a})

-- | -- | The response status code.
cjrrsResponseStatus :: Lens' CreateJobResponse Int
cjrrsResponseStatus = lens _cjrrsResponseStatus (\s a -> s {_cjrrsResponseStatus = a})

instance NFData CreateJobResponse
