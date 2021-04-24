{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionExecutionDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionExecutionDetail where

import Network.AWS.CodePipeline.Types.ActionExecutionInput
import Network.AWS.CodePipeline.Types.ActionExecutionOutput
import Network.AWS.CodePipeline.Types.ActionExecutionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns information about an execution of an action, including the action execution ID, and the name, version, and timing of the action.
--
--
--
-- /See:/ 'actionExecutionDetail' smart constructor.
data ActionExecutionDetail = ActionExecutionDetail'
  { _aedStatus ::
      !( Maybe
           ActionExecutionStatus
       ),
    _aedActionName ::
      !(Maybe Text),
    _aedActionExecutionId ::
      !(Maybe Text),
    _aedInput ::
      !( Maybe
           ActionExecutionInput
       ),
    _aedLastUpdateTime ::
      !(Maybe POSIX),
    _aedStageName ::
      !(Maybe Text),
    _aedStartTime ::
      !(Maybe POSIX),
    _aedOutput ::
      !( Maybe
           ActionExecutionOutput
       ),
    _aedPipelineVersion ::
      !(Maybe Nat),
    _aedPipelineExecutionId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ActionExecutionDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aedStatus' - The status of the action execution. Status categories are @InProgress@ , @Succeeded@ , and @Failed@ .
--
-- * 'aedActionName' - The name of the action.
--
-- * 'aedActionExecutionId' - The action execution ID.
--
-- * 'aedInput' - Input details for the action execution, such as role ARN, Region, and input artifacts.
--
-- * 'aedLastUpdateTime' - The last update time of the action execution.
--
-- * 'aedStageName' - The name of the stage that contains the action.
--
-- * 'aedStartTime' - The start time of the action execution.
--
-- * 'aedOutput' - Output details for the action execution, such as the action execution result.
--
-- * 'aedPipelineVersion' - The version of the pipeline where the action was run.
--
-- * 'aedPipelineExecutionId' - The pipeline execution ID for the action execution.
actionExecutionDetail ::
  ActionExecutionDetail
actionExecutionDetail =
  ActionExecutionDetail'
    { _aedStatus = Nothing,
      _aedActionName = Nothing,
      _aedActionExecutionId = Nothing,
      _aedInput = Nothing,
      _aedLastUpdateTime = Nothing,
      _aedStageName = Nothing,
      _aedStartTime = Nothing,
      _aedOutput = Nothing,
      _aedPipelineVersion = Nothing,
      _aedPipelineExecutionId = Nothing
    }

-- | The status of the action execution. Status categories are @InProgress@ , @Succeeded@ , and @Failed@ .
aedStatus :: Lens' ActionExecutionDetail (Maybe ActionExecutionStatus)
aedStatus = lens _aedStatus (\s a -> s {_aedStatus = a})

-- | The name of the action.
aedActionName :: Lens' ActionExecutionDetail (Maybe Text)
aedActionName = lens _aedActionName (\s a -> s {_aedActionName = a})

-- | The action execution ID.
aedActionExecutionId :: Lens' ActionExecutionDetail (Maybe Text)
aedActionExecutionId = lens _aedActionExecutionId (\s a -> s {_aedActionExecutionId = a})

-- | Input details for the action execution, such as role ARN, Region, and input artifacts.
aedInput :: Lens' ActionExecutionDetail (Maybe ActionExecutionInput)
aedInput = lens _aedInput (\s a -> s {_aedInput = a})

-- | The last update time of the action execution.
aedLastUpdateTime :: Lens' ActionExecutionDetail (Maybe UTCTime)
aedLastUpdateTime = lens _aedLastUpdateTime (\s a -> s {_aedLastUpdateTime = a}) . mapping _Time

-- | The name of the stage that contains the action.
aedStageName :: Lens' ActionExecutionDetail (Maybe Text)
aedStageName = lens _aedStageName (\s a -> s {_aedStageName = a})

-- | The start time of the action execution.
aedStartTime :: Lens' ActionExecutionDetail (Maybe UTCTime)
aedStartTime = lens _aedStartTime (\s a -> s {_aedStartTime = a}) . mapping _Time

-- | Output details for the action execution, such as the action execution result.
aedOutput :: Lens' ActionExecutionDetail (Maybe ActionExecutionOutput)
aedOutput = lens _aedOutput (\s a -> s {_aedOutput = a})

-- | The version of the pipeline where the action was run.
aedPipelineVersion :: Lens' ActionExecutionDetail (Maybe Natural)
aedPipelineVersion = lens _aedPipelineVersion (\s a -> s {_aedPipelineVersion = a}) . mapping _Nat

-- | The pipeline execution ID for the action execution.
aedPipelineExecutionId :: Lens' ActionExecutionDetail (Maybe Text)
aedPipelineExecutionId = lens _aedPipelineExecutionId (\s a -> s {_aedPipelineExecutionId = a})

instance FromJSON ActionExecutionDetail where
  parseJSON =
    withObject
      "ActionExecutionDetail"
      ( \x ->
          ActionExecutionDetail'
            <$> (x .:? "status")
            <*> (x .:? "actionName")
            <*> (x .:? "actionExecutionId")
            <*> (x .:? "input")
            <*> (x .:? "lastUpdateTime")
            <*> (x .:? "stageName")
            <*> (x .:? "startTime")
            <*> (x .:? "output")
            <*> (x .:? "pipelineVersion")
            <*> (x .:? "pipelineExecutionId")
      )

instance Hashable ActionExecutionDetail

instance NFData ActionExecutionDetail
