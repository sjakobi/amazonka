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
-- Module      : Network.AWS.SageMaker.Types.AutoMLJobSecondaryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLJobSecondaryStatus
  ( AutoMLJobSecondaryStatus
      ( ..,
        AutoMLJobSecondaryStatusAnalyzingData,
        AutoMLJobSecondaryStatusCandidateDefinitionsGenerated,
        AutoMLJobSecondaryStatusFailed,
        AutoMLJobSecondaryStatusFeatureEngineering,
        AutoMLJobSecondaryStatusMaxAutoMLJobRuntimeReached,
        AutoMLJobSecondaryStatusMaxCandidatesReached,
        AutoMLJobSecondaryStatusModelTuning,
        AutoMLJobSecondaryStatusStarting,
        AutoMLJobSecondaryStatusStopped,
        AutoMLJobSecondaryStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoMLJobSecondaryStatus = AutoMLJobSecondaryStatus'
  { fromAutoMLJobSecondaryStatus ::
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

pattern AutoMLJobSecondaryStatusAnalyzingData :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusAnalyzingData = AutoMLJobSecondaryStatus' "AnalyzingData"

pattern AutoMLJobSecondaryStatusCandidateDefinitionsGenerated :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusCandidateDefinitionsGenerated = AutoMLJobSecondaryStatus' "CandidateDefinitionsGenerated"

pattern AutoMLJobSecondaryStatusFailed :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusFailed = AutoMLJobSecondaryStatus' "Failed"

pattern AutoMLJobSecondaryStatusFeatureEngineering :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusFeatureEngineering = AutoMLJobSecondaryStatus' "FeatureEngineering"

pattern AutoMLJobSecondaryStatusMaxAutoMLJobRuntimeReached :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusMaxAutoMLJobRuntimeReached = AutoMLJobSecondaryStatus' "MaxAutoMLJobRuntimeReached"

pattern AutoMLJobSecondaryStatusMaxCandidatesReached :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusMaxCandidatesReached = AutoMLJobSecondaryStatus' "MaxCandidatesReached"

pattern AutoMLJobSecondaryStatusModelTuning :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusModelTuning = AutoMLJobSecondaryStatus' "ModelTuning"

pattern AutoMLJobSecondaryStatusStarting :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusStarting = AutoMLJobSecondaryStatus' "Starting"

pattern AutoMLJobSecondaryStatusStopped :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusStopped = AutoMLJobSecondaryStatus' "Stopped"

pattern AutoMLJobSecondaryStatusStopping :: AutoMLJobSecondaryStatus
pattern AutoMLJobSecondaryStatusStopping = AutoMLJobSecondaryStatus' "Stopping"

{-# COMPLETE
  AutoMLJobSecondaryStatusAnalyzingData,
  AutoMLJobSecondaryStatusCandidateDefinitionsGenerated,
  AutoMLJobSecondaryStatusFailed,
  AutoMLJobSecondaryStatusFeatureEngineering,
  AutoMLJobSecondaryStatusMaxAutoMLJobRuntimeReached,
  AutoMLJobSecondaryStatusMaxCandidatesReached,
  AutoMLJobSecondaryStatusModelTuning,
  AutoMLJobSecondaryStatusStarting,
  AutoMLJobSecondaryStatusStopped,
  AutoMLJobSecondaryStatusStopping,
  AutoMLJobSecondaryStatus'
  #-}

instance Prelude.FromText AutoMLJobSecondaryStatus where
  parser = AutoMLJobSecondaryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoMLJobSecondaryStatus where
  toText (AutoMLJobSecondaryStatus' x) = x

instance Prelude.Hashable AutoMLJobSecondaryStatus

instance Prelude.NFData AutoMLJobSecondaryStatus

instance Prelude.ToByteString AutoMLJobSecondaryStatus

instance Prelude.ToQuery AutoMLJobSecondaryStatus

instance Prelude.ToHeader AutoMLJobSecondaryStatus

instance Prelude.FromJSON AutoMLJobSecondaryStatus where
  parseJSON = Prelude.parseJSONText "AutoMLJobSecondaryStatus"
