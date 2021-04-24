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
-- Module      : Network.AWS.StepFunctions.DescribeStateMachineForExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the state machine associated with a specific execution.
--
--
-- This API action is not supported by @EXPRESS@ state machines.
module Network.AWS.StepFunctions.DescribeStateMachineForExecution
  ( -- * Creating a Request
    describeStateMachineForExecution,
    DescribeStateMachineForExecution,

    -- * Request Lenses
    dsmfeExecutionARN,

    -- * Destructuring the Response
    describeStateMachineForExecutionResponse,
    DescribeStateMachineForExecutionResponse,

    -- * Response Lenses
    dsmferrsTracingConfiguration,
    dsmferrsLoggingConfiguration,
    dsmferrsResponseStatus,
    dsmferrsStateMachineARN,
    dsmferrsName,
    dsmferrsDefinition,
    dsmferrsRoleARN,
    dsmferrsUpdateDate,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'describeStateMachineForExecution' smart constructor.
newtype DescribeStateMachineForExecution = DescribeStateMachineForExecution'
  { _dsmfeExecutionARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStateMachineForExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsmfeExecutionARN' - The Amazon Resource Name (ARN) of the execution you want state machine information for.
describeStateMachineForExecution ::
  -- | 'dsmfeExecutionARN'
  Text ->
  DescribeStateMachineForExecution
describeStateMachineForExecution pExecutionARN_ =
  DescribeStateMachineForExecution'
    { _dsmfeExecutionARN =
        pExecutionARN_
    }

-- | The Amazon Resource Name (ARN) of the execution you want state machine information for.
dsmfeExecutionARN :: Lens' DescribeStateMachineForExecution Text
dsmfeExecutionARN = lens _dsmfeExecutionARN (\s a -> s {_dsmfeExecutionARN = a})

instance AWSRequest DescribeStateMachineForExecution where
  type
    Rs DescribeStateMachineForExecution =
      DescribeStateMachineForExecutionResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          DescribeStateMachineForExecutionResponse'
            <$> (x .?> "tracingConfiguration")
            <*> (x .?> "loggingConfiguration")
            <*> (pure (fromEnum s))
            <*> (x .:> "stateMachineArn")
            <*> (x .:> "name")
            <*> (x .:> "definition")
            <*> (x .:> "roleArn")
            <*> (x .:> "updateDate")
      )

instance Hashable DescribeStateMachineForExecution

instance NFData DescribeStateMachineForExecution

instance ToHeaders DescribeStateMachineForExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSStepFunctions.DescribeStateMachineForExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeStateMachineForExecution where
  toJSON DescribeStateMachineForExecution' {..} =
    object
      ( catMaybes
          [Just ("executionArn" .= _dsmfeExecutionARN)]
      )

instance ToPath DescribeStateMachineForExecution where
  toPath = const "/"

instance ToQuery DescribeStateMachineForExecution where
  toQuery = const mempty

-- | /See:/ 'describeStateMachineForExecutionResponse' smart constructor.
data DescribeStateMachineForExecutionResponse = DescribeStateMachineForExecutionResponse'
  { _dsmferrsTracingConfiguration ::
      !( Maybe
           TracingConfiguration
       ),
    _dsmferrsLoggingConfiguration ::
      !( Maybe
           LoggingConfiguration
       ),
    _dsmferrsResponseStatus ::
      !Int,
    _dsmferrsStateMachineARN ::
      !Text,
    _dsmferrsName ::
      !Text,
    _dsmferrsDefinition ::
      !( Sensitive
           Text
       ),
    _dsmferrsRoleARN ::
      !Text,
    _dsmferrsUpdateDate ::
      !POSIX
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStateMachineForExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsmferrsTracingConfiguration' - Selects whether AWS X-Ray tracing is enabled.
--
-- * 'dsmferrsLoggingConfiguration' - Undocumented member.
--
-- * 'dsmferrsResponseStatus' - -- | The response status code.
--
-- * 'dsmferrsStateMachineARN' - The Amazon Resource Name (ARN) of the state machine associated with the execution.
--
-- * 'dsmferrsName' - The name of the state machine associated with the execution.
--
-- * 'dsmferrsDefinition' - The Amazon States Language definition of the state machine. See <https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html Amazon States Language> .
--
-- * 'dsmferrsRoleARN' - The Amazon Resource Name (ARN) of the IAM role of the State Machine for the execution.
--
-- * 'dsmferrsUpdateDate' - The date and time the state machine associated with an execution was updated. For a newly created state machine, this is the creation date.
describeStateMachineForExecutionResponse ::
  -- | 'dsmferrsResponseStatus'
  Int ->
  -- | 'dsmferrsStateMachineARN'
  Text ->
  -- | 'dsmferrsName'
  Text ->
  -- | 'dsmferrsDefinition'
  Text ->
  -- | 'dsmferrsRoleARN'
  Text ->
  -- | 'dsmferrsUpdateDate'
  UTCTime ->
  DescribeStateMachineForExecutionResponse
describeStateMachineForExecutionResponse
  pResponseStatus_
  pStateMachineARN_
  pName_
  pDefinition_
  pRoleARN_
  pUpdateDate_ =
    DescribeStateMachineForExecutionResponse'
      { _dsmferrsTracingConfiguration =
          Nothing,
        _dsmferrsLoggingConfiguration =
          Nothing,
        _dsmferrsResponseStatus =
          pResponseStatus_,
        _dsmferrsStateMachineARN =
          pStateMachineARN_,
        _dsmferrsName = pName_,
        _dsmferrsDefinition =
          _Sensitive # pDefinition_,
        _dsmferrsRoleARN = pRoleARN_,
        _dsmferrsUpdateDate =
          _Time # pUpdateDate_
      }

-- | Selects whether AWS X-Ray tracing is enabled.
dsmferrsTracingConfiguration :: Lens' DescribeStateMachineForExecutionResponse (Maybe TracingConfiguration)
dsmferrsTracingConfiguration = lens _dsmferrsTracingConfiguration (\s a -> s {_dsmferrsTracingConfiguration = a})

-- | Undocumented member.
dsmferrsLoggingConfiguration :: Lens' DescribeStateMachineForExecutionResponse (Maybe LoggingConfiguration)
dsmferrsLoggingConfiguration = lens _dsmferrsLoggingConfiguration (\s a -> s {_dsmferrsLoggingConfiguration = a})

-- | -- | The response status code.
dsmferrsResponseStatus :: Lens' DescribeStateMachineForExecutionResponse Int
dsmferrsResponseStatus = lens _dsmferrsResponseStatus (\s a -> s {_dsmferrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the state machine associated with the execution.
dsmferrsStateMachineARN :: Lens' DescribeStateMachineForExecutionResponse Text
dsmferrsStateMachineARN = lens _dsmferrsStateMachineARN (\s a -> s {_dsmferrsStateMachineARN = a})

-- | The name of the state machine associated with the execution.
dsmferrsName :: Lens' DescribeStateMachineForExecutionResponse Text
dsmferrsName = lens _dsmferrsName (\s a -> s {_dsmferrsName = a})

-- | The Amazon States Language definition of the state machine. See <https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html Amazon States Language> .
dsmferrsDefinition :: Lens' DescribeStateMachineForExecutionResponse Text
dsmferrsDefinition = lens _dsmferrsDefinition (\s a -> s {_dsmferrsDefinition = a}) . _Sensitive

-- | The Amazon Resource Name (ARN) of the IAM role of the State Machine for the execution.
dsmferrsRoleARN :: Lens' DescribeStateMachineForExecutionResponse Text
dsmferrsRoleARN = lens _dsmferrsRoleARN (\s a -> s {_dsmferrsRoleARN = a})

-- | The date and time the state machine associated with an execution was updated. For a newly created state machine, this is the creation date.
dsmferrsUpdateDate :: Lens' DescribeStateMachineForExecutionResponse UTCTime
dsmferrsUpdateDate = lens _dsmferrsUpdateDate (\s a -> s {_dsmferrsUpdateDate = a}) . _Time

instance
  NFData
    DescribeStateMachineForExecutionResponse
