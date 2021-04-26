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
-- Module      : Network.AWS.SageMaker.Types.AlgorithmStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AlgorithmStatus
  ( AlgorithmStatus
      ( ..,
        AlgorithmStatusCompleted,
        AlgorithmStatusDeleting,
        AlgorithmStatusFailed,
        AlgorithmStatusInProgress,
        AlgorithmStatusPending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AlgorithmStatus = AlgorithmStatus'
  { fromAlgorithmStatus ::
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

pattern AlgorithmStatusCompleted :: AlgorithmStatus
pattern AlgorithmStatusCompleted = AlgorithmStatus' "Completed"

pattern AlgorithmStatusDeleting :: AlgorithmStatus
pattern AlgorithmStatusDeleting = AlgorithmStatus' "Deleting"

pattern AlgorithmStatusFailed :: AlgorithmStatus
pattern AlgorithmStatusFailed = AlgorithmStatus' "Failed"

pattern AlgorithmStatusInProgress :: AlgorithmStatus
pattern AlgorithmStatusInProgress = AlgorithmStatus' "InProgress"

pattern AlgorithmStatusPending :: AlgorithmStatus
pattern AlgorithmStatusPending = AlgorithmStatus' "Pending"

{-# COMPLETE
  AlgorithmStatusCompleted,
  AlgorithmStatusDeleting,
  AlgorithmStatusFailed,
  AlgorithmStatusInProgress,
  AlgorithmStatusPending,
  AlgorithmStatus'
  #-}

instance Prelude.FromText AlgorithmStatus where
  parser = AlgorithmStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AlgorithmStatus where
  toText (AlgorithmStatus' x) = x

instance Prelude.Hashable AlgorithmStatus

instance Prelude.NFData AlgorithmStatus

instance Prelude.ToByteString AlgorithmStatus

instance Prelude.ToQuery AlgorithmStatus

instance Prelude.ToHeader AlgorithmStatus

instance Prelude.FromJSON AlgorithmStatus where
  parseJSON = Prelude.parseJSONText "AlgorithmStatus"
