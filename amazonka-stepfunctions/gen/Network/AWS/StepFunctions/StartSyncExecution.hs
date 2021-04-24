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
-- Module      : Network.AWS.StepFunctions.StartSyncExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a Synchronous Express state machine execution.
module Network.AWS.StepFunctions.StartSyncExecution
  ( -- * Creating a Request
    startSyncExecution,
    StartSyncExecution,

    -- * Request Lenses
    sseInput,
    sseName,
    sseTraceHeader,
    sseStateMachineARN,

    -- * Destructuring the Response
    startSyncExecutionResponse,
    StartSyncExecutionResponse,

    -- * Response Lenses
    sserrsStateMachineARN,
    sserrsInputDetails,
    sserrsInput,
    sserrsName,
    sserrsOutput,
    sserrsCause,
    sserrsBillingDetails,
    sserrsTraceHeader,
    sserrsError,
    sserrsOutputDetails,
    sserrsResponseStatus,
    sserrsExecutionARN,
    sserrsStartDate,
    sserrsStopDate,
    sserrsStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'startSyncExecution' smart constructor.
data StartSyncExecution = StartSyncExecution'
  { _sseInput ::
      !(Maybe (Sensitive Text)),
    _sseName :: !(Maybe Text),
    _sseTraceHeader :: !(Maybe Text),
    _sseStateMachineARN :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartSyncExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sseInput' - The string that contains the JSON input data for the execution, for example: @"input": "{\"first_name\" : \"test\"}"@  Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- * 'sseName' - The name of the execution.
--
-- * 'sseTraceHeader' - Passes the AWS X-Ray trace header. The trace header can also be passed in the request payload.
--
-- * 'sseStateMachineARN' - The Amazon Resource Name (ARN) of the state machine to execute.
startSyncExecution ::
  -- | 'sseStateMachineARN'
  Text ->
  StartSyncExecution
startSyncExecution pStateMachineARN_ =
  StartSyncExecution'
    { _sseInput = Nothing,
      _sseName = Nothing,
      _sseTraceHeader = Nothing,
      _sseStateMachineARN = pStateMachineARN_
    }

-- | The string that contains the JSON input data for the execution, for example: @"input": "{\"first_name\" : \"test\"}"@  Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
sseInput :: Lens' StartSyncExecution (Maybe Text)
sseInput = lens _sseInput (\s a -> s {_sseInput = a}) . mapping _Sensitive

-- | The name of the execution.
sseName :: Lens' StartSyncExecution (Maybe Text)
sseName = lens _sseName (\s a -> s {_sseName = a})

-- | Passes the AWS X-Ray trace header. The trace header can also be passed in the request payload.
sseTraceHeader :: Lens' StartSyncExecution (Maybe Text)
sseTraceHeader = lens _sseTraceHeader (\s a -> s {_sseTraceHeader = a})

-- | The Amazon Resource Name (ARN) of the state machine to execute.
sseStateMachineARN :: Lens' StartSyncExecution Text
sseStateMachineARN = lens _sseStateMachineARN (\s a -> s {_sseStateMachineARN = a})

instance AWSRequest StartSyncExecution where
  type
    Rs StartSyncExecution =
      StartSyncExecutionResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          StartSyncExecutionResponse'
            <$> (x .?> "stateMachineArn")
            <*> (x .?> "inputDetails")
            <*> (x .?> "input")
            <*> (x .?> "name")
            <*> (x .?> "output")
            <*> (x .?> "cause")
            <*> (x .?> "billingDetails")
            <*> (x .?> "traceHeader")
            <*> (x .?> "error")
            <*> (x .?> "outputDetails")
            <*> (pure (fromEnum s))
            <*> (x .:> "executionArn")
            <*> (x .:> "startDate")
            <*> (x .:> "stopDate")
            <*> (x .:> "status")
      )

instance Hashable StartSyncExecution

instance NFData StartSyncExecution

instance ToHeaders StartSyncExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSStepFunctions.StartSyncExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON StartSyncExecution where
  toJSON StartSyncExecution' {..} =
    object
      ( catMaybes
          [ ("input" .=) <$> _sseInput,
            ("name" .=) <$> _sseName,
            ("traceHeader" .=) <$> _sseTraceHeader,
            Just ("stateMachineArn" .= _sseStateMachineARN)
          ]
      )

instance ToPath StartSyncExecution where
  toPath = const "/"

instance ToQuery StartSyncExecution where
  toQuery = const mempty

-- | /See:/ 'startSyncExecutionResponse' smart constructor.
data StartSyncExecutionResponse = StartSyncExecutionResponse'
  { _sserrsStateMachineARN ::
      !(Maybe Text),
    _sserrsInputDetails ::
      !( Maybe
           CloudWatchEventsExecutionDataDetails
       ),
    _sserrsInput ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _sserrsName ::
      !(Maybe Text),
    _sserrsOutput ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _sserrsCause ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _sserrsBillingDetails ::
      !( Maybe
           BillingDetails
       ),
    _sserrsTraceHeader ::
      !(Maybe Text),
    _sserrsError ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _sserrsOutputDetails ::
      !( Maybe
           CloudWatchEventsExecutionDataDetails
       ),
    _sserrsResponseStatus ::
      !Int,
    _sserrsExecutionARN ::
      !Text,
    _sserrsStartDate ::
      !POSIX,
    _sserrsStopDate ::
      !POSIX,
    _sserrsStatus ::
      !SyncExecutionStatus
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartSyncExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sserrsStateMachineARN' - The Amazon Resource Name (ARN) that identifies the state machine.
--
-- * 'sserrsInputDetails' - Undocumented member.
--
-- * 'sserrsInput' - The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- * 'sserrsName' - The name of the execution.
--
-- * 'sserrsOutput' - The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- * 'sserrsCause' - A more detailed explanation of the cause of the failure.
--
-- * 'sserrsBillingDetails' - An object that describes workflow billing details, including billed duration and memory use.
--
-- * 'sserrsTraceHeader' - The AWS X-Ray trace header that was passed to the execution.
--
-- * 'sserrsError' - The error code of the failure.
--
-- * 'sserrsOutputDetails' - Undocumented member.
--
-- * 'sserrsResponseStatus' - -- | The response status code.
--
-- * 'sserrsExecutionARN' - The Amazon Resource Name (ARN) that identifies the execution.
--
-- * 'sserrsStartDate' - The date the execution is started.
--
-- * 'sserrsStopDate' - If the execution has already ended, the date the execution stopped.
--
-- * 'sserrsStatus' - The current status of the execution.
startSyncExecutionResponse ::
  -- | 'sserrsResponseStatus'
  Int ->
  -- | 'sserrsExecutionARN'
  Text ->
  -- | 'sserrsStartDate'
  UTCTime ->
  -- | 'sserrsStopDate'
  UTCTime ->
  -- | 'sserrsStatus'
  SyncExecutionStatus ->
  StartSyncExecutionResponse
startSyncExecutionResponse
  pResponseStatus_
  pExecutionARN_
  pStartDate_
  pStopDate_
  pStatus_ =
    StartSyncExecutionResponse'
      { _sserrsStateMachineARN =
          Nothing,
        _sserrsInputDetails = Nothing,
        _sserrsInput = Nothing,
        _sserrsName = Nothing,
        _sserrsOutput = Nothing,
        _sserrsCause = Nothing,
        _sserrsBillingDetails = Nothing,
        _sserrsTraceHeader = Nothing,
        _sserrsError = Nothing,
        _sserrsOutputDetails = Nothing,
        _sserrsResponseStatus = pResponseStatus_,
        _sserrsExecutionARN = pExecutionARN_,
        _sserrsStartDate = _Time # pStartDate_,
        _sserrsStopDate = _Time # pStopDate_,
        _sserrsStatus = pStatus_
      }

-- | The Amazon Resource Name (ARN) that identifies the state machine.
sserrsStateMachineARN :: Lens' StartSyncExecutionResponse (Maybe Text)
sserrsStateMachineARN = lens _sserrsStateMachineARN (\s a -> s {_sserrsStateMachineARN = a})

-- | Undocumented member.
sserrsInputDetails :: Lens' StartSyncExecutionResponse (Maybe CloudWatchEventsExecutionDataDetails)
sserrsInputDetails = lens _sserrsInputDetails (\s a -> s {_sserrsInputDetails = a})

-- | The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
sserrsInput :: Lens' StartSyncExecutionResponse (Maybe Text)
sserrsInput = lens _sserrsInput (\s a -> s {_sserrsInput = a}) . mapping _Sensitive

-- | The name of the execution.
sserrsName :: Lens' StartSyncExecutionResponse (Maybe Text)
sserrsName = lens _sserrsName (\s a -> s {_sserrsName = a})

-- | The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
sserrsOutput :: Lens' StartSyncExecutionResponse (Maybe Text)
sserrsOutput = lens _sserrsOutput (\s a -> s {_sserrsOutput = a}) . mapping _Sensitive

-- | A more detailed explanation of the cause of the failure.
sserrsCause :: Lens' StartSyncExecutionResponse (Maybe Text)
sserrsCause = lens _sserrsCause (\s a -> s {_sserrsCause = a}) . mapping _Sensitive

-- | An object that describes workflow billing details, including billed duration and memory use.
sserrsBillingDetails :: Lens' StartSyncExecutionResponse (Maybe BillingDetails)
sserrsBillingDetails = lens _sserrsBillingDetails (\s a -> s {_sserrsBillingDetails = a})

-- | The AWS X-Ray trace header that was passed to the execution.
sserrsTraceHeader :: Lens' StartSyncExecutionResponse (Maybe Text)
sserrsTraceHeader = lens _sserrsTraceHeader (\s a -> s {_sserrsTraceHeader = a})

-- | The error code of the failure.
sserrsError :: Lens' StartSyncExecutionResponse (Maybe Text)
sserrsError = lens _sserrsError (\s a -> s {_sserrsError = a}) . mapping _Sensitive

-- | Undocumented member.
sserrsOutputDetails :: Lens' StartSyncExecutionResponse (Maybe CloudWatchEventsExecutionDataDetails)
sserrsOutputDetails = lens _sserrsOutputDetails (\s a -> s {_sserrsOutputDetails = a})

-- | -- | The response status code.
sserrsResponseStatus :: Lens' StartSyncExecutionResponse Int
sserrsResponseStatus = lens _sserrsResponseStatus (\s a -> s {_sserrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) that identifies the execution.
sserrsExecutionARN :: Lens' StartSyncExecutionResponse Text
sserrsExecutionARN = lens _sserrsExecutionARN (\s a -> s {_sserrsExecutionARN = a})

-- | The date the execution is started.
sserrsStartDate :: Lens' StartSyncExecutionResponse UTCTime
sserrsStartDate = lens _sserrsStartDate (\s a -> s {_sserrsStartDate = a}) . _Time

-- | If the execution has already ended, the date the execution stopped.
sserrsStopDate :: Lens' StartSyncExecutionResponse UTCTime
sserrsStopDate = lens _sserrsStopDate (\s a -> s {_sserrsStopDate = a}) . _Time

-- | The current status of the execution.
sserrsStatus :: Lens' StartSyncExecutionResponse SyncExecutionStatus
sserrsStatus = lens _sserrsStatus (\s a -> s {_sserrsStatus = a})

instance NFData StartSyncExecutionResponse
