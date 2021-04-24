{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.PipelineExecutionStep
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.PipelineExecutionStep where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.CacheHitResult
import Network.AWS.SageMaker.Types.PipelineExecutionStepMetadata
import Network.AWS.SageMaker.Types.StepStatus

-- | An execution of a step in a pipeline.
--
--
--
-- /See:/ 'pipelineExecutionStep' smart constructor.
data PipelineExecutionStep = PipelineExecutionStep'
  { _pStartTime ::
      !(Maybe POSIX),
    _pMetadata ::
      !( Maybe
           PipelineExecutionStepMetadata
       ),
    _pEndTime :: !(Maybe POSIX),
    _pFailureReason ::
      !(Maybe Text),
    _pStepStatus ::
      !(Maybe StepStatus),
    _pCacheHitResult ::
      !(Maybe CacheHitResult),
    _pStepName :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PipelineExecutionStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pStartTime' - The time that the step started executing.
--
-- * 'pMetadata' - The metadata for the step execution.
--
-- * 'pEndTime' - The time that the step stopped executing.
--
-- * 'pFailureReason' - The reason why the step failed execution. This is only returned if the step failed its execution.
--
-- * 'pStepStatus' - The status of the step execution.
--
-- * 'pCacheHitResult' - If this pipeline execution step was cached, details on the cache hit.
--
-- * 'pStepName' - The name of the step that is executed.
pipelineExecutionStep ::
  PipelineExecutionStep
pipelineExecutionStep =
  PipelineExecutionStep'
    { _pStartTime = Nothing,
      _pMetadata = Nothing,
      _pEndTime = Nothing,
      _pFailureReason = Nothing,
      _pStepStatus = Nothing,
      _pCacheHitResult = Nothing,
      _pStepName = Nothing
    }

-- | The time that the step started executing.
pStartTime :: Lens' PipelineExecutionStep (Maybe UTCTime)
pStartTime = lens _pStartTime (\s a -> s {_pStartTime = a}) . mapping _Time

-- | The metadata for the step execution.
pMetadata :: Lens' PipelineExecutionStep (Maybe PipelineExecutionStepMetadata)
pMetadata = lens _pMetadata (\s a -> s {_pMetadata = a})

-- | The time that the step stopped executing.
pEndTime :: Lens' PipelineExecutionStep (Maybe UTCTime)
pEndTime = lens _pEndTime (\s a -> s {_pEndTime = a}) . mapping _Time

-- | The reason why the step failed execution. This is only returned if the step failed its execution.
pFailureReason :: Lens' PipelineExecutionStep (Maybe Text)
pFailureReason = lens _pFailureReason (\s a -> s {_pFailureReason = a})

-- | The status of the step execution.
pStepStatus :: Lens' PipelineExecutionStep (Maybe StepStatus)
pStepStatus = lens _pStepStatus (\s a -> s {_pStepStatus = a})

-- | If this pipeline execution step was cached, details on the cache hit.
pCacheHitResult :: Lens' PipelineExecutionStep (Maybe CacheHitResult)
pCacheHitResult = lens _pCacheHitResult (\s a -> s {_pCacheHitResult = a})

-- | The name of the step that is executed.
pStepName :: Lens' PipelineExecutionStep (Maybe Text)
pStepName = lens _pStepName (\s a -> s {_pStepName = a})

instance FromJSON PipelineExecutionStep where
  parseJSON =
    withObject
      "PipelineExecutionStep"
      ( \x ->
          PipelineExecutionStep'
            <$> (x .:? "StartTime")
            <*> (x .:? "Metadata")
            <*> (x .:? "EndTime")
            <*> (x .:? "FailureReason")
            <*> (x .:? "StepStatus")
            <*> (x .:? "CacheHitResult")
            <*> (x .:? "StepName")
      )

instance Hashable PipelineExecutionStep

instance NFData PipelineExecutionStep
