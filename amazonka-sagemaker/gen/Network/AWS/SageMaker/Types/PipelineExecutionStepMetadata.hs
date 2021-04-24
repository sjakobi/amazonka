{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.PipelineExecutionStepMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.PipelineExecutionStepMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ConditionStepMetadata
import Network.AWS.SageMaker.Types.ModelStepMetadata
import Network.AWS.SageMaker.Types.ProcessingJobStepMetadata
import Network.AWS.SageMaker.Types.RegisterModelStepMetadata
import Network.AWS.SageMaker.Types.TrainingJobStepMetadata
import Network.AWS.SageMaker.Types.TransformJobStepMetadata

-- | Metadata for a step execution.
--
--
--
-- /See:/ 'pipelineExecutionStepMetadata' smart constructor.
data PipelineExecutionStepMetadata = PipelineExecutionStepMetadata'
  { _pesmModel ::
      !( Maybe
           ModelStepMetadata
       ),
    _pesmProcessingJob ::
      !( Maybe
           ProcessingJobStepMetadata
       ),
    _pesmCondition ::
      !( Maybe
           ConditionStepMetadata
       ),
    _pesmTrainingJob ::
      !( Maybe
           TrainingJobStepMetadata
       ),
    _pesmRegisterModel ::
      !( Maybe
           RegisterModelStepMetadata
       ),
    _pesmTransformJob ::
      !( Maybe
           TransformJobStepMetadata
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PipelineExecutionStepMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pesmModel' - Metadata for the Model step.
--
-- * 'pesmProcessingJob' - The Amazon Resource Name (ARN) of the processing job that was run by this step execution.
--
-- * 'pesmCondition' - If this is a Condition step metadata object, details on the condition.
--
-- * 'pesmTrainingJob' - The Amazon Resource Name (ARN) of the training job that was run by this step execution.
--
-- * 'pesmRegisterModel' - Metadata for the RegisterModel step.
--
-- * 'pesmTransformJob' - The Amazon Resource Name (ARN) of the transform job that was run by this step execution.
pipelineExecutionStepMetadata ::
  PipelineExecutionStepMetadata
pipelineExecutionStepMetadata =
  PipelineExecutionStepMetadata'
    { _pesmModel =
        Nothing,
      _pesmProcessingJob = Nothing,
      _pesmCondition = Nothing,
      _pesmTrainingJob = Nothing,
      _pesmRegisterModel = Nothing,
      _pesmTransformJob = Nothing
    }

-- | Metadata for the Model step.
pesmModel :: Lens' PipelineExecutionStepMetadata (Maybe ModelStepMetadata)
pesmModel = lens _pesmModel (\s a -> s {_pesmModel = a})

-- | The Amazon Resource Name (ARN) of the processing job that was run by this step execution.
pesmProcessingJob :: Lens' PipelineExecutionStepMetadata (Maybe ProcessingJobStepMetadata)
pesmProcessingJob = lens _pesmProcessingJob (\s a -> s {_pesmProcessingJob = a})

-- | If this is a Condition step metadata object, details on the condition.
pesmCondition :: Lens' PipelineExecutionStepMetadata (Maybe ConditionStepMetadata)
pesmCondition = lens _pesmCondition (\s a -> s {_pesmCondition = a})

-- | The Amazon Resource Name (ARN) of the training job that was run by this step execution.
pesmTrainingJob :: Lens' PipelineExecutionStepMetadata (Maybe TrainingJobStepMetadata)
pesmTrainingJob = lens _pesmTrainingJob (\s a -> s {_pesmTrainingJob = a})

-- | Metadata for the RegisterModel step.
pesmRegisterModel :: Lens' PipelineExecutionStepMetadata (Maybe RegisterModelStepMetadata)
pesmRegisterModel = lens _pesmRegisterModel (\s a -> s {_pesmRegisterModel = a})

-- | The Amazon Resource Name (ARN) of the transform job that was run by this step execution.
pesmTransformJob :: Lens' PipelineExecutionStepMetadata (Maybe TransformJobStepMetadata)
pesmTransformJob = lens _pesmTransformJob (\s a -> s {_pesmTransformJob = a})

instance FromJSON PipelineExecutionStepMetadata where
  parseJSON =
    withObject
      "PipelineExecutionStepMetadata"
      ( \x ->
          PipelineExecutionStepMetadata'
            <$> (x .:? "Model")
            <*> (x .:? "ProcessingJob")
            <*> (x .:? "Condition")
            <*> (x .:? "TrainingJob")
            <*> (x .:? "RegisterModel")
            <*> (x .:? "TransformJob")
      )

instance Hashable PipelineExecutionStepMetadata

instance NFData PipelineExecutionStepMetadata
