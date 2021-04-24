{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode
  ( ScalingPlanStatusCode
      ( ..,
        SPSCActive,
        SPSCActiveWithProblems,
        SPSCCreationFailed,
        SPSCCreationInProgress,
        SPSCDeletionFailed,
        SPSCDeletionInProgress,
        SPSCUpdateFailed,
        SPSCUpdateInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalingPlanStatusCode
  = ScalingPlanStatusCode'
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

pattern SPSCActive :: ScalingPlanStatusCode
pattern SPSCActive = ScalingPlanStatusCode' "Active"

pattern SPSCActiveWithProblems :: ScalingPlanStatusCode
pattern SPSCActiveWithProblems = ScalingPlanStatusCode' "ActiveWithProblems"

pattern SPSCCreationFailed :: ScalingPlanStatusCode
pattern SPSCCreationFailed = ScalingPlanStatusCode' "CreationFailed"

pattern SPSCCreationInProgress :: ScalingPlanStatusCode
pattern SPSCCreationInProgress = ScalingPlanStatusCode' "CreationInProgress"

pattern SPSCDeletionFailed :: ScalingPlanStatusCode
pattern SPSCDeletionFailed = ScalingPlanStatusCode' "DeletionFailed"

pattern SPSCDeletionInProgress :: ScalingPlanStatusCode
pattern SPSCDeletionInProgress = ScalingPlanStatusCode' "DeletionInProgress"

pattern SPSCUpdateFailed :: ScalingPlanStatusCode
pattern SPSCUpdateFailed = ScalingPlanStatusCode' "UpdateFailed"

pattern SPSCUpdateInProgress :: ScalingPlanStatusCode
pattern SPSCUpdateInProgress = ScalingPlanStatusCode' "UpdateInProgress"

{-# COMPLETE
  SPSCActive,
  SPSCActiveWithProblems,
  SPSCCreationFailed,
  SPSCCreationInProgress,
  SPSCDeletionFailed,
  SPSCDeletionInProgress,
  SPSCUpdateFailed,
  SPSCUpdateInProgress,
  ScalingPlanStatusCode'
  #-}

instance FromText ScalingPlanStatusCode where
  parser = (ScalingPlanStatusCode' . mk) <$> takeText

instance ToText ScalingPlanStatusCode where
  toText (ScalingPlanStatusCode' ci) = original ci

instance Hashable ScalingPlanStatusCode

instance NFData ScalingPlanStatusCode

instance ToByteString ScalingPlanStatusCode

instance ToQuery ScalingPlanStatusCode

instance ToHeader ScalingPlanStatusCode

instance FromJSON ScalingPlanStatusCode where
  parseJSON = parseJSONText "ScalingPlanStatusCode"
