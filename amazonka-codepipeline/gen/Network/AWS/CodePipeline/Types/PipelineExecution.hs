{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.PipelineExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.PipelineExecution where

import Network.AWS.CodePipeline.Types.ArtifactRevision
import Network.AWS.CodePipeline.Types.PipelineExecutionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents information about an execution of a pipeline.
--
--
--
-- /See:/ 'pipelineExecution' smart constructor.
data PipelineExecution = PipelineExecution'
  { _peStatus ::
      !(Maybe PipelineExecutionStatus),
    _peArtifactRevisions ::
      !(Maybe [ArtifactRevision]),
    _pePipelineVersion :: !(Maybe Nat),
    _peStatusSummary :: !(Maybe Text),
    _pePipelineName :: !(Maybe Text),
    _pePipelineExecutionId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PipelineExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peStatus' - The status of the pipeline execution.     * Cancelled: The pipeline’s definition was updated before the pipeline execution could be completed.     * InProgress: The pipeline execution is currently running.     * Stopped: The pipeline execution was manually stopped. For more information, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped Stopped Executions> .     * Stopping: The pipeline execution received a request to be manually stopped. Depending on the selected stop mode, the execution is either completing or abandoning in-progress actions. For more information, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped Stopped Executions> .     * Succeeded: The pipeline execution was completed successfully.      * Superseded: While this pipeline execution was waiting for the next stage to be completed, a newer pipeline execution advanced and continued through the pipeline instead. For more information, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded Superseded Executions> .     * Failed: The pipeline execution was not completed successfully.
--
-- * 'peArtifactRevisions' - A list of @ArtifactRevision@ objects included in a pipeline execution.
--
-- * 'pePipelineVersion' - The version number of the pipeline with the specified pipeline execution.
--
-- * 'peStatusSummary' - A summary that contains a description of the pipeline execution status.
--
-- * 'pePipelineName' - The name of the pipeline with the specified pipeline execution.
--
-- * 'pePipelineExecutionId' - The ID of the pipeline execution.
pipelineExecution ::
  PipelineExecution
pipelineExecution =
  PipelineExecution'
    { _peStatus = Nothing,
      _peArtifactRevisions = Nothing,
      _pePipelineVersion = Nothing,
      _peStatusSummary = Nothing,
      _pePipelineName = Nothing,
      _pePipelineExecutionId = Nothing
    }

-- | The status of the pipeline execution.     * Cancelled: The pipeline’s definition was updated before the pipeline execution could be completed.     * InProgress: The pipeline execution is currently running.     * Stopped: The pipeline execution was manually stopped. For more information, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped Stopped Executions> .     * Stopping: The pipeline execution received a request to be manually stopped. Depending on the selected stop mode, the execution is either completing or abandoning in-progress actions. For more information, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped Stopped Executions> .     * Succeeded: The pipeline execution was completed successfully.      * Superseded: While this pipeline execution was waiting for the next stage to be completed, a newer pipeline execution advanced and continued through the pipeline instead. For more information, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded Superseded Executions> .     * Failed: The pipeline execution was not completed successfully.
peStatus :: Lens' PipelineExecution (Maybe PipelineExecutionStatus)
peStatus = lens _peStatus (\s a -> s {_peStatus = a})

-- | A list of @ArtifactRevision@ objects included in a pipeline execution.
peArtifactRevisions :: Lens' PipelineExecution [ArtifactRevision]
peArtifactRevisions = lens _peArtifactRevisions (\s a -> s {_peArtifactRevisions = a}) . _Default . _Coerce

-- | The version number of the pipeline with the specified pipeline execution.
pePipelineVersion :: Lens' PipelineExecution (Maybe Natural)
pePipelineVersion = lens _pePipelineVersion (\s a -> s {_pePipelineVersion = a}) . mapping _Nat

-- | A summary that contains a description of the pipeline execution status.
peStatusSummary :: Lens' PipelineExecution (Maybe Text)
peStatusSummary = lens _peStatusSummary (\s a -> s {_peStatusSummary = a})

-- | The name of the pipeline with the specified pipeline execution.
pePipelineName :: Lens' PipelineExecution (Maybe Text)
pePipelineName = lens _pePipelineName (\s a -> s {_pePipelineName = a})

-- | The ID of the pipeline execution.
pePipelineExecutionId :: Lens' PipelineExecution (Maybe Text)
pePipelineExecutionId = lens _pePipelineExecutionId (\s a -> s {_pePipelineExecutionId = a})

instance FromJSON PipelineExecution where
  parseJSON =
    withObject
      "PipelineExecution"
      ( \x ->
          PipelineExecution'
            <$> (x .:? "status")
            <*> (x .:? "artifactRevisions" .!= mempty)
            <*> (x .:? "pipelineVersion")
            <*> (x .:? "statusSummary")
            <*> (x .:? "pipelineName")
            <*> (x .:? "pipelineExecutionId")
      )

instance Hashable PipelineExecution

instance NFData PipelineExecution
