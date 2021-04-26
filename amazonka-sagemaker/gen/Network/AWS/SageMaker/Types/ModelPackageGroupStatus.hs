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
-- Module      : Network.AWS.SageMaker.Types.ModelPackageGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageGroupStatus
  ( ModelPackageGroupStatus
      ( ..,
        ModelPackageGroupStatusCompleted,
        ModelPackageGroupStatusDeleteFailed,
        ModelPackageGroupStatusDeleting,
        ModelPackageGroupStatusFailed,
        ModelPackageGroupStatusInProgress,
        ModelPackageGroupStatusPending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModelPackageGroupStatus = ModelPackageGroupStatus'
  { fromModelPackageGroupStatus ::
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

pattern ModelPackageGroupStatusCompleted :: ModelPackageGroupStatus
pattern ModelPackageGroupStatusCompleted = ModelPackageGroupStatus' "Completed"

pattern ModelPackageGroupStatusDeleteFailed :: ModelPackageGroupStatus
pattern ModelPackageGroupStatusDeleteFailed = ModelPackageGroupStatus' "DeleteFailed"

pattern ModelPackageGroupStatusDeleting :: ModelPackageGroupStatus
pattern ModelPackageGroupStatusDeleting = ModelPackageGroupStatus' "Deleting"

pattern ModelPackageGroupStatusFailed :: ModelPackageGroupStatus
pattern ModelPackageGroupStatusFailed = ModelPackageGroupStatus' "Failed"

pattern ModelPackageGroupStatusInProgress :: ModelPackageGroupStatus
pattern ModelPackageGroupStatusInProgress = ModelPackageGroupStatus' "InProgress"

pattern ModelPackageGroupStatusPending :: ModelPackageGroupStatus
pattern ModelPackageGroupStatusPending = ModelPackageGroupStatus' "Pending"

{-# COMPLETE
  ModelPackageGroupStatusCompleted,
  ModelPackageGroupStatusDeleteFailed,
  ModelPackageGroupStatusDeleting,
  ModelPackageGroupStatusFailed,
  ModelPackageGroupStatusInProgress,
  ModelPackageGroupStatusPending,
  ModelPackageGroupStatus'
  #-}

instance Prelude.FromText ModelPackageGroupStatus where
  parser = ModelPackageGroupStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModelPackageGroupStatus where
  toText (ModelPackageGroupStatus' x) = x

instance Prelude.Hashable ModelPackageGroupStatus

instance Prelude.NFData ModelPackageGroupStatus

instance Prelude.ToByteString ModelPackageGroupStatus

instance Prelude.ToQuery ModelPackageGroupStatus

instance Prelude.ToHeader ModelPackageGroupStatus

instance Prelude.FromJSON ModelPackageGroupStatus where
  parseJSON = Prelude.parseJSONText "ModelPackageGroupStatus"
