{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Endpoint,
        Experiment,
        ExperimentTrial,
        ExperimentTrialComponent,
        FeatureGroup,
        ModelPackage,
        ModelPackageGroup,
        Pipeline,
        PipelineExecution,
        TrainingJob
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceType = ResourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Endpoint :: ResourceType
pattern Endpoint = ResourceType' "Endpoint"

pattern Experiment :: ResourceType
pattern Experiment = ResourceType' "Experiment"

pattern ExperimentTrial :: ResourceType
pattern ExperimentTrial = ResourceType' "ExperimentTrial"

pattern ExperimentTrialComponent :: ResourceType
pattern ExperimentTrialComponent = ResourceType' "ExperimentTrialComponent"

pattern FeatureGroup :: ResourceType
pattern FeatureGroup = ResourceType' "FeatureGroup"

pattern ModelPackage :: ResourceType
pattern ModelPackage = ResourceType' "ModelPackage"

pattern ModelPackageGroup :: ResourceType
pattern ModelPackageGroup = ResourceType' "ModelPackageGroup"

pattern Pipeline :: ResourceType
pattern Pipeline = ResourceType' "Pipeline"

pattern PipelineExecution :: ResourceType
pattern PipelineExecution = ResourceType' "PipelineExecution"

pattern TrainingJob :: ResourceType
pattern TrainingJob = ResourceType' "TrainingJob"

{-# COMPLETE
  Endpoint,
  Experiment,
  ExperimentTrial,
  ExperimentTrialComponent,
  FeatureGroup,
  ModelPackage,
  ModelPackageGroup,
  Pipeline,
  PipelineExecution,
  TrainingJob,
  ResourceType'
  #-}

instance FromText ResourceType where
  parser = (ResourceType' . mk) <$> takeText

instance ToText ResourceType where
  toText (ResourceType' ci) = original ci

instance Hashable ResourceType

instance NFData ResourceType

instance ToByteString ResourceType

instance ToQuery ResourceType

instance ToHeader ResourceType

instance ToJSON ResourceType where
  toJSON = toJSONText
