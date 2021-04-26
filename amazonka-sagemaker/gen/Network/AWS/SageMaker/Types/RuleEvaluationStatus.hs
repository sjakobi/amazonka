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
-- Module      : Network.AWS.SageMaker.Types.RuleEvaluationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RuleEvaluationStatus
  ( RuleEvaluationStatus
      ( ..,
        RuleEvaluationStatusError,
        RuleEvaluationStatusInProgress,
        RuleEvaluationStatusIssuesFound,
        RuleEvaluationStatusNoIssuesFound,
        RuleEvaluationStatusStopped,
        RuleEvaluationStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RuleEvaluationStatus = RuleEvaluationStatus'
  { fromRuleEvaluationStatus ::
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

pattern RuleEvaluationStatusError :: RuleEvaluationStatus
pattern RuleEvaluationStatusError = RuleEvaluationStatus' "Error"

pattern RuleEvaluationStatusInProgress :: RuleEvaluationStatus
pattern RuleEvaluationStatusInProgress = RuleEvaluationStatus' "InProgress"

pattern RuleEvaluationStatusIssuesFound :: RuleEvaluationStatus
pattern RuleEvaluationStatusIssuesFound = RuleEvaluationStatus' "IssuesFound"

pattern RuleEvaluationStatusNoIssuesFound :: RuleEvaluationStatus
pattern RuleEvaluationStatusNoIssuesFound = RuleEvaluationStatus' "NoIssuesFound"

pattern RuleEvaluationStatusStopped :: RuleEvaluationStatus
pattern RuleEvaluationStatusStopped = RuleEvaluationStatus' "Stopped"

pattern RuleEvaluationStatusStopping :: RuleEvaluationStatus
pattern RuleEvaluationStatusStopping = RuleEvaluationStatus' "Stopping"

{-# COMPLETE
  RuleEvaluationStatusError,
  RuleEvaluationStatusInProgress,
  RuleEvaluationStatusIssuesFound,
  RuleEvaluationStatusNoIssuesFound,
  RuleEvaluationStatusStopped,
  RuleEvaluationStatusStopping,
  RuleEvaluationStatus'
  #-}

instance Prelude.FromText RuleEvaluationStatus where
  parser = RuleEvaluationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RuleEvaluationStatus where
  toText (RuleEvaluationStatus' x) = x

instance Prelude.Hashable RuleEvaluationStatus

instance Prelude.NFData RuleEvaluationStatus

instance Prelude.ToByteString RuleEvaluationStatus

instance Prelude.ToQuery RuleEvaluationStatus

instance Prelude.ToHeader RuleEvaluationStatus

instance Prelude.FromJSON RuleEvaluationStatus where
  parseJSON = Prelude.parseJSONText "RuleEvaluationStatus"
