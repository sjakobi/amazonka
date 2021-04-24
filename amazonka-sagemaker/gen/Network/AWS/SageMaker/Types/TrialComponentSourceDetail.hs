{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrialComponentSourceDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrialComponentSourceDetail where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ProcessingJob
import Network.AWS.SageMaker.Types.TrainingJob
import Network.AWS.SageMaker.Types.TransformJob

-- | Detailed information about the source of a trial component. Either @ProcessingJob@ or @TrainingJob@ is returned.
--
--
--
-- /See:/ 'trialComponentSourceDetail' smart constructor.
data TrialComponentSourceDetail = TrialComponentSourceDetail'
  { _tcsdProcessingJob ::
      !( Maybe
           ProcessingJob
       ),
    _tcsdTrainingJob ::
      !( Maybe
           TrainingJob
       ),
    _tcsdTransformJob ::
      !( Maybe
           TransformJob
       ),
    _tcsdSourceARN ::
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

-- | Creates a value of 'TrialComponentSourceDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcsdProcessingJob' - Information about a processing job that's the source of a trial component.
--
-- * 'tcsdTrainingJob' - Information about a training job that's the source of a trial component.
--
-- * 'tcsdTransformJob' - Information about a transform job that's the source of a trial component.
--
-- * 'tcsdSourceARN' - The Amazon Resource Name (ARN) of the source.
trialComponentSourceDetail ::
  TrialComponentSourceDetail
trialComponentSourceDetail =
  TrialComponentSourceDetail'
    { _tcsdProcessingJob =
        Nothing,
      _tcsdTrainingJob = Nothing,
      _tcsdTransformJob = Nothing,
      _tcsdSourceARN = Nothing
    }

-- | Information about a processing job that's the source of a trial component.
tcsdProcessingJob :: Lens' TrialComponentSourceDetail (Maybe ProcessingJob)
tcsdProcessingJob = lens _tcsdProcessingJob (\s a -> s {_tcsdProcessingJob = a})

-- | Information about a training job that's the source of a trial component.
tcsdTrainingJob :: Lens' TrialComponentSourceDetail (Maybe TrainingJob)
tcsdTrainingJob = lens _tcsdTrainingJob (\s a -> s {_tcsdTrainingJob = a})

-- | Information about a transform job that's the source of a trial component.
tcsdTransformJob :: Lens' TrialComponentSourceDetail (Maybe TransformJob)
tcsdTransformJob = lens _tcsdTransformJob (\s a -> s {_tcsdTransformJob = a})

-- | The Amazon Resource Name (ARN) of the source.
tcsdSourceARN :: Lens' TrialComponentSourceDetail (Maybe Text)
tcsdSourceARN = lens _tcsdSourceARN (\s a -> s {_tcsdSourceARN = a})

instance FromJSON TrialComponentSourceDetail where
  parseJSON =
    withObject
      "TrialComponentSourceDetail"
      ( \x ->
          TrialComponentSourceDetail'
            <$> (x .:? "ProcessingJob")
            <*> (x .:? "TrainingJob")
            <*> (x .:? "TransformJob")
            <*> (x .:? "SourceArn")
      )

instance Hashable TrialComponentSourceDetail

instance NFData TrialComponentSourceDetail
