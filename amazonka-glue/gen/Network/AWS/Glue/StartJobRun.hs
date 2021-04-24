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
-- Module      : Network.AWS.Glue.StartJobRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a job run using a job definition.
module Network.AWS.Glue.StartJobRun
  ( -- * Creating a Request
    startJobRun,
    StartJobRun,

    -- * Request Lenses
    sjrSecurityConfiguration,
    sjrTimeout,
    sjrMaxCapacity,
    sjrNotificationProperty,
    sjrNumberOfWorkers,
    sjrWorkerType,
    sjrJobRunId,
    sjrArguments,
    sjrAllocatedCapacity,
    sjrJobName,

    -- * Destructuring the Response
    startJobRunResponse,
    StartJobRunResponse,

    -- * Response Lenses
    sjrrrsJobRunId,
    sjrrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startJobRun' smart constructor.
data StartJobRun = StartJobRun'
  { _sjrSecurityConfiguration ::
      !(Maybe Text),
    _sjrTimeout :: !(Maybe Nat),
    _sjrMaxCapacity :: !(Maybe Double),
    _sjrNotificationProperty ::
      !(Maybe NotificationProperty),
    _sjrNumberOfWorkers :: !(Maybe Int),
    _sjrWorkerType :: !(Maybe WorkerType),
    _sjrJobRunId :: !(Maybe Text),
    _sjrArguments :: !(Maybe (Map Text Text)),
    _sjrAllocatedCapacity :: !(Maybe Int),
    _sjrJobName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartJobRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrSecurityConfiguration' - The name of the @SecurityConfiguration@ structure to be used with this job run.
--
-- * 'sjrTimeout' - The @JobRun@ timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.
--
-- * 'sjrMaxCapacity' - The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/ AWS Glue pricing page> . Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ . The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job, or an Apache Spark ETL job:     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
--
-- * 'sjrNotificationProperty' - Specifies configuration properties of a job run notification.
--
-- * 'sjrNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated when a job runs. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
--
-- * 'sjrWorkerType' - The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.
--
-- * 'sjrJobRunId' - The ID of a previous @JobRun@ to retry.
--
-- * 'sjrArguments' - The job arguments specifically for this run. For this job run, they replace the default arguments set in the job definition itself. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
--
-- * 'sjrAllocatedCapacity' - This field is deprecated. Use @MaxCapacity@ instead. The number of AWS Glue data processing units (DPUs) to allocate to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- * 'sjrJobName' - The name of the job definition to use.
startJobRun ::
  -- | 'sjrJobName'
  Text ->
  StartJobRun
startJobRun pJobName_ =
  StartJobRun'
    { _sjrSecurityConfiguration = Nothing,
      _sjrTimeout = Nothing,
      _sjrMaxCapacity = Nothing,
      _sjrNotificationProperty = Nothing,
      _sjrNumberOfWorkers = Nothing,
      _sjrWorkerType = Nothing,
      _sjrJobRunId = Nothing,
      _sjrArguments = Nothing,
      _sjrAllocatedCapacity = Nothing,
      _sjrJobName = pJobName_
    }

-- | The name of the @SecurityConfiguration@ structure to be used with this job run.
sjrSecurityConfiguration :: Lens' StartJobRun (Maybe Text)
sjrSecurityConfiguration = lens _sjrSecurityConfiguration (\s a -> s {_sjrSecurityConfiguration = a})

-- | The @JobRun@ timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.
sjrTimeout :: Lens' StartJobRun (Maybe Natural)
sjrTimeout = lens _sjrTimeout (\s a -> s {_sjrTimeout = a}) . mapping _Nat

-- | The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/ AWS Glue pricing page> . Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ . The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job, or an Apache Spark ETL job:     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
sjrMaxCapacity :: Lens' StartJobRun (Maybe Double)
sjrMaxCapacity = lens _sjrMaxCapacity (\s a -> s {_sjrMaxCapacity = a})

-- | Specifies configuration properties of a job run notification.
sjrNotificationProperty :: Lens' StartJobRun (Maybe NotificationProperty)
sjrNotificationProperty = lens _sjrNotificationProperty (\s a -> s {_sjrNotificationProperty = a})

-- | The number of workers of a defined @workerType@ that are allocated when a job runs. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
sjrNumberOfWorkers :: Lens' StartJobRun (Maybe Int)
sjrNumberOfWorkers = lens _sjrNumberOfWorkers (\s a -> s {_sjrNumberOfWorkers = a})

-- | The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.     * For the @G.2X@ worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.
sjrWorkerType :: Lens' StartJobRun (Maybe WorkerType)
sjrWorkerType = lens _sjrWorkerType (\s a -> s {_sjrWorkerType = a})

-- | The ID of a previous @JobRun@ to retry.
sjrJobRunId :: Lens' StartJobRun (Maybe Text)
sjrJobRunId = lens _sjrJobRunId (\s a -> s {_sjrJobRunId = a})

-- | The job arguments specifically for this run. For this job run, they replace the default arguments set in the job definition itself. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
sjrArguments :: Lens' StartJobRun (HashMap Text Text)
sjrArguments = lens _sjrArguments (\s a -> s {_sjrArguments = a}) . _Default . _Map

-- | This field is deprecated. Use @MaxCapacity@ instead. The number of AWS Glue data processing units (DPUs) to allocate to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
sjrAllocatedCapacity :: Lens' StartJobRun (Maybe Int)
sjrAllocatedCapacity = lens _sjrAllocatedCapacity (\s a -> s {_sjrAllocatedCapacity = a})

-- | The name of the job definition to use.
sjrJobName :: Lens' StartJobRun Text
sjrJobName = lens _sjrJobName (\s a -> s {_sjrJobName = a})

instance AWSRequest StartJobRun where
  type Rs StartJobRun = StartJobRunResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          StartJobRunResponse'
            <$> (x .?> "JobRunId") <*> (pure (fromEnum s))
      )

instance Hashable StartJobRun

instance NFData StartJobRun

instance ToHeaders StartJobRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.StartJobRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartJobRun where
  toJSON StartJobRun' {..} =
    object
      ( catMaybes
          [ ("SecurityConfiguration" .=)
              <$> _sjrSecurityConfiguration,
            ("Timeout" .=) <$> _sjrTimeout,
            ("MaxCapacity" .=) <$> _sjrMaxCapacity,
            ("NotificationProperty" .=)
              <$> _sjrNotificationProperty,
            ("NumberOfWorkers" .=) <$> _sjrNumberOfWorkers,
            ("WorkerType" .=) <$> _sjrWorkerType,
            ("JobRunId" .=) <$> _sjrJobRunId,
            ("Arguments" .=) <$> _sjrArguments,
            ("AllocatedCapacity" .=) <$> _sjrAllocatedCapacity,
            Just ("JobName" .= _sjrJobName)
          ]
      )

instance ToPath StartJobRun where
  toPath = const "/"

instance ToQuery StartJobRun where
  toQuery = const mempty

-- | /See:/ 'startJobRunResponse' smart constructor.
data StartJobRunResponse = StartJobRunResponse'
  { _sjrrrsJobRunId ::
      !(Maybe Text),
    _sjrrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartJobRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrrrsJobRunId' - The ID assigned to this job run.
--
-- * 'sjrrrsResponseStatus' - -- | The response status code.
startJobRunResponse ::
  -- | 'sjrrrsResponseStatus'
  Int ->
  StartJobRunResponse
startJobRunResponse pResponseStatus_ =
  StartJobRunResponse'
    { _sjrrrsJobRunId = Nothing,
      _sjrrrsResponseStatus = pResponseStatus_
    }

-- | The ID assigned to this job run.
sjrrrsJobRunId :: Lens' StartJobRunResponse (Maybe Text)
sjrrrsJobRunId = lens _sjrrrsJobRunId (\s a -> s {_sjrrrsJobRunId = a})

-- | -- | The response status code.
sjrrrsResponseStatus :: Lens' StartJobRunResponse Int
sjrrrsResponseStatus = lens _sjrrrsResponseStatus (\s a -> s {_sjrrrsResponseStatus = a})

instance NFData StartJobRunResponse
