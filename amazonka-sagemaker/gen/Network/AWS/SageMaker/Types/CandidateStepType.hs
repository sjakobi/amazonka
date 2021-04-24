{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CandidateStepType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CandidateStepType
  ( CandidateStepType
      ( ..,
        AWSSageMakerProcessingJob,
        AWSSageMakerTrainingJob,
        AWSSageMakerTransformJob
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CandidateStepType = CandidateStepType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSSageMakerProcessingJob :: CandidateStepType
pattern AWSSageMakerProcessingJob = CandidateStepType' "AWS::SageMaker::ProcessingJob"

pattern AWSSageMakerTrainingJob :: CandidateStepType
pattern AWSSageMakerTrainingJob = CandidateStepType' "AWS::SageMaker::TrainingJob"

pattern AWSSageMakerTransformJob :: CandidateStepType
pattern AWSSageMakerTransformJob = CandidateStepType' "AWS::SageMaker::TransformJob"

{-# COMPLETE
  AWSSageMakerProcessingJob,
  AWSSageMakerTrainingJob,
  AWSSageMakerTransformJob,
  CandidateStepType'
  #-}

instance FromText CandidateStepType where
  parser = (CandidateStepType' . mk) <$> takeText

instance ToText CandidateStepType where
  toText (CandidateStepType' ci) = original ci

instance Hashable CandidateStepType

instance NFData CandidateStepType

instance ToByteString CandidateStepType

instance ToQuery CandidateStepType

instance ToHeader CandidateStepType

instance FromJSON CandidateStepType where
  parseJSON = parseJSONText "CandidateStepType"
