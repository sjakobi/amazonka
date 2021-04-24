{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.BuildBatchPhaseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.BuildBatchPhaseType
  ( BuildBatchPhaseType
      ( ..,
        BBPTCombineArtifacts,
        BBPTDownloadBatchspec,
        BBPTFailed,
        BBPTInProgress,
        BBPTStopped,
        BBPTSubmitted,
        BBPTSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BuildBatchPhaseType
  = BuildBatchPhaseType'
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

pattern BBPTCombineArtifacts :: BuildBatchPhaseType
pattern BBPTCombineArtifacts = BuildBatchPhaseType' "COMBINE_ARTIFACTS"

pattern BBPTDownloadBatchspec :: BuildBatchPhaseType
pattern BBPTDownloadBatchspec = BuildBatchPhaseType' "DOWNLOAD_BATCHSPEC"

pattern BBPTFailed :: BuildBatchPhaseType
pattern BBPTFailed = BuildBatchPhaseType' "FAILED"

pattern BBPTInProgress :: BuildBatchPhaseType
pattern BBPTInProgress = BuildBatchPhaseType' "IN_PROGRESS"

pattern BBPTStopped :: BuildBatchPhaseType
pattern BBPTStopped = BuildBatchPhaseType' "STOPPED"

pattern BBPTSubmitted :: BuildBatchPhaseType
pattern BBPTSubmitted = BuildBatchPhaseType' "SUBMITTED"

pattern BBPTSucceeded :: BuildBatchPhaseType
pattern BBPTSucceeded = BuildBatchPhaseType' "SUCCEEDED"

{-# COMPLETE
  BBPTCombineArtifacts,
  BBPTDownloadBatchspec,
  BBPTFailed,
  BBPTInProgress,
  BBPTStopped,
  BBPTSubmitted,
  BBPTSucceeded,
  BuildBatchPhaseType'
  #-}

instance FromText BuildBatchPhaseType where
  parser = (BuildBatchPhaseType' . mk) <$> takeText

instance ToText BuildBatchPhaseType where
  toText (BuildBatchPhaseType' ci) = original ci

instance Hashable BuildBatchPhaseType

instance NFData BuildBatchPhaseType

instance ToByteString BuildBatchPhaseType

instance ToQuery BuildBatchPhaseType

instance ToHeader BuildBatchPhaseType

instance FromJSON BuildBatchPhaseType where
  parseJSON = parseJSONText "BuildBatchPhaseType"
