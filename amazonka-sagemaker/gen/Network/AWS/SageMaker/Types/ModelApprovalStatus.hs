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
-- Module      : Network.AWS.SageMaker.Types.ModelApprovalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelApprovalStatus
  ( ModelApprovalStatus
      ( ..,
        ModelApprovalStatusApproved,
        ModelApprovalStatusPendingManualApproval,
        ModelApprovalStatusRejected
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModelApprovalStatus = ModelApprovalStatus'
  { fromModelApprovalStatus ::
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

pattern ModelApprovalStatusApproved :: ModelApprovalStatus
pattern ModelApprovalStatusApproved = ModelApprovalStatus' "Approved"

pattern ModelApprovalStatusPendingManualApproval :: ModelApprovalStatus
pattern ModelApprovalStatusPendingManualApproval = ModelApprovalStatus' "PendingManualApproval"

pattern ModelApprovalStatusRejected :: ModelApprovalStatus
pattern ModelApprovalStatusRejected = ModelApprovalStatus' "Rejected"

{-# COMPLETE
  ModelApprovalStatusApproved,
  ModelApprovalStatusPendingManualApproval,
  ModelApprovalStatusRejected,
  ModelApprovalStatus'
  #-}

instance Prelude.FromText ModelApprovalStatus where
  parser = ModelApprovalStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModelApprovalStatus where
  toText (ModelApprovalStatus' x) = x

instance Prelude.Hashable ModelApprovalStatus

instance Prelude.NFData ModelApprovalStatus

instance Prelude.ToByteString ModelApprovalStatus

instance Prelude.ToQuery ModelApprovalStatus

instance Prelude.ToHeader ModelApprovalStatus

instance Prelude.ToJSON ModelApprovalStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ModelApprovalStatus where
  parseJSON = Prelude.parseJSONText "ModelApprovalStatus"
