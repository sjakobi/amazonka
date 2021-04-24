{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SearchRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SearchRecord where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.Endpoint
import Network.AWS.SageMaker.Types.Experiment
import Network.AWS.SageMaker.Types.FeatureGroup
import Network.AWS.SageMaker.Types.ModelPackage
import Network.AWS.SageMaker.Types.ModelPackageGroup
import Network.AWS.SageMaker.Types.Pipeline
import Network.AWS.SageMaker.Types.PipelineExecution
import Network.AWS.SageMaker.Types.TrainingJob
import Network.AWS.SageMaker.Types.Trial
import Network.AWS.SageMaker.Types.TrialComponent

-- | A single resource returned as part of the 'Search' API response.
--
--
--
-- /See:/ 'searchRecord' smart constructor.
data SearchRecord = SearchRecord'
  { _srExperiment ::
      !(Maybe Experiment),
    _srFeatureGroup :: !(Maybe FeatureGroup),
    _srModelPackage :: !(Maybe ModelPackage),
    _srTrainingJob :: !(Maybe TrainingJob),
    _srEndpoint :: !(Maybe Endpoint),
    _srPipelineExecution ::
      !(Maybe PipelineExecution),
    _srTrialComponent :: !(Maybe TrialComponent),
    _srModelPackageGroup ::
      !(Maybe ModelPackageGroup),
    _srPipeline :: !(Maybe Pipeline),
    _srTrial :: !(Maybe Trial)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srExperiment' - The properties of an experiment.
--
-- * 'srFeatureGroup' - Undocumented member.
--
-- * 'srModelPackage' - Undocumented member.
--
-- * 'srTrainingJob' - The properties of a training job.
--
-- * 'srEndpoint' - Undocumented member.
--
-- * 'srPipelineExecution' - Undocumented member.
--
-- * 'srTrialComponent' - The properties of a trial component.
--
-- * 'srModelPackageGroup' - Undocumented member.
--
-- * 'srPipeline' - Undocumented member.
--
-- * 'srTrial' - The properties of a trial.
searchRecord ::
  SearchRecord
searchRecord =
  SearchRecord'
    { _srExperiment = Nothing,
      _srFeatureGroup = Nothing,
      _srModelPackage = Nothing,
      _srTrainingJob = Nothing,
      _srEndpoint = Nothing,
      _srPipelineExecution = Nothing,
      _srTrialComponent = Nothing,
      _srModelPackageGroup = Nothing,
      _srPipeline = Nothing,
      _srTrial = Nothing
    }

-- | The properties of an experiment.
srExperiment :: Lens' SearchRecord (Maybe Experiment)
srExperiment = lens _srExperiment (\s a -> s {_srExperiment = a})

-- | Undocumented member.
srFeatureGroup :: Lens' SearchRecord (Maybe FeatureGroup)
srFeatureGroup = lens _srFeatureGroup (\s a -> s {_srFeatureGroup = a})

-- | Undocumented member.
srModelPackage :: Lens' SearchRecord (Maybe ModelPackage)
srModelPackage = lens _srModelPackage (\s a -> s {_srModelPackage = a})

-- | The properties of a training job.
srTrainingJob :: Lens' SearchRecord (Maybe TrainingJob)
srTrainingJob = lens _srTrainingJob (\s a -> s {_srTrainingJob = a})

-- | Undocumented member.
srEndpoint :: Lens' SearchRecord (Maybe Endpoint)
srEndpoint = lens _srEndpoint (\s a -> s {_srEndpoint = a})

-- | Undocumented member.
srPipelineExecution :: Lens' SearchRecord (Maybe PipelineExecution)
srPipelineExecution = lens _srPipelineExecution (\s a -> s {_srPipelineExecution = a})

-- | The properties of a trial component.
srTrialComponent :: Lens' SearchRecord (Maybe TrialComponent)
srTrialComponent = lens _srTrialComponent (\s a -> s {_srTrialComponent = a})

-- | Undocumented member.
srModelPackageGroup :: Lens' SearchRecord (Maybe ModelPackageGroup)
srModelPackageGroup = lens _srModelPackageGroup (\s a -> s {_srModelPackageGroup = a})

-- | Undocumented member.
srPipeline :: Lens' SearchRecord (Maybe Pipeline)
srPipeline = lens _srPipeline (\s a -> s {_srPipeline = a})

-- | The properties of a trial.
srTrial :: Lens' SearchRecord (Maybe Trial)
srTrial = lens _srTrial (\s a -> s {_srTrial = a})

instance FromJSON SearchRecord where
  parseJSON =
    withObject
      "SearchRecord"
      ( \x ->
          SearchRecord'
            <$> (x .:? "Experiment")
            <*> (x .:? "FeatureGroup")
            <*> (x .:? "ModelPackage")
            <*> (x .:? "TrainingJob")
            <*> (x .:? "Endpoint")
            <*> (x .:? "PipelineExecution")
            <*> (x .:? "TrialComponent")
            <*> (x .:? "ModelPackageGroup")
            <*> (x .:? "Pipeline")
            <*> (x .:? "Trial")
      )

instance Hashable SearchRecord

instance NFData SearchRecord
