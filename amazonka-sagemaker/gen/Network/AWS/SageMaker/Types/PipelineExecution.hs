{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.PipelineExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.PipelineExecution where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.Parameter
import Network.AWS.SageMaker.Types.PipelineExecutionStatus
import Network.AWS.SageMaker.Types.UserContext

-- | An execution of a pipeline.
--
--
--
-- /See:/ 'pipelineExecution' smart constructor.
data PipelineExecution = PipelineExecution'
  { _pePipelineARN ::
      !(Maybe Text),
    _peCreationTime :: !(Maybe POSIX),
    _pePipelineExecutionDescription ::
      !(Maybe Text),
    _pePipelineParameters ::
      !(Maybe [Parameter]),
    _pePipelineExecutionDisplayName ::
      !(Maybe Text),
    _pePipelineExecutionStatus ::
      !(Maybe PipelineExecutionStatus),
    _peLastModifiedTime ::
      !(Maybe POSIX),
    _peCreatedBy ::
      !(Maybe UserContext),
    _peLastModifiedBy ::
      !(Maybe UserContext),
    _pePipelineExecutionARN ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PipelineExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pePipelineARN' - The Amazon Resource Name (ARN) of the pipeline that was executed.
--
-- * 'peCreationTime' - The creation time of the pipeline execution.
--
-- * 'pePipelineExecutionDescription' - The description of the pipeline execution.
--
-- * 'pePipelineParameters' - Contains a list of pipeline parameters. This list can be empty.
--
-- * 'pePipelineExecutionDisplayName' - The display name of the pipeline execution.
--
-- * 'pePipelineExecutionStatus' - The status of the pipeline status.
--
-- * 'peLastModifiedTime' - The time that the pipeline execution was last modified.
--
-- * 'peCreatedBy' - Undocumented member.
--
-- * 'peLastModifiedBy' - Undocumented member.
--
-- * 'pePipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
pipelineExecution ::
  PipelineExecution
pipelineExecution =
  PipelineExecution'
    { _pePipelineARN = Nothing,
      _peCreationTime = Nothing,
      _pePipelineExecutionDescription = Nothing,
      _pePipelineParameters = Nothing,
      _pePipelineExecutionDisplayName = Nothing,
      _pePipelineExecutionStatus = Nothing,
      _peLastModifiedTime = Nothing,
      _peCreatedBy = Nothing,
      _peLastModifiedBy = Nothing,
      _pePipelineExecutionARN = Nothing
    }

-- | The Amazon Resource Name (ARN) of the pipeline that was executed.
pePipelineARN :: Lens' PipelineExecution (Maybe Text)
pePipelineARN = lens _pePipelineARN (\s a -> s {_pePipelineARN = a})

-- | The creation time of the pipeline execution.
peCreationTime :: Lens' PipelineExecution (Maybe UTCTime)
peCreationTime = lens _peCreationTime (\s a -> s {_peCreationTime = a}) . mapping _Time

-- | The description of the pipeline execution.
pePipelineExecutionDescription :: Lens' PipelineExecution (Maybe Text)
pePipelineExecutionDescription = lens _pePipelineExecutionDescription (\s a -> s {_pePipelineExecutionDescription = a})

-- | Contains a list of pipeline parameters. This list can be empty.
pePipelineParameters :: Lens' PipelineExecution [Parameter]
pePipelineParameters = lens _pePipelineParameters (\s a -> s {_pePipelineParameters = a}) . _Default . _Coerce

-- | The display name of the pipeline execution.
pePipelineExecutionDisplayName :: Lens' PipelineExecution (Maybe Text)
pePipelineExecutionDisplayName = lens _pePipelineExecutionDisplayName (\s a -> s {_pePipelineExecutionDisplayName = a})

-- | The status of the pipeline status.
pePipelineExecutionStatus :: Lens' PipelineExecution (Maybe PipelineExecutionStatus)
pePipelineExecutionStatus = lens _pePipelineExecutionStatus (\s a -> s {_pePipelineExecutionStatus = a})

-- | The time that the pipeline execution was last modified.
peLastModifiedTime :: Lens' PipelineExecution (Maybe UTCTime)
peLastModifiedTime = lens _peLastModifiedTime (\s a -> s {_peLastModifiedTime = a}) . mapping _Time

-- | Undocumented member.
peCreatedBy :: Lens' PipelineExecution (Maybe UserContext)
peCreatedBy = lens _peCreatedBy (\s a -> s {_peCreatedBy = a})

-- | Undocumented member.
peLastModifiedBy :: Lens' PipelineExecution (Maybe UserContext)
peLastModifiedBy = lens _peLastModifiedBy (\s a -> s {_peLastModifiedBy = a})

-- | The Amazon Resource Name (ARN) of the pipeline execution.
pePipelineExecutionARN :: Lens' PipelineExecution (Maybe Text)
pePipelineExecutionARN = lens _pePipelineExecutionARN (\s a -> s {_pePipelineExecutionARN = a})

instance FromJSON PipelineExecution where
  parseJSON =
    withObject
      "PipelineExecution"
      ( \x ->
          PipelineExecution'
            <$> (x .:? "PipelineArn")
            <*> (x .:? "CreationTime")
            <*> (x .:? "PipelineExecutionDescription")
            <*> (x .:? "PipelineParameters" .!= mempty)
            <*> (x .:? "PipelineExecutionDisplayName")
            <*> (x .:? "PipelineExecutionStatus")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "LastModifiedBy")
            <*> (x .:? "PipelineExecutionArn")
      )

instance Hashable PipelineExecution

instance NFData PipelineExecution
