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
-- Module      : Network.AWS.SageMaker.Types.DomainStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DomainStatus
  ( DomainStatus
      ( ..,
        DomainStatusDeleteFailed,
        DomainStatusDeleting,
        DomainStatusFailed,
        DomainStatusInService,
        DomainStatusPending,
        DomainStatusUpdateFailed,
        DomainStatusUpdating
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DomainStatus = DomainStatus'
  { fromDomainStatus ::
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

pattern DomainStatusDeleteFailed :: DomainStatus
pattern DomainStatusDeleteFailed = DomainStatus' "Delete_Failed"

pattern DomainStatusDeleting :: DomainStatus
pattern DomainStatusDeleting = DomainStatus' "Deleting"

pattern DomainStatusFailed :: DomainStatus
pattern DomainStatusFailed = DomainStatus' "Failed"

pattern DomainStatusInService :: DomainStatus
pattern DomainStatusInService = DomainStatus' "InService"

pattern DomainStatusPending :: DomainStatus
pattern DomainStatusPending = DomainStatus' "Pending"

pattern DomainStatusUpdateFailed :: DomainStatus
pattern DomainStatusUpdateFailed = DomainStatus' "Update_Failed"

pattern DomainStatusUpdating :: DomainStatus
pattern DomainStatusUpdating = DomainStatus' "Updating"

{-# COMPLETE
  DomainStatusDeleteFailed,
  DomainStatusDeleting,
  DomainStatusFailed,
  DomainStatusInService,
  DomainStatusPending,
  DomainStatusUpdateFailed,
  DomainStatusUpdating,
  DomainStatus'
  #-}

instance Prelude.FromText DomainStatus where
  parser = DomainStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DomainStatus where
  toText (DomainStatus' x) = x

instance Prelude.Hashable DomainStatus

instance Prelude.NFData DomainStatus

instance Prelude.ToByteString DomainStatus

instance Prelude.ToQuery DomainStatus

instance Prelude.ToHeader DomainStatus

instance Prelude.FromJSON DomainStatus where
  parseJSON = Prelude.parseJSONText "DomainStatus"
