{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrainingJobSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingJobSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.TrainingJobStatus

-- | Provides summary information about a training job.
--
--
--
-- /See:/ 'trainingJobSummary' smart constructor.
data TrainingJobSummary = TrainingJobSummary'
  { _traLastModifiedTime ::
      !(Maybe POSIX),
    _traTrainingEndTime ::
      !(Maybe POSIX),
    _traTrainingJobName :: !Text,
    _traTrainingJobARN :: !Text,
    _traCreationTime :: !POSIX,
    _traTrainingJobStatus ::
      !TrainingJobStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrainingJobSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'traLastModifiedTime' - Timestamp when the training job was last modified.
--
-- * 'traTrainingEndTime' - A timestamp that shows when the training job ended. This field is set only if the training job has one of the terminal statuses (@Completed@ , @Failed@ , or @Stopped@ ).
--
-- * 'traTrainingJobName' - The name of the training job that you want a summary for.
--
-- * 'traTrainingJobARN' - The Amazon Resource Name (ARN) of the training job.
--
-- * 'traCreationTime' - A timestamp that shows when the training job was created.
--
-- * 'traTrainingJobStatus' - The status of the training job.
trainingJobSummary ::
  -- | 'traTrainingJobName'
  Text ->
  -- | 'traTrainingJobARN'
  Text ->
  -- | 'traCreationTime'
  UTCTime ->
  -- | 'traTrainingJobStatus'
  TrainingJobStatus ->
  TrainingJobSummary
trainingJobSummary
  pTrainingJobName_
  pTrainingJobARN_
  pCreationTime_
  pTrainingJobStatus_ =
    TrainingJobSummary'
      { _traLastModifiedTime = Nothing,
        _traTrainingEndTime = Nothing,
        _traTrainingJobName = pTrainingJobName_,
        _traTrainingJobARN = pTrainingJobARN_,
        _traCreationTime = _Time # pCreationTime_,
        _traTrainingJobStatus = pTrainingJobStatus_
      }

-- | Timestamp when the training job was last modified.
traLastModifiedTime :: Lens' TrainingJobSummary (Maybe UTCTime)
traLastModifiedTime = lens _traLastModifiedTime (\s a -> s {_traLastModifiedTime = a}) . mapping _Time

-- | A timestamp that shows when the training job ended. This field is set only if the training job has one of the terminal statuses (@Completed@ , @Failed@ , or @Stopped@ ).
traTrainingEndTime :: Lens' TrainingJobSummary (Maybe UTCTime)
traTrainingEndTime = lens _traTrainingEndTime (\s a -> s {_traTrainingEndTime = a}) . mapping _Time

-- | The name of the training job that you want a summary for.
traTrainingJobName :: Lens' TrainingJobSummary Text
traTrainingJobName = lens _traTrainingJobName (\s a -> s {_traTrainingJobName = a})

-- | The Amazon Resource Name (ARN) of the training job.
traTrainingJobARN :: Lens' TrainingJobSummary Text
traTrainingJobARN = lens _traTrainingJobARN (\s a -> s {_traTrainingJobARN = a})

-- | A timestamp that shows when the training job was created.
traCreationTime :: Lens' TrainingJobSummary UTCTime
traCreationTime = lens _traCreationTime (\s a -> s {_traCreationTime = a}) . _Time

-- | The status of the training job.
traTrainingJobStatus :: Lens' TrainingJobSummary TrainingJobStatus
traTrainingJobStatus = lens _traTrainingJobStatus (\s a -> s {_traTrainingJobStatus = a})

instance FromJSON TrainingJobSummary where
  parseJSON =
    withObject
      "TrainingJobSummary"
      ( \x ->
          TrainingJobSummary'
            <$> (x .:? "LastModifiedTime")
            <*> (x .:? "TrainingEndTime")
            <*> (x .: "TrainingJobName")
            <*> (x .: "TrainingJobArn")
            <*> (x .: "CreationTime")
            <*> (x .: "TrainingJobStatus")
      )

instance Hashable TrainingJobSummary

instance NFData TrainingJobSummary
