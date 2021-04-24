{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AMLJSSAnalyzingData,
        AMLJSSCandidateDefinitionsGenerated,
        AMLJSSFailed,
        AMLJSSFeatureEngineering,
        AMLJSSMaxAutoMLJobRuntimeReached,
        AMLJSSMaxCandidatesReached,
        AMLJSSModelTuning,
        AMLJSSStarting,
        AMLJSSStopped,
        AMLJSSStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutoMLJobSecondaryStatus
  = AutoMLJobSecondaryStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AMLJSSAnalyzingData :: AutoMLJobSecondaryStatus
pattern AMLJSSAnalyzingData = AutoMLJobSecondaryStatus' "AnalyzingData"

pattern AMLJSSCandidateDefinitionsGenerated :: AutoMLJobSecondaryStatus
pattern AMLJSSCandidateDefinitionsGenerated = AutoMLJobSecondaryStatus' "CandidateDefinitionsGenerated"

pattern AMLJSSFailed :: AutoMLJobSecondaryStatus
pattern AMLJSSFailed = AutoMLJobSecondaryStatus' "Failed"

pattern AMLJSSFeatureEngineering :: AutoMLJobSecondaryStatus
pattern AMLJSSFeatureEngineering = AutoMLJobSecondaryStatus' "FeatureEngineering"

pattern AMLJSSMaxAutoMLJobRuntimeReached :: AutoMLJobSecondaryStatus
pattern AMLJSSMaxAutoMLJobRuntimeReached = AutoMLJobSecondaryStatus' "MaxAutoMLJobRuntimeReached"

pattern AMLJSSMaxCandidatesReached :: AutoMLJobSecondaryStatus
pattern AMLJSSMaxCandidatesReached = AutoMLJobSecondaryStatus' "MaxCandidatesReached"

pattern AMLJSSModelTuning :: AutoMLJobSecondaryStatus
pattern AMLJSSModelTuning = AutoMLJobSecondaryStatus' "ModelTuning"

pattern AMLJSSStarting :: AutoMLJobSecondaryStatus
pattern AMLJSSStarting = AutoMLJobSecondaryStatus' "Starting"

pattern AMLJSSStopped :: AutoMLJobSecondaryStatus
pattern AMLJSSStopped = AutoMLJobSecondaryStatus' "Stopped"

pattern AMLJSSStopping :: AutoMLJobSecondaryStatus
pattern AMLJSSStopping = AutoMLJobSecondaryStatus' "Stopping"

{-# COMPLETE
  AMLJSSAnalyzingData,
  AMLJSSCandidateDefinitionsGenerated,
  AMLJSSFailed,
  AMLJSSFeatureEngineering,
  AMLJSSMaxAutoMLJobRuntimeReached,
  AMLJSSMaxCandidatesReached,
  AMLJSSModelTuning,
  AMLJSSStarting,
  AMLJSSStopped,
  AMLJSSStopping,
  AutoMLJobSecondaryStatus'
  #-}

instance FromText AutoMLJobSecondaryStatus where
  parser = (AutoMLJobSecondaryStatus' . mk) <$> takeText

instance ToText AutoMLJobSecondaryStatus where
  toText (AutoMLJobSecondaryStatus' ci) = original ci

instance Hashable AutoMLJobSecondaryStatus

instance NFData AutoMLJobSecondaryStatus

instance ToByteString AutoMLJobSecondaryStatus

instance ToQuery AutoMLJobSecondaryStatus

instance ToHeader AutoMLJobSecondaryStatus

instance FromJSON AutoMLJobSecondaryStatus where
  parseJSON = parseJSONText "AutoMLJobSecondaryStatus"
