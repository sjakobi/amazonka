{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Workflow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Workflow where

import Network.AWS.Glue.Types.WorkflowGraph
import Network.AWS.Glue.Types.WorkflowRun
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A workflow represents a flow in which AWS Glue components should be executed to complete a logical task.
--
--
--
-- /See:/ 'workflow' smart constructor.
data Workflow = Workflow'
  { _wCreatedOn ::
      !(Maybe POSIX),
    _wDefaultRunProperties :: !(Maybe (Map Text Text)),
    _wLastRun :: !(Maybe WorkflowRun),
    _wMaxConcurrentRuns :: !(Maybe Int),
    _wLastModifiedOn :: !(Maybe POSIX),
    _wName :: !(Maybe Text),
    _wGraph :: !(Maybe WorkflowGraph),
    _wDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Workflow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wCreatedOn' - The date and time when the workflow was created.
--
-- * 'wDefaultRunProperties' - A collection of properties to be used as part of each execution of the workflow.
--
-- * 'wLastRun' - The information about the last execution of the workflow.
--
-- * 'wMaxConcurrentRuns' - You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
--
-- * 'wLastModifiedOn' - The date and time when the workflow was last modified.
--
-- * 'wName' - The name of the workflow representing the flow.
--
-- * 'wGraph' - The graph representing all the AWS Glue components that belong to the workflow as nodes and directed connections between them as edges.
--
-- * 'wDescription' - A description of the workflow.
workflow ::
  Workflow
workflow =
  Workflow'
    { _wCreatedOn = Nothing,
      _wDefaultRunProperties = Nothing,
      _wLastRun = Nothing,
      _wMaxConcurrentRuns = Nothing,
      _wLastModifiedOn = Nothing,
      _wName = Nothing,
      _wGraph = Nothing,
      _wDescription = Nothing
    }

-- | The date and time when the workflow was created.
wCreatedOn :: Lens' Workflow (Maybe UTCTime)
wCreatedOn = lens _wCreatedOn (\s a -> s {_wCreatedOn = a}) . mapping _Time

-- | A collection of properties to be used as part of each execution of the workflow.
wDefaultRunProperties :: Lens' Workflow (HashMap Text Text)
wDefaultRunProperties = lens _wDefaultRunProperties (\s a -> s {_wDefaultRunProperties = a}) . _Default . _Map

-- | The information about the last execution of the workflow.
wLastRun :: Lens' Workflow (Maybe WorkflowRun)
wLastRun = lens _wLastRun (\s a -> s {_wLastRun = a})

-- | You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
wMaxConcurrentRuns :: Lens' Workflow (Maybe Int)
wMaxConcurrentRuns = lens _wMaxConcurrentRuns (\s a -> s {_wMaxConcurrentRuns = a})

-- | The date and time when the workflow was last modified.
wLastModifiedOn :: Lens' Workflow (Maybe UTCTime)
wLastModifiedOn = lens _wLastModifiedOn (\s a -> s {_wLastModifiedOn = a}) . mapping _Time

-- | The name of the workflow representing the flow.
wName :: Lens' Workflow (Maybe Text)
wName = lens _wName (\s a -> s {_wName = a})

-- | The graph representing all the AWS Glue components that belong to the workflow as nodes and directed connections between them as edges.
wGraph :: Lens' Workflow (Maybe WorkflowGraph)
wGraph = lens _wGraph (\s a -> s {_wGraph = a})

-- | A description of the workflow.
wDescription :: Lens' Workflow (Maybe Text)
wDescription = lens _wDescription (\s a -> s {_wDescription = a})

instance FromJSON Workflow where
  parseJSON =
    withObject
      "Workflow"
      ( \x ->
          Workflow'
            <$> (x .:? "CreatedOn")
            <*> (x .:? "DefaultRunProperties" .!= mempty)
            <*> (x .:? "LastRun")
            <*> (x .:? "MaxConcurrentRuns")
            <*> (x .:? "LastModifiedOn")
            <*> (x .:? "Name")
            <*> (x .:? "Graph")
            <*> (x .:? "Description")
      )

instance Hashable Workflow

instance NFData Workflow
