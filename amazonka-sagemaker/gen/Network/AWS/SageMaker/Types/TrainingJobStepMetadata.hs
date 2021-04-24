{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrainingJobStepMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingJobStepMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Metadata for a training job step.
--
--
--
-- /See:/ 'trainingJobStepMetadata' smart constructor.
newtype TrainingJobStepMetadata = TrainingJobStepMetadata'
  { _tjsmARN ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TrainingJobStepMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tjsmARN' - The Amazon Resource Name (ARN) of the training job that was run by this step execution.
trainingJobStepMetadata ::
  TrainingJobStepMetadata
trainingJobStepMetadata =
  TrainingJobStepMetadata' {_tjsmARN = Nothing}

-- | The Amazon Resource Name (ARN) of the training job that was run by this step execution.
tjsmARN :: Lens' TrainingJobStepMetadata (Maybe Text)
tjsmARN = lens _tjsmARN (\s a -> s {_tjsmARN = a})

instance FromJSON TrainingJobStepMetadata where
  parseJSON =
    withObject
      "TrainingJobStepMetadata"
      (\x -> TrainingJobStepMetadata' <$> (x .:? "Arn"))

instance Hashable TrainingJobStepMetadata

instance NFData TrainingJobStepMetadata
