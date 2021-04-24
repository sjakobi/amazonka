{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingJobStepMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingJobStepMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Metadata for a processing job step.
--
--
--
-- /See:/ 'processingJobStepMetadata' smart constructor.
newtype ProcessingJobStepMetadata = ProcessingJobStepMetadata'
  { _pjsmARN ::
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

-- | Creates a value of 'ProcessingJobStepMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjsmARN' - The Amazon Resource Name (ARN) of the processing job.
processingJobStepMetadata ::
  ProcessingJobStepMetadata
processingJobStepMetadata =
  ProcessingJobStepMetadata' {_pjsmARN = Nothing}

-- | The Amazon Resource Name (ARN) of the processing job.
pjsmARN :: Lens' ProcessingJobStepMetadata (Maybe Text)
pjsmARN = lens _pjsmARN (\s a -> s {_pjsmARN = a})

instance FromJSON ProcessingJobStepMetadata where
  parseJSON =
    withObject
      "ProcessingJobStepMetadata"
      (\x -> ProcessingJobStepMetadata' <$> (x .:? "Arn"))

instance Hashable ProcessingJobStepMetadata

instance NFData ProcessingJobStepMetadata
