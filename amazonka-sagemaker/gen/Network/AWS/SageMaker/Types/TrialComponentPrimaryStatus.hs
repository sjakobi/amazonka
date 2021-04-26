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
-- Module      : Network.AWS.SageMaker.Types.TrialComponentPrimaryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrialComponentPrimaryStatus
  ( TrialComponentPrimaryStatus
      ( ..,
        TrialComponentPrimaryStatusCompleted,
        TrialComponentPrimaryStatusFailed,
        TrialComponentPrimaryStatusInProgress,
        TrialComponentPrimaryStatusStopped,
        TrialComponentPrimaryStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrialComponentPrimaryStatus = TrialComponentPrimaryStatus'
  { fromTrialComponentPrimaryStatus ::
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

pattern TrialComponentPrimaryStatusCompleted :: TrialComponentPrimaryStatus
pattern TrialComponentPrimaryStatusCompleted = TrialComponentPrimaryStatus' "Completed"

pattern TrialComponentPrimaryStatusFailed :: TrialComponentPrimaryStatus
pattern TrialComponentPrimaryStatusFailed = TrialComponentPrimaryStatus' "Failed"

pattern TrialComponentPrimaryStatusInProgress :: TrialComponentPrimaryStatus
pattern TrialComponentPrimaryStatusInProgress = TrialComponentPrimaryStatus' "InProgress"

pattern TrialComponentPrimaryStatusStopped :: TrialComponentPrimaryStatus
pattern TrialComponentPrimaryStatusStopped = TrialComponentPrimaryStatus' "Stopped"

pattern TrialComponentPrimaryStatusStopping :: TrialComponentPrimaryStatus
pattern TrialComponentPrimaryStatusStopping = TrialComponentPrimaryStatus' "Stopping"

{-# COMPLETE
  TrialComponentPrimaryStatusCompleted,
  TrialComponentPrimaryStatusFailed,
  TrialComponentPrimaryStatusInProgress,
  TrialComponentPrimaryStatusStopped,
  TrialComponentPrimaryStatusStopping,
  TrialComponentPrimaryStatus'
  #-}

instance Prelude.FromText TrialComponentPrimaryStatus where
  parser = TrialComponentPrimaryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrialComponentPrimaryStatus where
  toText (TrialComponentPrimaryStatus' x) = x

instance Prelude.Hashable TrialComponentPrimaryStatus

instance Prelude.NFData TrialComponentPrimaryStatus

instance Prelude.ToByteString TrialComponentPrimaryStatus

instance Prelude.ToQuery TrialComponentPrimaryStatus

instance Prelude.ToHeader TrialComponentPrimaryStatus

instance Prelude.ToJSON TrialComponentPrimaryStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TrialComponentPrimaryStatus where
  parseJSON = Prelude.parseJSONText "TrialComponentPrimaryStatus"
