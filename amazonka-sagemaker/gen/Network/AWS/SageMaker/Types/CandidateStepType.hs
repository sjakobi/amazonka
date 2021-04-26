{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        CandidateStepTypeAWSSageMakerProcessingJob,
        CandidateStepTypeAWSSageMakerTrainingJob,
        CandidateStepTypeAWSSageMakerTransformJob
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CandidateStepType = CandidateStepType'
  { fromCandidateStepType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CandidateStepTypeAWSSageMakerProcessingJob :: CandidateStepType
pattern CandidateStepTypeAWSSageMakerProcessingJob = CandidateStepType' "AWS::SageMaker::ProcessingJob"

pattern CandidateStepTypeAWSSageMakerTrainingJob :: CandidateStepType
pattern CandidateStepTypeAWSSageMakerTrainingJob = CandidateStepType' "AWS::SageMaker::TrainingJob"

pattern CandidateStepTypeAWSSageMakerTransformJob :: CandidateStepType
pattern CandidateStepTypeAWSSageMakerTransformJob = CandidateStepType' "AWS::SageMaker::TransformJob"

{-# COMPLETE
  CandidateStepTypeAWSSageMakerProcessingJob,
  CandidateStepTypeAWSSageMakerTrainingJob,
  CandidateStepTypeAWSSageMakerTransformJob,
  CandidateStepType'
  #-}

instance Prelude.FromText CandidateStepType where
  parser = CandidateStepType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CandidateStepType where
  toText (CandidateStepType' x) = x

instance Prelude.Hashable CandidateStepType

instance Prelude.NFData CandidateStepType

instance Prelude.ToByteString CandidateStepType

instance Prelude.ToQuery CandidateStepType

instance Prelude.ToHeader CandidateStepType

instance Prelude.FromJSON CandidateStepType where
  parseJSON = Prelude.parseJSONText "CandidateStepType"
