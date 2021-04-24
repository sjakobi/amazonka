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
-- Module      : Network.AWS.SageMaker.DescribeFlowDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified flow definition.
module Network.AWS.SageMaker.DescribeFlowDefinition
  ( -- * Creating a Request
    describeFlowDefinition,
    DescribeFlowDefinition,

    -- * Request Lenses
    dFlowDefinitionName,

    -- * Destructuring the Response
    describeFlowDefinitionResponse,
    DescribeFlowDefinitionResponse,

    -- * Response Lenses
    dfdrfrsHumanLoopRequestSource,
    dfdrfrsFailureReason,
    dfdrfrsHumanLoopActivationConfig,
    dfdrfrsResponseStatus,
    dfdrfrsFlowDefinitionARN,
    dfdrfrsFlowDefinitionName,
    dfdrfrsFlowDefinitionStatus,
    dfdrfrsCreationTime,
    dfdrfrsHumanLoopConfig,
    dfdrfrsOutputConfig,
    dfdrfrsRoleARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeFlowDefinition' smart constructor.
newtype DescribeFlowDefinition = DescribeFlowDefinition'
  { _dFlowDefinitionName ::
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

-- | Creates a value of 'DescribeFlowDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dFlowDefinitionName' - The name of the flow definition.
describeFlowDefinition ::
  -- | 'dFlowDefinitionName'
  Text ->
  DescribeFlowDefinition
describeFlowDefinition pFlowDefinitionName_ =
  DescribeFlowDefinition'
    { _dFlowDefinitionName =
        pFlowDefinitionName_
    }

-- | The name of the flow definition.
dFlowDefinitionName :: Lens' DescribeFlowDefinition Text
dFlowDefinitionName = lens _dFlowDefinitionName (\s a -> s {_dFlowDefinitionName = a})

instance AWSRequest DescribeFlowDefinition where
  type
    Rs DescribeFlowDefinition =
      DescribeFlowDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeFlowDefinitionResponse'
            <$> (x .?> "HumanLoopRequestSource")
            <*> (x .?> "FailureReason")
            <*> (x .?> "HumanLoopActivationConfig")
            <*> (pure (fromEnum s))
            <*> (x .:> "FlowDefinitionArn")
            <*> (x .:> "FlowDefinitionName")
            <*> (x .:> "FlowDefinitionStatus")
            <*> (x .:> "CreationTime")
            <*> (x .:> "HumanLoopConfig")
            <*> (x .:> "OutputConfig")
            <*> (x .:> "RoleArn")
      )

instance Hashable DescribeFlowDefinition

instance NFData DescribeFlowDefinition

instance ToHeaders DescribeFlowDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeFlowDefinition" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeFlowDefinition where
  toJSON DescribeFlowDefinition' {..} =
    object
      ( catMaybes
          [ Just
              ("FlowDefinitionName" .= _dFlowDefinitionName)
          ]
      )

instance ToPath DescribeFlowDefinition where
  toPath = const "/"

instance ToQuery DescribeFlowDefinition where
  toQuery = const mempty

-- | /See:/ 'describeFlowDefinitionResponse' smart constructor.
data DescribeFlowDefinitionResponse = DescribeFlowDefinitionResponse'
  { _dfdrfrsHumanLoopRequestSource ::
      !( Maybe
           HumanLoopRequestSource
       ),
    _dfdrfrsFailureReason ::
      !( Maybe
           Text
       ),
    _dfdrfrsHumanLoopActivationConfig ::
      !( Maybe
           HumanLoopActivationConfig
       ),
    _dfdrfrsResponseStatus ::
      !Int,
    _dfdrfrsFlowDefinitionARN ::
      !Text,
    _dfdrfrsFlowDefinitionName ::
      !Text,
    _dfdrfrsFlowDefinitionStatus ::
      !FlowDefinitionStatus,
    _dfdrfrsCreationTime ::
      !POSIX,
    _dfdrfrsHumanLoopConfig ::
      !HumanLoopConfig,
    _dfdrfrsOutputConfig ::
      !FlowDefinitionOutputConfig,
    _dfdrfrsRoleARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeFlowDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfdrfrsHumanLoopRequestSource' - Container for configuring the source of human task requests. Used to specify if Amazon Rekognition or Amazon Textract is used as an integration source.
--
-- * 'dfdrfrsFailureReason' - The reason your flow definition failed.
--
-- * 'dfdrfrsHumanLoopActivationConfig' - An object containing information about what triggers a human review workflow.
--
-- * 'dfdrfrsResponseStatus' - -- | The response status code.
--
-- * 'dfdrfrsFlowDefinitionARN' - The Amazon Resource Name (ARN) of the flow defintion.
--
-- * 'dfdrfrsFlowDefinitionName' - The Amazon Resource Name (ARN) of the flow definition.
--
-- * 'dfdrfrsFlowDefinitionStatus' - The status of the flow definition. Valid values are listed below.
--
-- * 'dfdrfrsCreationTime' - The timestamp when the flow definition was created.
--
-- * 'dfdrfrsHumanLoopConfig' - An object containing information about who works on the task, the workforce task price, and other task details.
--
-- * 'dfdrfrsOutputConfig' - An object containing information about the output file.
--
-- * 'dfdrfrsRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) execution role for the flow definition.
describeFlowDefinitionResponse ::
  -- | 'dfdrfrsResponseStatus'
  Int ->
  -- | 'dfdrfrsFlowDefinitionARN'
  Text ->
  -- | 'dfdrfrsFlowDefinitionName'
  Text ->
  -- | 'dfdrfrsFlowDefinitionStatus'
  FlowDefinitionStatus ->
  -- | 'dfdrfrsCreationTime'
  UTCTime ->
  -- | 'dfdrfrsHumanLoopConfig'
  HumanLoopConfig ->
  -- | 'dfdrfrsOutputConfig'
  FlowDefinitionOutputConfig ->
  -- | 'dfdrfrsRoleARN'
  Text ->
  DescribeFlowDefinitionResponse
describeFlowDefinitionResponse
  pResponseStatus_
  pFlowDefinitionARN_
  pFlowDefinitionName_
  pFlowDefinitionStatus_
  pCreationTime_
  pHumanLoopConfig_
  pOutputConfig_
  pRoleARN_ =
    DescribeFlowDefinitionResponse'
      { _dfdrfrsHumanLoopRequestSource =
          Nothing,
        _dfdrfrsFailureReason = Nothing,
        _dfdrfrsHumanLoopActivationConfig = Nothing,
        _dfdrfrsResponseStatus = pResponseStatus_,
        _dfdrfrsFlowDefinitionARN =
          pFlowDefinitionARN_,
        _dfdrfrsFlowDefinitionName =
          pFlowDefinitionName_,
        _dfdrfrsFlowDefinitionStatus =
          pFlowDefinitionStatus_,
        _dfdrfrsCreationTime =
          _Time # pCreationTime_,
        _dfdrfrsHumanLoopConfig = pHumanLoopConfig_,
        _dfdrfrsOutputConfig = pOutputConfig_,
        _dfdrfrsRoleARN = pRoleARN_
      }

-- | Container for configuring the source of human task requests. Used to specify if Amazon Rekognition or Amazon Textract is used as an integration source.
dfdrfrsHumanLoopRequestSource :: Lens' DescribeFlowDefinitionResponse (Maybe HumanLoopRequestSource)
dfdrfrsHumanLoopRequestSource = lens _dfdrfrsHumanLoopRequestSource (\s a -> s {_dfdrfrsHumanLoopRequestSource = a})

-- | The reason your flow definition failed.
dfdrfrsFailureReason :: Lens' DescribeFlowDefinitionResponse (Maybe Text)
dfdrfrsFailureReason = lens _dfdrfrsFailureReason (\s a -> s {_dfdrfrsFailureReason = a})

-- | An object containing information about what triggers a human review workflow.
dfdrfrsHumanLoopActivationConfig :: Lens' DescribeFlowDefinitionResponse (Maybe HumanLoopActivationConfig)
dfdrfrsHumanLoopActivationConfig = lens _dfdrfrsHumanLoopActivationConfig (\s a -> s {_dfdrfrsHumanLoopActivationConfig = a})

-- | -- | The response status code.
dfdrfrsResponseStatus :: Lens' DescribeFlowDefinitionResponse Int
dfdrfrsResponseStatus = lens _dfdrfrsResponseStatus (\s a -> s {_dfdrfrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the flow defintion.
dfdrfrsFlowDefinitionARN :: Lens' DescribeFlowDefinitionResponse Text
dfdrfrsFlowDefinitionARN = lens _dfdrfrsFlowDefinitionARN (\s a -> s {_dfdrfrsFlowDefinitionARN = a})

-- | The Amazon Resource Name (ARN) of the flow definition.
dfdrfrsFlowDefinitionName :: Lens' DescribeFlowDefinitionResponse Text
dfdrfrsFlowDefinitionName = lens _dfdrfrsFlowDefinitionName (\s a -> s {_dfdrfrsFlowDefinitionName = a})

-- | The status of the flow definition. Valid values are listed below.
dfdrfrsFlowDefinitionStatus :: Lens' DescribeFlowDefinitionResponse FlowDefinitionStatus
dfdrfrsFlowDefinitionStatus = lens _dfdrfrsFlowDefinitionStatus (\s a -> s {_dfdrfrsFlowDefinitionStatus = a})

-- | The timestamp when the flow definition was created.
dfdrfrsCreationTime :: Lens' DescribeFlowDefinitionResponse UTCTime
dfdrfrsCreationTime = lens _dfdrfrsCreationTime (\s a -> s {_dfdrfrsCreationTime = a}) . _Time

-- | An object containing information about who works on the task, the workforce task price, and other task details.
dfdrfrsHumanLoopConfig :: Lens' DescribeFlowDefinitionResponse HumanLoopConfig
dfdrfrsHumanLoopConfig = lens _dfdrfrsHumanLoopConfig (\s a -> s {_dfdrfrsHumanLoopConfig = a})

-- | An object containing information about the output file.
dfdrfrsOutputConfig :: Lens' DescribeFlowDefinitionResponse FlowDefinitionOutputConfig
dfdrfrsOutputConfig = lens _dfdrfrsOutputConfig (\s a -> s {_dfdrfrsOutputConfig = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) execution role for the flow definition.
dfdrfrsRoleARN :: Lens' DescribeFlowDefinitionResponse Text
dfdrfrsRoleARN = lens _dfdrfrsRoleARN (\s a -> s {_dfdrfrsRoleARN = a})

instance NFData DescribeFlowDefinitionResponse
