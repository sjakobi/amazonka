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
-- Module      : Network.AWS.StepFunctions.DescribeExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an execution.
--
--
-- This API action is not supported by @EXPRESS@ state machines.
module Network.AWS.StepFunctions.DescribeExecution
  ( -- * Creating a Request
    describeExecution,
    DescribeExecution,

    -- * Request Lenses
    deExecutionARN,

    -- * Destructuring the Response
    describeExecutionResponse,
    DescribeExecutionResponse,

    -- * Response Lenses
    derrsStopDate,
    derrsInputDetails,
    derrsInput,
    derrsName,
    derrsOutput,
    derrsTraceHeader,
    derrsOutputDetails,
    derrsResponseStatus,
    derrsExecutionARN,
    derrsStateMachineARN,
    derrsStatus,
    derrsStartDate,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'describeExecution' smart constructor.
newtype DescribeExecution = DescribeExecution'
  { _deExecutionARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deExecutionARN' - The Amazon Resource Name (ARN) of the execution to describe.
describeExecution ::
  -- | 'deExecutionARN'
  Text ->
  DescribeExecution
describeExecution pExecutionARN_ =
  DescribeExecution'
    { _deExecutionARN =
        pExecutionARN_
    }

-- | The Amazon Resource Name (ARN) of the execution to describe.
deExecutionARN :: Lens' DescribeExecution Text
deExecutionARN = lens _deExecutionARN (\s a -> s {_deExecutionARN = a})

instance AWSRequest DescribeExecution where
  type Rs DescribeExecution = DescribeExecutionResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          DescribeExecutionResponse'
            <$> (x .?> "stopDate")
            <*> (x .?> "inputDetails")
            <*> (x .?> "input")
            <*> (x .?> "name")
            <*> (x .?> "output")
            <*> (x .?> "traceHeader")
            <*> (x .?> "outputDetails")
            <*> (pure (fromEnum s))
            <*> (x .:> "executionArn")
            <*> (x .:> "stateMachineArn")
            <*> (x .:> "status")
            <*> (x .:> "startDate")
      )

instance Hashable DescribeExecution

instance NFData DescribeExecution

instance ToHeaders DescribeExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSStepFunctions.DescribeExecution" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeExecution where
  toJSON DescribeExecution' {..} =
    object
      ( catMaybes
          [Just ("executionArn" .= _deExecutionARN)]
      )

instance ToPath DescribeExecution where
  toPath = const "/"

instance ToQuery DescribeExecution where
  toQuery = const mempty

-- | /See:/ 'describeExecutionResponse' smart constructor.
data DescribeExecutionResponse = DescribeExecutionResponse'
  { _derrsStopDate ::
      !(Maybe POSIX),
    _derrsInputDetails ::
      !( Maybe
           CloudWatchEventsExecutionDataDetails
       ),
    _derrsInput ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _derrsName ::
      !(Maybe Text),
    _derrsOutput ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _derrsTraceHeader ::
      !(Maybe Text),
    _derrsOutputDetails ::
      !( Maybe
           CloudWatchEventsExecutionDataDetails
       ),
    _derrsResponseStatus ::
      !Int,
    _derrsExecutionARN ::
      !Text,
    _derrsStateMachineARN ::
      !Text,
    _derrsStatus ::
      !ExecutionStatus,
    _derrsStartDate ::
      !POSIX
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsStopDate' - If the execution has already ended, the date the execution stopped.
--
-- * 'derrsInputDetails' - Undocumented member.
--
-- * 'derrsInput' - The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- * 'derrsName' - The name of the execution. A name must /not/ contain:     * white space     * brackets @< > { } [ ]@      * wildcard characters @? *@      * special characters @" # % \ ^ | ~ ` $ & , ; : /@      * control characters (@U+0000-001F@ , @U+007F-009F@ ) To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
--
-- * 'derrsOutput' - The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- * 'derrsTraceHeader' - The AWS X-Ray trace header that was passed to the execution.
--
-- * 'derrsOutputDetails' - Undocumented member.
--
-- * 'derrsResponseStatus' - -- | The response status code.
--
-- * 'derrsExecutionARN' - The Amazon Resource Name (ARN) that identifies the execution.
--
-- * 'derrsStateMachineARN' - The Amazon Resource Name (ARN) of the executed stated machine.
--
-- * 'derrsStatus' - The current status of the execution.
--
-- * 'derrsStartDate' - The date the execution is started.
describeExecutionResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  -- | 'derrsExecutionARN'
  Text ->
  -- | 'derrsStateMachineARN'
  Text ->
  -- | 'derrsStatus'
  ExecutionStatus ->
  -- | 'derrsStartDate'
  UTCTime ->
  DescribeExecutionResponse
describeExecutionResponse
  pResponseStatus_
  pExecutionARN_
  pStateMachineARN_
  pStatus_
  pStartDate_ =
    DescribeExecutionResponse'
      { _derrsStopDate =
          Nothing,
        _derrsInputDetails = Nothing,
        _derrsInput = Nothing,
        _derrsName = Nothing,
        _derrsOutput = Nothing,
        _derrsTraceHeader = Nothing,
        _derrsOutputDetails = Nothing,
        _derrsResponseStatus = pResponseStatus_,
        _derrsExecutionARN = pExecutionARN_,
        _derrsStateMachineARN = pStateMachineARN_,
        _derrsStatus = pStatus_,
        _derrsStartDate = _Time # pStartDate_
      }

-- | If the execution has already ended, the date the execution stopped.
derrsStopDate :: Lens' DescribeExecutionResponse (Maybe UTCTime)
derrsStopDate = lens _derrsStopDate (\s a -> s {_derrsStopDate = a}) . mapping _Time

-- | Undocumented member.
derrsInputDetails :: Lens' DescribeExecutionResponse (Maybe CloudWatchEventsExecutionDataDetails)
derrsInputDetails = lens _derrsInputDetails (\s a -> s {_derrsInputDetails = a})

-- | The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
derrsInput :: Lens' DescribeExecutionResponse (Maybe Text)
derrsInput = lens _derrsInput (\s a -> s {_derrsInput = a}) . mapping _Sensitive

-- | The name of the execution. A name must /not/ contain:     * white space     * brackets @< > { } [ ]@      * wildcard characters @? *@      * special characters @" # % \ ^ | ~ ` $ & , ; : /@      * control characters (@U+0000-001F@ , @U+007F-009F@ ) To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
derrsName :: Lens' DescribeExecutionResponse (Maybe Text)
derrsName = lens _derrsName (\s a -> s {_derrsName = a})

-- | The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
derrsOutput :: Lens' DescribeExecutionResponse (Maybe Text)
derrsOutput = lens _derrsOutput (\s a -> s {_derrsOutput = a}) . mapping _Sensitive

-- | The AWS X-Ray trace header that was passed to the execution.
derrsTraceHeader :: Lens' DescribeExecutionResponse (Maybe Text)
derrsTraceHeader = lens _derrsTraceHeader (\s a -> s {_derrsTraceHeader = a})

-- | Undocumented member.
derrsOutputDetails :: Lens' DescribeExecutionResponse (Maybe CloudWatchEventsExecutionDataDetails)
derrsOutputDetails = lens _derrsOutputDetails (\s a -> s {_derrsOutputDetails = a})

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeExecutionResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) that identifies the execution.
derrsExecutionARN :: Lens' DescribeExecutionResponse Text
derrsExecutionARN = lens _derrsExecutionARN (\s a -> s {_derrsExecutionARN = a})

-- | The Amazon Resource Name (ARN) of the executed stated machine.
derrsStateMachineARN :: Lens' DescribeExecutionResponse Text
derrsStateMachineARN = lens _derrsStateMachineARN (\s a -> s {_derrsStateMachineARN = a})

-- | The current status of the execution.
derrsStatus :: Lens' DescribeExecutionResponse ExecutionStatus
derrsStatus = lens _derrsStatus (\s a -> s {_derrsStatus = a})

-- | The date the execution is started.
derrsStartDate :: Lens' DescribeExecutionResponse UTCTime
derrsStartDate = lens _derrsStartDate (\s a -> s {_derrsStartDate = a}) . _Time

instance NFData DescribeExecutionResponse
