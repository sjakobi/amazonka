{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.NotebookExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.NotebookExecution where

import Network.AWS.EMR.Types.ExecutionEngineConfig
import Network.AWS.EMR.Types.NotebookExecutionStatus
import Network.AWS.EMR.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A notebook execution. An execution is a specific instance that an EMR Notebook is run using the @StartNotebookExecution@ action.
--
--
--
-- /See:/ 'notebookExecution' smart constructor.
data NotebookExecution = NotebookExecution'
  { _neLastStateChangeReason ::
      !(Maybe Text),
    _neStatus ::
      !(Maybe NotebookExecutionStatus),
    _neNotebookExecutionName ::
      !(Maybe Text),
    _neEditorId :: !(Maybe Text),
    _neNotebookExecutionId ::
      !(Maybe Text),
    _neStartTime :: !(Maybe POSIX),
    _neARN :: !(Maybe Text),
    _neNotebookParams :: !(Maybe Text),
    _neEndTime :: !(Maybe POSIX),
    _neNotebookInstanceSecurityGroupId ::
      !(Maybe Text),
    _neExecutionEngine ::
      !(Maybe ExecutionEngineConfig),
    _neTags :: !(Maybe [Tag]),
    _neOutputNotebookURI ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NotebookExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neLastStateChangeReason' - The reason for the latest status change of the notebook execution.
--
-- * 'neStatus' - The status of the notebook execution.     * @START_PENDING@ indicates that the cluster has received the execution request but execution has not begun.     * @STARTING@ indicates that the execution is starting on the cluster.     * @RUNNING@ indicates that the execution is being processed by the cluster.     * @FINISHING@ indicates that execution processing is in the final stages.     * @FINISHED@ indicates that the execution has completed without error.     * @FAILING@ indicates that the execution is failing and will not finish successfully.     * @FAILED@ indicates that the execution failed.     * @STOP_PENDING@ indicates that the cluster has received a @StopNotebookExecution@ request and the stop is pending.     * @STOPPING@ indicates that the cluster is in the process of stopping the execution as a result of a @StopNotebookExecution@ request.     * @STOPPED@ indicates that the execution stopped because of a @StopNotebookExecution@ request.
--
-- * 'neNotebookExecutionName' - A name for the notebook execution.
--
-- * 'neEditorId' - The unique identifier of the EMR Notebook that is used for the notebook execution.
--
-- * 'neNotebookExecutionId' - The unique identifier of a notebook execution.
--
-- * 'neStartTime' - The timestamp when notebook execution started.
--
-- * 'neARN' - The Amazon Resource Name (ARN) of the notebook execution.
--
-- * 'neNotebookParams' - Input parameters in JSON format passed to the EMR Notebook at runtime for execution.
--
-- * 'neEndTime' - The timestamp when notebook execution ended.
--
-- * 'neNotebookInstanceSecurityGroupId' - The unique identifier of the EC2 security group associated with the EMR Notebook instance. For more information see <https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html Specifying EC2 Security Groups for EMR Notebooks> in the /EMR Management Guide/ .
--
-- * 'neExecutionEngine' - The execution engine, such as an EMR cluster, used to run the EMR notebook and perform the notebook execution.
--
-- * 'neTags' - A list of tags associated with a notebook execution. Tags are user-defined key-value pairs that consist of a required key string with a maximum of 128 characters and an optional value string with a maximum of 256 characters.
--
-- * 'neOutputNotebookURI' - The location of the notebook execution's output file in Amazon S3.
notebookExecution ::
  NotebookExecution
notebookExecution =
  NotebookExecution'
    { _neLastStateChangeReason =
        Nothing,
      _neStatus = Nothing,
      _neNotebookExecutionName = Nothing,
      _neEditorId = Nothing,
      _neNotebookExecutionId = Nothing,
      _neStartTime = Nothing,
      _neARN = Nothing,
      _neNotebookParams = Nothing,
      _neEndTime = Nothing,
      _neNotebookInstanceSecurityGroupId = Nothing,
      _neExecutionEngine = Nothing,
      _neTags = Nothing,
      _neOutputNotebookURI = Nothing
    }

-- | The reason for the latest status change of the notebook execution.
neLastStateChangeReason :: Lens' NotebookExecution (Maybe Text)
neLastStateChangeReason = lens _neLastStateChangeReason (\s a -> s {_neLastStateChangeReason = a})

-- | The status of the notebook execution.     * @START_PENDING@ indicates that the cluster has received the execution request but execution has not begun.     * @STARTING@ indicates that the execution is starting on the cluster.     * @RUNNING@ indicates that the execution is being processed by the cluster.     * @FINISHING@ indicates that execution processing is in the final stages.     * @FINISHED@ indicates that the execution has completed without error.     * @FAILING@ indicates that the execution is failing and will not finish successfully.     * @FAILED@ indicates that the execution failed.     * @STOP_PENDING@ indicates that the cluster has received a @StopNotebookExecution@ request and the stop is pending.     * @STOPPING@ indicates that the cluster is in the process of stopping the execution as a result of a @StopNotebookExecution@ request.     * @STOPPED@ indicates that the execution stopped because of a @StopNotebookExecution@ request.
neStatus :: Lens' NotebookExecution (Maybe NotebookExecutionStatus)
neStatus = lens _neStatus (\s a -> s {_neStatus = a})

-- | A name for the notebook execution.
neNotebookExecutionName :: Lens' NotebookExecution (Maybe Text)
neNotebookExecutionName = lens _neNotebookExecutionName (\s a -> s {_neNotebookExecutionName = a})

-- | The unique identifier of the EMR Notebook that is used for the notebook execution.
neEditorId :: Lens' NotebookExecution (Maybe Text)
neEditorId = lens _neEditorId (\s a -> s {_neEditorId = a})

-- | The unique identifier of a notebook execution.
neNotebookExecutionId :: Lens' NotebookExecution (Maybe Text)
neNotebookExecutionId = lens _neNotebookExecutionId (\s a -> s {_neNotebookExecutionId = a})

-- | The timestamp when notebook execution started.
neStartTime :: Lens' NotebookExecution (Maybe UTCTime)
neStartTime = lens _neStartTime (\s a -> s {_neStartTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the notebook execution.
neARN :: Lens' NotebookExecution (Maybe Text)
neARN = lens _neARN (\s a -> s {_neARN = a})

-- | Input parameters in JSON format passed to the EMR Notebook at runtime for execution.
neNotebookParams :: Lens' NotebookExecution (Maybe Text)
neNotebookParams = lens _neNotebookParams (\s a -> s {_neNotebookParams = a})

-- | The timestamp when notebook execution ended.
neEndTime :: Lens' NotebookExecution (Maybe UTCTime)
neEndTime = lens _neEndTime (\s a -> s {_neEndTime = a}) . mapping _Time

-- | The unique identifier of the EC2 security group associated with the EMR Notebook instance. For more information see <https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html Specifying EC2 Security Groups for EMR Notebooks> in the /EMR Management Guide/ .
neNotebookInstanceSecurityGroupId :: Lens' NotebookExecution (Maybe Text)
neNotebookInstanceSecurityGroupId = lens _neNotebookInstanceSecurityGroupId (\s a -> s {_neNotebookInstanceSecurityGroupId = a})

-- | The execution engine, such as an EMR cluster, used to run the EMR notebook and perform the notebook execution.
neExecutionEngine :: Lens' NotebookExecution (Maybe ExecutionEngineConfig)
neExecutionEngine = lens _neExecutionEngine (\s a -> s {_neExecutionEngine = a})

-- | A list of tags associated with a notebook execution. Tags are user-defined key-value pairs that consist of a required key string with a maximum of 128 characters and an optional value string with a maximum of 256 characters.
neTags :: Lens' NotebookExecution [Tag]
neTags = lens _neTags (\s a -> s {_neTags = a}) . _Default . _Coerce

-- | The location of the notebook execution's output file in Amazon S3.
neOutputNotebookURI :: Lens' NotebookExecution (Maybe Text)
neOutputNotebookURI = lens _neOutputNotebookURI (\s a -> s {_neOutputNotebookURI = a})

instance FromJSON NotebookExecution where
  parseJSON =
    withObject
      "NotebookExecution"
      ( \x ->
          NotebookExecution'
            <$> (x .:? "LastStateChangeReason")
            <*> (x .:? "Status")
            <*> (x .:? "NotebookExecutionName")
            <*> (x .:? "EditorId")
            <*> (x .:? "NotebookExecutionId")
            <*> (x .:? "StartTime")
            <*> (x .:? "Arn")
            <*> (x .:? "NotebookParams")
            <*> (x .:? "EndTime")
            <*> (x .:? "NotebookInstanceSecurityGroupId")
            <*> (x .:? "ExecutionEngine")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "OutputNotebookURI")
      )

instance Hashable NotebookExecution

instance NFData NotebookExecution
