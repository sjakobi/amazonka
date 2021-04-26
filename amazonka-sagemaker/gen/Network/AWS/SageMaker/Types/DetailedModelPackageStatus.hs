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
-- Module      : Network.AWS.SageMaker.Types.DetailedModelPackageStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DetailedModelPackageStatus
  ( DetailedModelPackageStatus
      ( ..,
        DetailedModelPackageStatusCompleted,
        DetailedModelPackageStatusFailed,
        DetailedModelPackageStatusInProgress,
        DetailedModelPackageStatusNotStarted
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DetailedModelPackageStatus = DetailedModelPackageStatus'
  { fromDetailedModelPackageStatus ::
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

pattern DetailedModelPackageStatusCompleted :: DetailedModelPackageStatus
pattern DetailedModelPackageStatusCompleted = DetailedModelPackageStatus' "Completed"

pattern DetailedModelPackageStatusFailed :: DetailedModelPackageStatus
pattern DetailedModelPackageStatusFailed = DetailedModelPackageStatus' "Failed"

pattern DetailedModelPackageStatusInProgress :: DetailedModelPackageStatus
pattern DetailedModelPackageStatusInProgress = DetailedModelPackageStatus' "InProgress"

pattern DetailedModelPackageStatusNotStarted :: DetailedModelPackageStatus
pattern DetailedModelPackageStatusNotStarted = DetailedModelPackageStatus' "NotStarted"

{-# COMPLETE
  DetailedModelPackageStatusCompleted,
  DetailedModelPackageStatusFailed,
  DetailedModelPackageStatusInProgress,
  DetailedModelPackageStatusNotStarted,
  DetailedModelPackageStatus'
  #-}

instance Prelude.FromText DetailedModelPackageStatus where
  parser = DetailedModelPackageStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DetailedModelPackageStatus where
  toText (DetailedModelPackageStatus' x) = x

instance Prelude.Hashable DetailedModelPackageStatus

instance Prelude.NFData DetailedModelPackageStatus

instance Prelude.ToByteString DetailedModelPackageStatus

instance Prelude.ToQuery DetailedModelPackageStatus

instance Prelude.ToHeader DetailedModelPackageStatus

instance Prelude.FromJSON DetailedModelPackageStatus where
  parseJSON = Prelude.parseJSONText "DetailedModelPackageStatus"
