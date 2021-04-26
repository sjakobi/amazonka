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
-- Module      : Network.AWS.SageMaker.Types.DetailedAlgorithmStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DetailedAlgorithmStatus
  ( DetailedAlgorithmStatus
      ( ..,
        DetailedAlgorithmStatusCompleted,
        DetailedAlgorithmStatusFailed,
        DetailedAlgorithmStatusInProgress,
        DetailedAlgorithmStatusNotStarted
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DetailedAlgorithmStatus = DetailedAlgorithmStatus'
  { fromDetailedAlgorithmStatus ::
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

pattern DetailedAlgorithmStatusCompleted :: DetailedAlgorithmStatus
pattern DetailedAlgorithmStatusCompleted = DetailedAlgorithmStatus' "Completed"

pattern DetailedAlgorithmStatusFailed :: DetailedAlgorithmStatus
pattern DetailedAlgorithmStatusFailed = DetailedAlgorithmStatus' "Failed"

pattern DetailedAlgorithmStatusInProgress :: DetailedAlgorithmStatus
pattern DetailedAlgorithmStatusInProgress = DetailedAlgorithmStatus' "InProgress"

pattern DetailedAlgorithmStatusNotStarted :: DetailedAlgorithmStatus
pattern DetailedAlgorithmStatusNotStarted = DetailedAlgorithmStatus' "NotStarted"

{-# COMPLETE
  DetailedAlgorithmStatusCompleted,
  DetailedAlgorithmStatusFailed,
  DetailedAlgorithmStatusInProgress,
  DetailedAlgorithmStatusNotStarted,
  DetailedAlgorithmStatus'
  #-}

instance Prelude.FromText DetailedAlgorithmStatus where
  parser = DetailedAlgorithmStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DetailedAlgorithmStatus where
  toText (DetailedAlgorithmStatus' x) = x

instance Prelude.Hashable DetailedAlgorithmStatus

instance Prelude.NFData DetailedAlgorithmStatus

instance Prelude.ToByteString DetailedAlgorithmStatus

instance Prelude.ToQuery DetailedAlgorithmStatus

instance Prelude.ToHeader DetailedAlgorithmStatus

instance Prelude.FromJSON DetailedAlgorithmStatus where
  parseJSON = Prelude.parseJSONText "DetailedAlgorithmStatus"
