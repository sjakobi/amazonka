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
-- Module      : Network.AWS.SageMaker.Types.ResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ResourceType
  ( ResourceType
      ( ..,
        ResourceTypeEndpoint,
        ResourceTypeExperiment,
        ResourceTypeExperimentTrial,
        ResourceTypeExperimentTrialComponent,
        ResourceTypeFeatureGroup,
        ResourceTypeModelPackage,
        ResourceTypeModelPackageGroup,
        ResourceTypePipeline,
        ResourceTypePipelineExecution,
        ResourceTypeTrainingJob
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceType = ResourceType'
  { fromResourceType ::
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

pattern ResourceTypeEndpoint :: ResourceType
pattern ResourceTypeEndpoint = ResourceType' "Endpoint"

pattern ResourceTypeExperiment :: ResourceType
pattern ResourceTypeExperiment = ResourceType' "Experiment"

pattern ResourceTypeExperimentTrial :: ResourceType
pattern ResourceTypeExperimentTrial = ResourceType' "ExperimentTrial"

pattern ResourceTypeExperimentTrialComponent :: ResourceType
pattern ResourceTypeExperimentTrialComponent = ResourceType' "ExperimentTrialComponent"

pattern ResourceTypeFeatureGroup :: ResourceType
pattern ResourceTypeFeatureGroup = ResourceType' "FeatureGroup"

pattern ResourceTypeModelPackage :: ResourceType
pattern ResourceTypeModelPackage = ResourceType' "ModelPackage"

pattern ResourceTypeModelPackageGroup :: ResourceType
pattern ResourceTypeModelPackageGroup = ResourceType' "ModelPackageGroup"

pattern ResourceTypePipeline :: ResourceType
pattern ResourceTypePipeline = ResourceType' "Pipeline"

pattern ResourceTypePipelineExecution :: ResourceType
pattern ResourceTypePipelineExecution = ResourceType' "PipelineExecution"

pattern ResourceTypeTrainingJob :: ResourceType
pattern ResourceTypeTrainingJob = ResourceType' "TrainingJob"

{-# COMPLETE
  ResourceTypeEndpoint,
  ResourceTypeExperiment,
  ResourceTypeExperimentTrial,
  ResourceTypeExperimentTrialComponent,
  ResourceTypeFeatureGroup,
  ResourceTypeModelPackage,
  ResourceTypeModelPackageGroup,
  ResourceTypePipeline,
  ResourceTypePipelineExecution,
  ResourceTypeTrainingJob,
  ResourceType'
  #-}

instance Prelude.FromText ResourceType where
  parser = ResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceType where
  toText (ResourceType' x) = x

instance Prelude.Hashable ResourceType

instance Prelude.NFData ResourceType

instance Prelude.ToByteString ResourceType

instance Prelude.ToQuery ResourceType

instance Prelude.ToHeader ResourceType

instance Prelude.ToJSON ResourceType where
  toJSON = Prelude.toJSONText
