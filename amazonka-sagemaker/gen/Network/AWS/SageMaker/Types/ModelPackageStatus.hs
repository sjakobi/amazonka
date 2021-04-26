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
-- Module      : Network.AWS.SageMaker.Types.ModelPackageStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageStatus
  ( ModelPackageStatus
      ( ..,
        ModelPackageStatusCompleted,
        ModelPackageStatusDeleting,
        ModelPackageStatusFailed,
        ModelPackageStatusInProgress,
        ModelPackageStatusPending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModelPackageStatus = ModelPackageStatus'
  { fromModelPackageStatus ::
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

pattern ModelPackageStatusCompleted :: ModelPackageStatus
pattern ModelPackageStatusCompleted = ModelPackageStatus' "Completed"

pattern ModelPackageStatusDeleting :: ModelPackageStatus
pattern ModelPackageStatusDeleting = ModelPackageStatus' "Deleting"

pattern ModelPackageStatusFailed :: ModelPackageStatus
pattern ModelPackageStatusFailed = ModelPackageStatus' "Failed"

pattern ModelPackageStatusInProgress :: ModelPackageStatus
pattern ModelPackageStatusInProgress = ModelPackageStatus' "InProgress"

pattern ModelPackageStatusPending :: ModelPackageStatus
pattern ModelPackageStatusPending = ModelPackageStatus' "Pending"

{-# COMPLETE
  ModelPackageStatusCompleted,
  ModelPackageStatusDeleting,
  ModelPackageStatusFailed,
  ModelPackageStatusInProgress,
  ModelPackageStatusPending,
  ModelPackageStatus'
  #-}

instance Prelude.FromText ModelPackageStatus where
  parser = ModelPackageStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModelPackageStatus where
  toText (ModelPackageStatus' x) = x

instance Prelude.Hashable ModelPackageStatus

instance Prelude.NFData ModelPackageStatus

instance Prelude.ToByteString ModelPackageStatus

instance Prelude.ToQuery ModelPackageStatus

instance Prelude.ToHeader ModelPackageStatus

instance Prelude.FromJSON ModelPackageStatus where
  parseJSON = Prelude.parseJSONText "ModelPackageStatus"
