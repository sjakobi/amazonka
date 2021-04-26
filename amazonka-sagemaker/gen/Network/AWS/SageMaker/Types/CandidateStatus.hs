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
-- Module      : Network.AWS.SageMaker.Types.CandidateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CandidateStatus
  ( CandidateStatus
      ( ..,
        CandidateStatusCompleted,
        CandidateStatusFailed,
        CandidateStatusInProgress,
        CandidateStatusStopped,
        CandidateStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CandidateStatus = CandidateStatus'
  { fromCandidateStatus ::
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

pattern CandidateStatusCompleted :: CandidateStatus
pattern CandidateStatusCompleted = CandidateStatus' "Completed"

pattern CandidateStatusFailed :: CandidateStatus
pattern CandidateStatusFailed = CandidateStatus' "Failed"

pattern CandidateStatusInProgress :: CandidateStatus
pattern CandidateStatusInProgress = CandidateStatus' "InProgress"

pattern CandidateStatusStopped :: CandidateStatus
pattern CandidateStatusStopped = CandidateStatus' "Stopped"

pattern CandidateStatusStopping :: CandidateStatus
pattern CandidateStatusStopping = CandidateStatus' "Stopping"

{-# COMPLETE
  CandidateStatusCompleted,
  CandidateStatusFailed,
  CandidateStatusInProgress,
  CandidateStatusStopped,
  CandidateStatusStopping,
  CandidateStatus'
  #-}

instance Prelude.FromText CandidateStatus where
  parser = CandidateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CandidateStatus where
  toText (CandidateStatus' x) = x

instance Prelude.Hashable CandidateStatus

instance Prelude.NFData CandidateStatus

instance Prelude.ToByteString CandidateStatus

instance Prelude.ToQuery CandidateStatus

instance Prelude.ToHeader CandidateStatus

instance Prelude.ToJSON CandidateStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CandidateStatus where
  parseJSON = Prelude.parseJSONText "CandidateStatus"
