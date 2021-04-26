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
-- Module      : Network.AWS.DirectoryService.Types.DomainControllerStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DomainControllerStatus
  ( DomainControllerStatus
      ( ..,
        DomainControllerStatusActive,
        DomainControllerStatusCreating,
        DomainControllerStatusDeleted,
        DomainControllerStatusDeleting,
        DomainControllerStatusFailed,
        DomainControllerStatusImpaired,
        DomainControllerStatusRestoring
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DomainControllerStatus = DomainControllerStatus'
  { fromDomainControllerStatus ::
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

pattern DomainControllerStatusActive :: DomainControllerStatus
pattern DomainControllerStatusActive = DomainControllerStatus' "Active"

pattern DomainControllerStatusCreating :: DomainControllerStatus
pattern DomainControllerStatusCreating = DomainControllerStatus' "Creating"

pattern DomainControllerStatusDeleted :: DomainControllerStatus
pattern DomainControllerStatusDeleted = DomainControllerStatus' "Deleted"

pattern DomainControllerStatusDeleting :: DomainControllerStatus
pattern DomainControllerStatusDeleting = DomainControllerStatus' "Deleting"

pattern DomainControllerStatusFailed :: DomainControllerStatus
pattern DomainControllerStatusFailed = DomainControllerStatus' "Failed"

pattern DomainControllerStatusImpaired :: DomainControllerStatus
pattern DomainControllerStatusImpaired = DomainControllerStatus' "Impaired"

pattern DomainControllerStatusRestoring :: DomainControllerStatus
pattern DomainControllerStatusRestoring = DomainControllerStatus' "Restoring"

{-# COMPLETE
  DomainControllerStatusActive,
  DomainControllerStatusCreating,
  DomainControllerStatusDeleted,
  DomainControllerStatusDeleting,
  DomainControllerStatusFailed,
  DomainControllerStatusImpaired,
  DomainControllerStatusRestoring,
  DomainControllerStatus'
  #-}

instance Prelude.FromText DomainControllerStatus where
  parser = DomainControllerStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DomainControllerStatus where
  toText (DomainControllerStatus' x) = x

instance Prelude.Hashable DomainControllerStatus

instance Prelude.NFData DomainControllerStatus

instance Prelude.ToByteString DomainControllerStatus

instance Prelude.ToQuery DomainControllerStatus

instance Prelude.ToHeader DomainControllerStatus

instance Prelude.FromJSON DomainControllerStatus where
  parseJSON = Prelude.parseJSONText "DomainControllerStatus"
