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
-- Module      : Network.AWS.StepFunctions.DescribeStateMachine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a state machine.
module Network.AWS.StepFunctions.DescribeStateMachine
  ( -- * Creating a Request
    describeStateMachine,
    DescribeStateMachine,

    -- * Request Lenses
    dsmStateMachineARN,

    -- * Destructuring the Response
    describeStateMachineResponse,
    DescribeStateMachineResponse,

    -- * Response Lenses
    dsmrrsStatus,
    dsmrrsTracingConfiguration,
    dsmrrsLoggingConfiguration,
    dsmrrsResponseStatus,
    dsmrrsStateMachineARN,
    dsmrrsName,
    dsmrrsDefinition,
    dsmrrsRoleARN,
    dsmrrsType,
    dsmrrsCreationDate,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'describeStateMachine' smart constructor.
newtype DescribeStateMachine = DescribeStateMachine'
  { _dsmStateMachineARN ::
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

-- | Creates a value of 'DescribeStateMachine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsmStateMachineARN' - The Amazon Resource Name (ARN) of the state machine to describe.
describeStateMachine ::
  -- | 'dsmStateMachineARN'
  Text ->
  DescribeStateMachine
describeStateMachine pStateMachineARN_ =
  DescribeStateMachine'
    { _dsmStateMachineARN =
        pStateMachineARN_
    }

-- | The Amazon Resource Name (ARN) of the state machine to describe.
dsmStateMachineARN :: Lens' DescribeStateMachine Text
dsmStateMachineARN = lens _dsmStateMachineARN (\s a -> s {_dsmStateMachineARN = a})

instance AWSRequest DescribeStateMachine where
  type
    Rs DescribeStateMachine =
      DescribeStateMachineResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          DescribeStateMachineResponse'
            <$> (x .?> "status")
            <*> (x .?> "tracingConfiguration")
            <*> (x .?> "loggingConfiguration")
            <*> (pure (fromEnum s))
            <*> (x .:> "stateMachineArn")
            <*> (x .:> "name")
            <*> (x .:> "definition")
            <*> (x .:> "roleArn")
            <*> (x .:> "type")
            <*> (x .:> "creationDate")
      )

instance Hashable DescribeStateMachine

instance NFData DescribeStateMachine

instance ToHeaders DescribeStateMachine where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSStepFunctions.DescribeStateMachine" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeStateMachine where
  toJSON DescribeStateMachine' {..} =
    object
      ( catMaybes
          [Just ("stateMachineArn" .= _dsmStateMachineARN)]
      )

instance ToPath DescribeStateMachine where
  toPath = const "/"

instance ToQuery DescribeStateMachine where
  toQuery = const mempty

-- | /See:/ 'describeStateMachineResponse' smart constructor.
data DescribeStateMachineResponse = DescribeStateMachineResponse'
  { _dsmrrsStatus ::
      !( Maybe
           StateMachineStatus
       ),
    _dsmrrsTracingConfiguration ::
      !( Maybe
           TracingConfiguration
       ),
    _dsmrrsLoggingConfiguration ::
      !( Maybe
           LoggingConfiguration
       ),
    _dsmrrsResponseStatus ::
      !Int,
    _dsmrrsStateMachineARN ::
      !Text,
    _dsmrrsName ::
      !Text,
    _dsmrrsDefinition ::
      !( Sensitive
           Text
       ),
    _dsmrrsRoleARN ::
      !Text,
    _dsmrrsType ::
      !StateMachineType,
    _dsmrrsCreationDate ::
      !POSIX
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStateMachineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsmrrsStatus' - The current status of the state machine.
--
-- * 'dsmrrsTracingConfiguration' - Selects whether AWS X-Ray tracing is enabled.
--
-- * 'dsmrrsLoggingConfiguration' - Undocumented member.
--
-- * 'dsmrrsResponseStatus' - -- | The response status code.
--
-- * 'dsmrrsStateMachineARN' - The Amazon Resource Name (ARN) that identifies the state machine.
--
-- * 'dsmrrsName' - The name of the state machine. A name must /not/ contain:     * white space     * brackets @< > { } [ ]@      * wildcard characters @? *@      * special characters @" # % \ ^ | ~ ` $ & , ; : /@      * control characters (@U+0000-001F@ , @U+007F-009F@ ) To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
--
-- * 'dsmrrsDefinition' - The Amazon States Language definition of the state machine. See <https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html Amazon States Language> .
--
-- * 'dsmrrsRoleARN' - The Amazon Resource Name (ARN) of the IAM role used when creating this state machine. (The IAM role maintains security by granting Step Functions access to AWS resources.)
--
-- * 'dsmrrsType' - The @type@ of the state machine (@STANDARD@ or @EXPRESS@ ).
--
-- * 'dsmrrsCreationDate' - The date the state machine is created.
describeStateMachineResponse ::
  -- | 'dsmrrsResponseStatus'
  Int ->
  -- | 'dsmrrsStateMachineARN'
  Text ->
  -- | 'dsmrrsName'
  Text ->
  -- | 'dsmrrsDefinition'
  Text ->
  -- | 'dsmrrsRoleARN'
  Text ->
  -- | 'dsmrrsType'
  StateMachineType ->
  -- | 'dsmrrsCreationDate'
  UTCTime ->
  DescribeStateMachineResponse
describeStateMachineResponse
  pResponseStatus_
  pStateMachineARN_
  pName_
  pDefinition_
  pRoleARN_
  pType_
  pCreationDate_ =
    DescribeStateMachineResponse'
      { _dsmrrsStatus =
          Nothing,
        _dsmrrsTracingConfiguration = Nothing,
        _dsmrrsLoggingConfiguration = Nothing,
        _dsmrrsResponseStatus = pResponseStatus_,
        _dsmrrsStateMachineARN = pStateMachineARN_,
        _dsmrrsName = pName_,
        _dsmrrsDefinition = _Sensitive # pDefinition_,
        _dsmrrsRoleARN = pRoleARN_,
        _dsmrrsType = pType_,
        _dsmrrsCreationDate = _Time # pCreationDate_
      }

-- | The current status of the state machine.
dsmrrsStatus :: Lens' DescribeStateMachineResponse (Maybe StateMachineStatus)
dsmrrsStatus = lens _dsmrrsStatus (\s a -> s {_dsmrrsStatus = a})

-- | Selects whether AWS X-Ray tracing is enabled.
dsmrrsTracingConfiguration :: Lens' DescribeStateMachineResponse (Maybe TracingConfiguration)
dsmrrsTracingConfiguration = lens _dsmrrsTracingConfiguration (\s a -> s {_dsmrrsTracingConfiguration = a})

-- | Undocumented member.
dsmrrsLoggingConfiguration :: Lens' DescribeStateMachineResponse (Maybe LoggingConfiguration)
dsmrrsLoggingConfiguration = lens _dsmrrsLoggingConfiguration (\s a -> s {_dsmrrsLoggingConfiguration = a})

-- | -- | The response status code.
dsmrrsResponseStatus :: Lens' DescribeStateMachineResponse Int
dsmrrsResponseStatus = lens _dsmrrsResponseStatus (\s a -> s {_dsmrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) that identifies the state machine.
dsmrrsStateMachineARN :: Lens' DescribeStateMachineResponse Text
dsmrrsStateMachineARN = lens _dsmrrsStateMachineARN (\s a -> s {_dsmrrsStateMachineARN = a})

-- | The name of the state machine. A name must /not/ contain:     * white space     * brackets @< > { } [ ]@      * wildcard characters @? *@      * special characters @" # % \ ^ | ~ ` $ & , ; : /@      * control characters (@U+0000-001F@ , @U+007F-009F@ ) To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
dsmrrsName :: Lens' DescribeStateMachineResponse Text
dsmrrsName = lens _dsmrrsName (\s a -> s {_dsmrrsName = a})

-- | The Amazon States Language definition of the state machine. See <https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html Amazon States Language> .
dsmrrsDefinition :: Lens' DescribeStateMachineResponse Text
dsmrrsDefinition = lens _dsmrrsDefinition (\s a -> s {_dsmrrsDefinition = a}) . _Sensitive

-- | The Amazon Resource Name (ARN) of the IAM role used when creating this state machine. (The IAM role maintains security by granting Step Functions access to AWS resources.)
dsmrrsRoleARN :: Lens' DescribeStateMachineResponse Text
dsmrrsRoleARN = lens _dsmrrsRoleARN (\s a -> s {_dsmrrsRoleARN = a})

-- | The @type@ of the state machine (@STANDARD@ or @EXPRESS@ ).
dsmrrsType :: Lens' DescribeStateMachineResponse StateMachineType
dsmrrsType = lens _dsmrrsType (\s a -> s {_dsmrrsType = a})

-- | The date the state machine is created.
dsmrrsCreationDate :: Lens' DescribeStateMachineResponse UTCTime
dsmrrsCreationDate = lens _dsmrrsCreationDate (\s a -> s {_dsmrrsCreationDate = a}) . _Time

instance NFData DescribeStateMachineResponse
