{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.PipelineSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.PipelineSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A summary of a pipeline.
--
--
--
-- /See:/ 'pipelineSummary' smart constructor.
data PipelineSummary = PipelineSummary'
  { _pPipelineARN ::
      !(Maybe Text),
    _pPipelineDescription :: !(Maybe Text),
    _pCreationTime :: !(Maybe POSIX),
    _pRoleARN :: !(Maybe Text),
    _pLastExecutionTime :: !(Maybe POSIX),
    _pPipelineDisplayName :: !(Maybe Text),
    _pLastModifiedTime :: !(Maybe POSIX),
    _pPipelineName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PipelineSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPipelineARN' - The Amazon Resource Name (ARN) of the pipeline.
--
-- * 'pPipelineDescription' - The description of the pipeline.
--
-- * 'pCreationTime' - The creation time of the pipeline.
--
-- * 'pRoleARN' - The Amazon Resource Name (ARN) that the pipeline used to execute.
--
-- * 'pLastExecutionTime' - The last time that a pipeline execution began.
--
-- * 'pPipelineDisplayName' - The display name of the pipeline.
--
-- * 'pLastModifiedTime' - The time that the pipeline was last modified.
--
-- * 'pPipelineName' - The name of the pipeline.
pipelineSummary ::
  PipelineSummary
pipelineSummary =
  PipelineSummary'
    { _pPipelineARN = Nothing,
      _pPipelineDescription = Nothing,
      _pCreationTime = Nothing,
      _pRoleARN = Nothing,
      _pLastExecutionTime = Nothing,
      _pPipelineDisplayName = Nothing,
      _pLastModifiedTime = Nothing,
      _pPipelineName = Nothing
    }

-- | The Amazon Resource Name (ARN) of the pipeline.
pPipelineARN :: Lens' PipelineSummary (Maybe Text)
pPipelineARN = lens _pPipelineARN (\s a -> s {_pPipelineARN = a})

-- | The description of the pipeline.
pPipelineDescription :: Lens' PipelineSummary (Maybe Text)
pPipelineDescription = lens _pPipelineDescription (\s a -> s {_pPipelineDescription = a})

-- | The creation time of the pipeline.
pCreationTime :: Lens' PipelineSummary (Maybe UTCTime)
pCreationTime = lens _pCreationTime (\s a -> s {_pCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) that the pipeline used to execute.
pRoleARN :: Lens' PipelineSummary (Maybe Text)
pRoleARN = lens _pRoleARN (\s a -> s {_pRoleARN = a})

-- | The last time that a pipeline execution began.
pLastExecutionTime :: Lens' PipelineSummary (Maybe UTCTime)
pLastExecutionTime = lens _pLastExecutionTime (\s a -> s {_pLastExecutionTime = a}) . mapping _Time

-- | The display name of the pipeline.
pPipelineDisplayName :: Lens' PipelineSummary (Maybe Text)
pPipelineDisplayName = lens _pPipelineDisplayName (\s a -> s {_pPipelineDisplayName = a})

-- | The time that the pipeline was last modified.
pLastModifiedTime :: Lens' PipelineSummary (Maybe UTCTime)
pLastModifiedTime = lens _pLastModifiedTime (\s a -> s {_pLastModifiedTime = a}) . mapping _Time

-- | The name of the pipeline.
pPipelineName :: Lens' PipelineSummary (Maybe Text)
pPipelineName = lens _pPipelineName (\s a -> s {_pPipelineName = a})

instance FromJSON PipelineSummary where
  parseJSON =
    withObject
      "PipelineSummary"
      ( \x ->
          PipelineSummary'
            <$> (x .:? "PipelineArn")
            <*> (x .:? "PipelineDescription")
            <*> (x .:? "CreationTime")
            <*> (x .:? "RoleArn")
            <*> (x .:? "LastExecutionTime")
            <*> (x .:? "PipelineDisplayName")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "PipelineName")
      )

instance Hashable PipelineSummary

instance NFData PipelineSummary
