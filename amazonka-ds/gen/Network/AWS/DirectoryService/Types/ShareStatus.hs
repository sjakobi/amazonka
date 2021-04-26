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
-- Module      : Network.AWS.DirectoryService.Types.ShareStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.ShareStatus
  ( ShareStatus
      ( ..,
        ShareStatusDeleted,
        ShareStatusDeleting,
        ShareStatusPendingAcceptance,
        ShareStatusRejectFailed,
        ShareStatusRejected,
        ShareStatusRejecting,
        ShareStatusShareFailed,
        ShareStatusShared,
        ShareStatusSharing
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShareStatus = ShareStatus'
  { fromShareStatus ::
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

pattern ShareStatusDeleted :: ShareStatus
pattern ShareStatusDeleted = ShareStatus' "Deleted"

pattern ShareStatusDeleting :: ShareStatus
pattern ShareStatusDeleting = ShareStatus' "Deleting"

pattern ShareStatusPendingAcceptance :: ShareStatus
pattern ShareStatusPendingAcceptance = ShareStatus' "PendingAcceptance"

pattern ShareStatusRejectFailed :: ShareStatus
pattern ShareStatusRejectFailed = ShareStatus' "RejectFailed"

pattern ShareStatusRejected :: ShareStatus
pattern ShareStatusRejected = ShareStatus' "Rejected"

pattern ShareStatusRejecting :: ShareStatus
pattern ShareStatusRejecting = ShareStatus' "Rejecting"

pattern ShareStatusShareFailed :: ShareStatus
pattern ShareStatusShareFailed = ShareStatus' "ShareFailed"

pattern ShareStatusShared :: ShareStatus
pattern ShareStatusShared = ShareStatus' "Shared"

pattern ShareStatusSharing :: ShareStatus
pattern ShareStatusSharing = ShareStatus' "Sharing"

{-# COMPLETE
  ShareStatusDeleted,
  ShareStatusDeleting,
  ShareStatusPendingAcceptance,
  ShareStatusRejectFailed,
  ShareStatusRejected,
  ShareStatusRejecting,
  ShareStatusShareFailed,
  ShareStatusShared,
  ShareStatusSharing,
  ShareStatus'
  #-}

instance Prelude.FromText ShareStatus where
  parser = ShareStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShareStatus where
  toText (ShareStatus' x) = x

instance Prelude.Hashable ShareStatus

instance Prelude.NFData ShareStatus

instance Prelude.ToByteString ShareStatus

instance Prelude.ToQuery ShareStatus

instance Prelude.ToHeader ShareStatus

instance Prelude.FromJSON ShareStatus where
  parseJSON = Prelude.parseJSONText "ShareStatus"
