{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.WorkflowRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.WorkflowRun where

import Network.AWS.Glue.Types.WorkflowGraph
import Network.AWS.Glue.Types.WorkflowRunStatistics
import Network.AWS.Glue.Types.WorkflowRunStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A workflow run is an execution of a workflow providing all the runtime information.
--
--
--
-- /See:/ 'workflowRun' smart constructor.
data WorkflowRun = WorkflowRun'
  { _wrWorkflowRunId ::
      !(Maybe Text),
    _wrStatus :: !(Maybe WorkflowRunStatus),
    _wrWorkflowRunProperties ::
      !(Maybe (Map Text Text)),
    _wrStatistics :: !(Maybe WorkflowRunStatistics),
    _wrName :: !(Maybe Text),
    _wrCompletedOn :: !(Maybe POSIX),
    _wrGraph :: !(Maybe WorkflowGraph),
    _wrErrorMessage :: !(Maybe Text),
    _wrStartedOn :: !(Maybe POSIX),
    _wrPreviousRunId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WorkflowRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrWorkflowRunId' - The ID of this workflow run.
--
-- * 'wrStatus' - The status of the workflow run.
--
-- * 'wrWorkflowRunProperties' - The workflow run properties which were set during the run.
--
-- * 'wrStatistics' - The statistics of the run.
--
-- * 'wrName' - Name of the workflow that was executed.
--
-- * 'wrCompletedOn' - The date and time when the workflow run completed.
--
-- * 'wrGraph' - The graph representing all the AWS Glue components that belong to the workflow as nodes and directed connections between them as edges.
--
-- * 'wrErrorMessage' - This error message describes any error that may have occurred in starting the workflow run. Currently the only error message is "Concurrent runs exceeded for workflow: @foo@ ."
--
-- * 'wrStartedOn' - The date and time when the workflow run was started.
--
-- * 'wrPreviousRunId' - The ID of the previous workflow run.
workflowRun ::
  WorkflowRun
workflowRun =
  WorkflowRun'
    { _wrWorkflowRunId = Nothing,
      _wrStatus = Nothing,
      _wrWorkflowRunProperties = Nothing,
      _wrStatistics = Nothing,
      _wrName = Nothing,
      _wrCompletedOn = Nothing,
      _wrGraph = Nothing,
      _wrErrorMessage = Nothing,
      _wrStartedOn = Nothing,
      _wrPreviousRunId = Nothing
    }

-- | The ID of this workflow run.
wrWorkflowRunId :: Lens' WorkflowRun (Maybe Text)
wrWorkflowRunId = lens _wrWorkflowRunId (\s a -> s {_wrWorkflowRunId = a})

-- | The status of the workflow run.
wrStatus :: Lens' WorkflowRun (Maybe WorkflowRunStatus)
wrStatus = lens _wrStatus (\s a -> s {_wrStatus = a})

-- | The workflow run properties which were set during the run.
wrWorkflowRunProperties :: Lens' WorkflowRun (HashMap Text Text)
wrWorkflowRunProperties = lens _wrWorkflowRunProperties (\s a -> s {_wrWorkflowRunProperties = a}) . _Default . _Map

-- | The statistics of the run.
wrStatistics :: Lens' WorkflowRun (Maybe WorkflowRunStatistics)
wrStatistics = lens _wrStatistics (\s a -> s {_wrStatistics = a})

-- | Name of the workflow that was executed.
wrName :: Lens' WorkflowRun (Maybe Text)
wrName = lens _wrName (\s a -> s {_wrName = a})

-- | The date and time when the workflow run completed.
wrCompletedOn :: Lens' WorkflowRun (Maybe UTCTime)
wrCompletedOn = lens _wrCompletedOn (\s a -> s {_wrCompletedOn = a}) . mapping _Time

-- | The graph representing all the AWS Glue components that belong to the workflow as nodes and directed connections between them as edges.
wrGraph :: Lens' WorkflowRun (Maybe WorkflowGraph)
wrGraph = lens _wrGraph (\s a -> s {_wrGraph = a})

-- | This error message describes any error that may have occurred in starting the workflow run. Currently the only error message is "Concurrent runs exceeded for workflow: @foo@ ."
wrErrorMessage :: Lens' WorkflowRun (Maybe Text)
wrErrorMessage = lens _wrErrorMessage (\s a -> s {_wrErrorMessage = a})

-- | The date and time when the workflow run was started.
wrStartedOn :: Lens' WorkflowRun (Maybe UTCTime)
wrStartedOn = lens _wrStartedOn (\s a -> s {_wrStartedOn = a}) . mapping _Time

-- | The ID of the previous workflow run.
wrPreviousRunId :: Lens' WorkflowRun (Maybe Text)
wrPreviousRunId = lens _wrPreviousRunId (\s a -> s {_wrPreviousRunId = a})

instance FromJSON WorkflowRun where
  parseJSON =
    withObject
      "WorkflowRun"
      ( \x ->
          WorkflowRun'
            <$> (x .:? "WorkflowRunId")
            <*> (x .:? "Status")
            <*> (x .:? "WorkflowRunProperties" .!= mempty)
            <*> (x .:? "Statistics")
            <*> (x .:? "Name")
            <*> (x .:? "CompletedOn")
            <*> (x .:? "Graph")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "StartedOn")
            <*> (x .:? "PreviousRunId")
      )

instance Hashable WorkflowRun

instance NFData WorkflowRun
