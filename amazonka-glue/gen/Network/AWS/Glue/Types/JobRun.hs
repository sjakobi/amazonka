{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JobRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.JobRun where

import Network.AWS.Glue.Types.JobRunState
import Network.AWS.Glue.Types.NotificationProperty
import Network.AWS.Glue.Types.Predecessor
import Network.AWS.Glue.Types.WorkerType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a job run.
--
--
--
-- /See:/ 'jobRun' smart constructor.
data JobRun = JobRun'
  { _jrPredecessorRuns ::
      !(Maybe [Predecessor]),
    _jrExecutionTime :: !(Maybe Int),
    _jrSecurityConfiguration :: !(Maybe Text),
    _jrTimeout :: !(Maybe Nat),
    _jrMaxCapacity :: !(Maybe Double),
    _jrId :: !(Maybe Text),
    _jrNotificationProperty ::
      !(Maybe NotificationProperty),
    _jrLastModifiedOn :: !(Maybe POSIX),
    _jrTriggerName :: !(Maybe Text),
    _jrNumberOfWorkers :: !(Maybe Int),
    _jrLogGroupName :: !(Maybe Text),
    _jrCompletedOn :: !(Maybe POSIX),
    _jrGlueVersion :: !(Maybe Text),
    _jrJobRunState :: !(Maybe JobRunState),
    _jrWorkerType :: !(Maybe WorkerType),
    _jrErrorMessage :: !(Maybe Text),
    _jrStartedOn :: !(Maybe POSIX),
    _jrJobName :: !(Maybe Text),
    _jrArguments :: !(Maybe (Map Text Text)),
    _jrAllocatedCapacity :: !(Maybe Int),
    _jrPreviousRunId :: !(Maybe Text),
    _jrAttempt :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrPredecessorRuns' - A list of predecessors to this job run.
--
-- * 'jrExecutionTime' - The amount of time (in seconds) that the job run consumed resources.
--
-- * 'jrSecurityConfiguration' - The name of the @SecurityConfiguration@ structure to be used with this job run.
--
-- * 'jrTimeout' - The @JobRun@ timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.
--
-- * 'jrMaxCapacity' - The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/ AWS Glue pricing page> . Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ . The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job or an Apache Spark ETL job:     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
--
-- * 'jrId' - The ID of this job run.
--
-- * 'jrNotificationProperty' - Specifies configuration properties of a job run notification.
--
-- * 'jrLastModifiedOn' - The last time that this job run was modified.
--
-- * 'jrTriggerName' - The name of the trigger that started this job run.
--
-- * 'jrNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated when a job runs. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
--
-- * 'jrLogGroupName' - The name of the log group for secure logging that can be server-side encrypted in Amazon CloudWatch using AWS KMS. This name can be @/aws-glue/jobs/@ , in which case the default encryption is @NONE@ . If you add a role name and @SecurityConfiguration@ name (in other words, @/aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/@ ), then that security configuration is used to encrypt the log group.
--
-- * 'jrCompletedOn' - The date and time that this job run completed.
--
-- * 'jrGlueVersion' - Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Jobs that are created without specifying a Glue version default to Glue 0.9.
--
-- * 'jrJobRunState' - The current state of the job run. For more information about the statuses of jobs that have terminated abnormally, see <https://docs.aws.amazon.com/glue/latest/dg/job-run-statuses.html AWS Glue Job Run Statuses> .
--
-- * 'jrWorkerType' - The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.
--
-- * 'jrErrorMessage' - An error message associated with this job run.
--
-- * 'jrStartedOn' - The date and time at which this job run was started.
--
-- * 'jrJobName' - The name of the job definition being used in this run.
--
-- * 'jrArguments' - The job arguments associated with this run. For this job run, they replace the default arguments set in the job definition itself. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
--
-- * 'jrAllocatedCapacity' - This field is deprecated. Use @MaxCapacity@ instead. The number of AWS Glue data processing units (DPUs) allocated to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- * 'jrPreviousRunId' - The ID of the previous run of this job. For example, the @JobRunId@ specified in the @StartJobRun@ action.
--
-- * 'jrAttempt' - The number of the attempt to run this job.
jobRun ::
  JobRun
jobRun =
  JobRun'
    { _jrPredecessorRuns = Nothing,
      _jrExecutionTime = Nothing,
      _jrSecurityConfiguration = Nothing,
      _jrTimeout = Nothing,
      _jrMaxCapacity = Nothing,
      _jrId = Nothing,
      _jrNotificationProperty = Nothing,
      _jrLastModifiedOn = Nothing,
      _jrTriggerName = Nothing,
      _jrNumberOfWorkers = Nothing,
      _jrLogGroupName = Nothing,
      _jrCompletedOn = Nothing,
      _jrGlueVersion = Nothing,
      _jrJobRunState = Nothing,
      _jrWorkerType = Nothing,
      _jrErrorMessage = Nothing,
      _jrStartedOn = Nothing,
      _jrJobName = Nothing,
      _jrArguments = Nothing,
      _jrAllocatedCapacity = Nothing,
      _jrPreviousRunId = Nothing,
      _jrAttempt = Nothing
    }

-- | A list of predecessors to this job run.
jrPredecessorRuns :: Lens' JobRun [Predecessor]
jrPredecessorRuns = lens _jrPredecessorRuns (\s a -> s {_jrPredecessorRuns = a}) . _Default . _Coerce

-- | The amount of time (in seconds) that the job run consumed resources.
jrExecutionTime :: Lens' JobRun (Maybe Int)
jrExecutionTime = lens _jrExecutionTime (\s a -> s {_jrExecutionTime = a})

-- | The name of the @SecurityConfiguration@ structure to be used with this job run.
jrSecurityConfiguration :: Lens' JobRun (Maybe Text)
jrSecurityConfiguration = lens _jrSecurityConfiguration (\s a -> s {_jrSecurityConfiguration = a})

-- | The @JobRun@ timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.
jrTimeout :: Lens' JobRun (Maybe Natural)
jrTimeout = lens _jrTimeout (\s a -> s {_jrTimeout = a}) . mapping _Nat

-- | The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/ AWS Glue pricing page> . Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ . The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job or an Apache Spark ETL job:     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
jrMaxCapacity :: Lens' JobRun (Maybe Double)
jrMaxCapacity = lens _jrMaxCapacity (\s a -> s {_jrMaxCapacity = a})

-- | The ID of this job run.
jrId :: Lens' JobRun (Maybe Text)
jrId = lens _jrId (\s a -> s {_jrId = a})

-- | Specifies configuration properties of a job run notification.
jrNotificationProperty :: Lens' JobRun (Maybe NotificationProperty)
jrNotificationProperty = lens _jrNotificationProperty (\s a -> s {_jrNotificationProperty = a})

-- | The last time that this job run was modified.
jrLastModifiedOn :: Lens' JobRun (Maybe UTCTime)
jrLastModifiedOn = lens _jrLastModifiedOn (\s a -> s {_jrLastModifiedOn = a}) . mapping _Time

-- | The name of the trigger that started this job run.
jrTriggerName :: Lens' JobRun (Maybe Text)
jrTriggerName = lens _jrTriggerName (\s a -> s {_jrTriggerName = a})

-- | The number of workers of a defined @workerType@ that are allocated when a job runs. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
jrNumberOfWorkers :: Lens' JobRun (Maybe Int)
jrNumberOfWorkers = lens _jrNumberOfWorkers (\s a -> s {_jrNumberOfWorkers = a})

-- | The name of the log group for secure logging that can be server-side encrypted in Amazon CloudWatch using AWS KMS. This name can be @/aws-glue/jobs/@ , in which case the default encryption is @NONE@ . If you add a role name and @SecurityConfiguration@ name (in other words, @/aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/@ ), then that security configuration is used to encrypt the log group.
jrLogGroupName :: Lens' JobRun (Maybe Text)
jrLogGroupName = lens _jrLogGroupName (\s a -> s {_jrLogGroupName = a})

-- | The date and time that this job run completed.
jrCompletedOn :: Lens' JobRun (Maybe UTCTime)
jrCompletedOn = lens _jrCompletedOn (\s a -> s {_jrCompletedOn = a}) . mapping _Time

-- | Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Jobs that are created without specifying a Glue version default to Glue 0.9.
jrGlueVersion :: Lens' JobRun (Maybe Text)
jrGlueVersion = lens _jrGlueVersion (\s a -> s {_jrGlueVersion = a})

-- | The current state of the job run. For more information about the statuses of jobs that have terminated abnormally, see <https://docs.aws.amazon.com/glue/latest/dg/job-run-statuses.html AWS Glue Job Run Statuses> .
jrJobRunState :: Lens' JobRun (Maybe JobRunState)
jrJobRunState = lens _jrJobRunState (\s a -> s {_jrJobRunState = a})

-- | The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.
jrWorkerType :: Lens' JobRun (Maybe WorkerType)
jrWorkerType = lens _jrWorkerType (\s a -> s {_jrWorkerType = a})

-- | An error message associated with this job run.
jrErrorMessage :: Lens' JobRun (Maybe Text)
jrErrorMessage = lens _jrErrorMessage (\s a -> s {_jrErrorMessage = a})

-- | The date and time at which this job run was started.
jrStartedOn :: Lens' JobRun (Maybe UTCTime)
jrStartedOn = lens _jrStartedOn (\s a -> s {_jrStartedOn = a}) . mapping _Time

-- | The name of the job definition being used in this run.
jrJobName :: Lens' JobRun (Maybe Text)
jrJobName = lens _jrJobName (\s a -> s {_jrJobName = a})

-- | The job arguments associated with this run. For this job run, they replace the default arguments set in the job definition itself. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
jrArguments :: Lens' JobRun (HashMap Text Text)
jrArguments = lens _jrArguments (\s a -> s {_jrArguments = a}) . _Default . _Map

-- | This field is deprecated. Use @MaxCapacity@ instead. The number of AWS Glue data processing units (DPUs) allocated to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
jrAllocatedCapacity :: Lens' JobRun (Maybe Int)
jrAllocatedCapacity = lens _jrAllocatedCapacity (\s a -> s {_jrAllocatedCapacity = a})

-- | The ID of the previous run of this job. For example, the @JobRunId@ specified in the @StartJobRun@ action.
jrPreviousRunId :: Lens' JobRun (Maybe Text)
jrPreviousRunId = lens _jrPreviousRunId (\s a -> s {_jrPreviousRunId = a})

-- | The number of the attempt to run this job.
jrAttempt :: Lens' JobRun (Maybe Int)
jrAttempt = lens _jrAttempt (\s a -> s {_jrAttempt = a})

instance FromJSON JobRun where
  parseJSON =
    withObject
      "JobRun"
      ( \x ->
          JobRun'
            <$> (x .:? "PredecessorRuns" .!= mempty)
            <*> (x .:? "ExecutionTime")
            <*> (x .:? "SecurityConfiguration")
            <*> (x .:? "Timeout")
            <*> (x .:? "MaxCapacity")
            <*> (x .:? "Id")
            <*> (x .:? "NotificationProperty")
            <*> (x .:? "LastModifiedOn")
            <*> (x .:? "TriggerName")
            <*> (x .:? "NumberOfWorkers")
            <*> (x .:? "LogGroupName")
            <*> (x .:? "CompletedOn")
            <*> (x .:? "GlueVersion")
            <*> (x .:? "JobRunState")
            <*> (x .:? "WorkerType")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "StartedOn")
            <*> (x .:? "JobName")
            <*> (x .:? "Arguments" .!= mempty)
            <*> (x .:? "AllocatedCapacity")
            <*> (x .:? "PreviousRunId")
            <*> (x .:? "Attempt")
      )

instance Hashable JobRun

instance NFData JobRun
