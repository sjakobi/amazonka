{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.RuleEvaluationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RuleEvaluationStatus
  ( RuleEvaluationStatus
      ( ..,
        RESError',
        RESInProgress,
        RESIssuesFound,
        RESNoIssuesFound,
        RESStopped,
        RESStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RuleEvaluationStatus
  = RuleEvaluationStatus'
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

pattern RESError' :: RuleEvaluationStatus
pattern RESError' = RuleEvaluationStatus' "Error"

pattern RESInProgress :: RuleEvaluationStatus
pattern RESInProgress = RuleEvaluationStatus' "InProgress"

pattern RESIssuesFound :: RuleEvaluationStatus
pattern RESIssuesFound = RuleEvaluationStatus' "IssuesFound"

pattern RESNoIssuesFound :: RuleEvaluationStatus
pattern RESNoIssuesFound = RuleEvaluationStatus' "NoIssuesFound"

pattern RESStopped :: RuleEvaluationStatus
pattern RESStopped = RuleEvaluationStatus' "Stopped"

pattern RESStopping :: RuleEvaluationStatus
pattern RESStopping = RuleEvaluationStatus' "Stopping"

{-# COMPLETE
  RESError',
  RESInProgress,
  RESIssuesFound,
  RESNoIssuesFound,
  RESStopped,
  RESStopping,
  RuleEvaluationStatus'
  #-}

instance FromText RuleEvaluationStatus where
  parser = (RuleEvaluationStatus' . mk) <$> takeText

instance ToText RuleEvaluationStatus where
  toText (RuleEvaluationStatus' ci) = original ci

instance Hashable RuleEvaluationStatus

instance NFData RuleEvaluationStatus

instance ToByteString RuleEvaluationStatus

instance ToQuery RuleEvaluationStatus

instance ToHeader RuleEvaluationStatus

instance FromJSON RuleEvaluationStatus where
  parseJSON = parseJSONText "RuleEvaluationStatus"
