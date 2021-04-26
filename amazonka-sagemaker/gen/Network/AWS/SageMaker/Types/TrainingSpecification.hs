{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrainingSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingSpecification where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.ChannelSpecification
import Network.AWS.SageMaker.Types.HyperParameterSpecification
import Network.AWS.SageMaker.Types.HyperParameterTuningJobObjective
import Network.AWS.SageMaker.Types.MetricDefinition
import Network.AWS.SageMaker.Types.TrainingInstanceType

-- | Defines how the algorithm is used for a training job.
--
-- /See:/ 'newTrainingSpecification' smart constructor.
data TrainingSpecification = TrainingSpecification'
  { -- | A list of the @HyperParameterSpecification@ objects, that define the
    -- supported hyperparameters. This is required if the algorithm supports
    -- automatic model tuning.>
    supportedHyperParameters :: Prelude.Maybe [HyperParameterSpecification],
    -- | A list of @MetricDefinition@ objects, which are used for parsing metrics
    -- generated by the algorithm.
    metricDefinitions :: Prelude.Maybe [MetricDefinition],
    -- | An MD5 hash of the training algorithm that identifies the Docker image
    -- used for training.
    trainingImageDigest :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the algorithm supports distributed training. If set to
    -- false, buyers can\'t request more than one instance during training.
    supportsDistributedTraining :: Prelude.Maybe Prelude.Bool,
    -- | A list of the metrics that the algorithm emits that can be used as the
    -- objective metric in a hyperparameter tuning job.
    supportedTuningJobObjectiveMetrics :: Prelude.Maybe [HyperParameterTuningJobObjective],
    -- | The Amazon ECR registry path of the Docker image that contains the
    -- training algorithm.
    trainingImage :: Prelude.Text,
    -- | A list of the instance types that this algorithm can use for training.
    supportedTrainingInstanceTypes :: [TrainingInstanceType],
    -- | A list of @ChannelSpecification@ objects, which specify the input
    -- sources to be used by the algorithm.
    trainingChannels :: Prelude.List1 ChannelSpecification
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TrainingSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'supportedHyperParameters', 'trainingSpecification_supportedHyperParameters' - A list of the @HyperParameterSpecification@ objects, that define the
-- supported hyperparameters. This is required if the algorithm supports
-- automatic model tuning.>
--
-- 'metricDefinitions', 'trainingSpecification_metricDefinitions' - A list of @MetricDefinition@ objects, which are used for parsing metrics
-- generated by the algorithm.
--
-- 'trainingImageDigest', 'trainingSpecification_trainingImageDigest' - An MD5 hash of the training algorithm that identifies the Docker image
-- used for training.
--
-- 'supportsDistributedTraining', 'trainingSpecification_supportsDistributedTraining' - Indicates whether the algorithm supports distributed training. If set to
-- false, buyers can\'t request more than one instance during training.
--
-- 'supportedTuningJobObjectiveMetrics', 'trainingSpecification_supportedTuningJobObjectiveMetrics' - A list of the metrics that the algorithm emits that can be used as the
-- objective metric in a hyperparameter tuning job.
--
-- 'trainingImage', 'trainingSpecification_trainingImage' - The Amazon ECR registry path of the Docker image that contains the
-- training algorithm.
--
-- 'supportedTrainingInstanceTypes', 'trainingSpecification_supportedTrainingInstanceTypes' - A list of the instance types that this algorithm can use for training.
--
-- 'trainingChannels', 'trainingSpecification_trainingChannels' - A list of @ChannelSpecification@ objects, which specify the input
-- sources to be used by the algorithm.
newTrainingSpecification ::
  -- | 'trainingImage'
  Prelude.Text ->
  -- | 'trainingChannels'
  Prelude.NonEmpty ChannelSpecification ->
  TrainingSpecification
newTrainingSpecification
  pTrainingImage_
  pTrainingChannels_ =
    TrainingSpecification'
      { supportedHyperParameters =
          Prelude.Nothing,
        metricDefinitions = Prelude.Nothing,
        trainingImageDigest = Prelude.Nothing,
        supportsDistributedTraining = Prelude.Nothing,
        supportedTuningJobObjectiveMetrics = Prelude.Nothing,
        trainingImage = pTrainingImage_,
        supportedTrainingInstanceTypes = Prelude.mempty,
        trainingChannels =
          Prelude._List1 Lens.# pTrainingChannels_
      }

-- | A list of the @HyperParameterSpecification@ objects, that define the
-- supported hyperparameters. This is required if the algorithm supports
-- automatic model tuning.>
trainingSpecification_supportedHyperParameters :: Lens.Lens' TrainingSpecification (Prelude.Maybe [HyperParameterSpecification])
trainingSpecification_supportedHyperParameters = Lens.lens (\TrainingSpecification' {supportedHyperParameters} -> supportedHyperParameters) (\s@TrainingSpecification' {} a -> s {supportedHyperParameters = a} :: TrainingSpecification) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of @MetricDefinition@ objects, which are used for parsing metrics
-- generated by the algorithm.
trainingSpecification_metricDefinitions :: Lens.Lens' TrainingSpecification (Prelude.Maybe [MetricDefinition])
trainingSpecification_metricDefinitions = Lens.lens (\TrainingSpecification' {metricDefinitions} -> metricDefinitions) (\s@TrainingSpecification' {} a -> s {metricDefinitions = a} :: TrainingSpecification) Prelude.. Lens.mapping Prelude._Coerce

-- | An MD5 hash of the training algorithm that identifies the Docker image
-- used for training.
trainingSpecification_trainingImageDigest :: Lens.Lens' TrainingSpecification (Prelude.Maybe Prelude.Text)
trainingSpecification_trainingImageDigest = Lens.lens (\TrainingSpecification' {trainingImageDigest} -> trainingImageDigest) (\s@TrainingSpecification' {} a -> s {trainingImageDigest = a} :: TrainingSpecification)

-- | Indicates whether the algorithm supports distributed training. If set to
-- false, buyers can\'t request more than one instance during training.
trainingSpecification_supportsDistributedTraining :: Lens.Lens' TrainingSpecification (Prelude.Maybe Prelude.Bool)
trainingSpecification_supportsDistributedTraining = Lens.lens (\TrainingSpecification' {supportsDistributedTraining} -> supportsDistributedTraining) (\s@TrainingSpecification' {} a -> s {supportsDistributedTraining = a} :: TrainingSpecification)

-- | A list of the metrics that the algorithm emits that can be used as the
-- objective metric in a hyperparameter tuning job.
trainingSpecification_supportedTuningJobObjectiveMetrics :: Lens.Lens' TrainingSpecification (Prelude.Maybe [HyperParameterTuningJobObjective])
trainingSpecification_supportedTuningJobObjectiveMetrics = Lens.lens (\TrainingSpecification' {supportedTuningJobObjectiveMetrics} -> supportedTuningJobObjectiveMetrics) (\s@TrainingSpecification' {} a -> s {supportedTuningJobObjectiveMetrics = a} :: TrainingSpecification) Prelude.. Lens.mapping Prelude._Coerce

-- | The Amazon ECR registry path of the Docker image that contains the
-- training algorithm.
trainingSpecification_trainingImage :: Lens.Lens' TrainingSpecification Prelude.Text
trainingSpecification_trainingImage = Lens.lens (\TrainingSpecification' {trainingImage} -> trainingImage) (\s@TrainingSpecification' {} a -> s {trainingImage = a} :: TrainingSpecification)

-- | A list of the instance types that this algorithm can use for training.
trainingSpecification_supportedTrainingInstanceTypes :: Lens.Lens' TrainingSpecification [TrainingInstanceType]
trainingSpecification_supportedTrainingInstanceTypes = Lens.lens (\TrainingSpecification' {supportedTrainingInstanceTypes} -> supportedTrainingInstanceTypes) (\s@TrainingSpecification' {} a -> s {supportedTrainingInstanceTypes = a} :: TrainingSpecification) Prelude.. Prelude._Coerce

-- | A list of @ChannelSpecification@ objects, which specify the input
-- sources to be used by the algorithm.
trainingSpecification_trainingChannels :: Lens.Lens' TrainingSpecification (Prelude.NonEmpty ChannelSpecification)
trainingSpecification_trainingChannels = Lens.lens (\TrainingSpecification' {trainingChannels} -> trainingChannels) (\s@TrainingSpecification' {} a -> s {trainingChannels = a} :: TrainingSpecification) Prelude.. Prelude._List1

instance Prelude.FromJSON TrainingSpecification where
  parseJSON =
    Prelude.withObject
      "TrainingSpecification"
      ( \x ->
          TrainingSpecification'
            Prelude.<$> ( x Prelude..:? "SupportedHyperParameters"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..:? "MetricDefinitions"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "TrainingImageDigest")
            Prelude.<*> (x Prelude..:? "SupportsDistributedTraining")
            Prelude.<*> ( x Prelude..:? "SupportedTuningJobObjectiveMetrics"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..: "TrainingImage")
            Prelude.<*> ( x Prelude..:? "SupportedTrainingInstanceTypes"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..: "TrainingChannels")
      )

instance Prelude.Hashable TrainingSpecification

instance Prelude.NFData TrainingSpecification

instance Prelude.ToJSON TrainingSpecification where
  toJSON TrainingSpecification' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("SupportedHyperParameters" Prelude..=)
              Prelude.<$> supportedHyperParameters,
            ("MetricDefinitions" Prelude..=)
              Prelude.<$> metricDefinitions,
            ("TrainingImageDigest" Prelude..=)
              Prelude.<$> trainingImageDigest,
            ("SupportsDistributedTraining" Prelude..=)
              Prelude.<$> supportsDistributedTraining,
            ("SupportedTuningJobObjectiveMetrics" Prelude..=)
              Prelude.<$> supportedTuningJobObjectiveMetrics,
            Prelude.Just
              ("TrainingImage" Prelude..= trainingImage),
            Prelude.Just
              ( "SupportedTrainingInstanceTypes"
                  Prelude..= supportedTrainingInstanceTypes
              ),
            Prelude.Just
              ("TrainingChannels" Prelude..= trainingChannels)
          ]
      )
