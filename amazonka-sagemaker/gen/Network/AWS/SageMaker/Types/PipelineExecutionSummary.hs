{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.PipelineExecutionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.PipelineExecutionSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.PipelineExecutionStatus

-- | A pipeline execution summary.
--
--
--
-- /See:/ 'pipelineExecutionSummary' smart constructor.
data PipelineExecutionSummary = PipelineExecutionSummary'
  { _pesPipelineExecutionDescription ::
      !(Maybe Text),
    _pesStartTime ::
      !(Maybe POSIX),
    _pesPipelineExecutionDisplayName ::
      !(Maybe Text),
    _pesPipelineExecutionStatus ::
      !( Maybe
           PipelineExecutionStatus
       ),
    _pesPipelineExecutionARN ::
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

-- | Creates a value of 'PipelineExecutionSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pesPipelineExecutionDescription' - The description of the pipeline execution.
--
-- * 'pesStartTime' - The start time of the pipeline execution.
--
-- * 'pesPipelineExecutionDisplayName' - The display name of the pipeline execution.
--
-- * 'pesPipelineExecutionStatus' - The status of the pipeline execution.
--
-- * 'pesPipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
pipelineExecutionSummary ::
  PipelineExecutionSummary
pipelineExecutionSummary =
  PipelineExecutionSummary'
    { _pesPipelineExecutionDescription =
        Nothing,
      _pesStartTime = Nothing,
      _pesPipelineExecutionDisplayName = Nothing,
      _pesPipelineExecutionStatus = Nothing,
      _pesPipelineExecutionARN = Nothing
    }

-- | The description of the pipeline execution.
pesPipelineExecutionDescription :: Lens' PipelineExecutionSummary (Maybe Text)
pesPipelineExecutionDescription = lens _pesPipelineExecutionDescription (\s a -> s {_pesPipelineExecutionDescription = a})

-- | The start time of the pipeline execution.
pesStartTime :: Lens' PipelineExecutionSummary (Maybe UTCTime)
pesStartTime = lens _pesStartTime (\s a -> s {_pesStartTime = a}) . mapping _Time

-- | The display name of the pipeline execution.
pesPipelineExecutionDisplayName :: Lens' PipelineExecutionSummary (Maybe Text)
pesPipelineExecutionDisplayName = lens _pesPipelineExecutionDisplayName (\s a -> s {_pesPipelineExecutionDisplayName = a})

-- | The status of the pipeline execution.
pesPipelineExecutionStatus :: Lens' PipelineExecutionSummary (Maybe PipelineExecutionStatus)
pesPipelineExecutionStatus = lens _pesPipelineExecutionStatus (\s a -> s {_pesPipelineExecutionStatus = a})

-- | The Amazon Resource Name (ARN) of the pipeline execution.
pesPipelineExecutionARN :: Lens' PipelineExecutionSummary (Maybe Text)
pesPipelineExecutionARN = lens _pesPipelineExecutionARN (\s a -> s {_pesPipelineExecutionARN = a})

instance FromJSON PipelineExecutionSummary where
  parseJSON =
    withObject
      "PipelineExecutionSummary"
      ( \x ->
          PipelineExecutionSummary'
            <$> (x .:? "PipelineExecutionDescription")
            <*> (x .:? "StartTime")
            <*> (x .:? "PipelineExecutionDisplayName")
            <*> (x .:? "PipelineExecutionStatus")
            <*> (x .:? "PipelineExecutionArn")
      )

instance Hashable PipelineExecutionSummary

instance NFData PipelineExecutionSummary
