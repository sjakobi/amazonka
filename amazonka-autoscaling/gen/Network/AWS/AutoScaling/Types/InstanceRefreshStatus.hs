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
-- Module      : Network.AWS.AutoScaling.Types.InstanceRefreshStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.InstanceRefreshStatus
  ( InstanceRefreshStatus
      ( ..,
        InstanceRefreshStatusCancelled,
        InstanceRefreshStatusCancelling,
        InstanceRefreshStatusFailed,
        InstanceRefreshStatusInProgress,
        InstanceRefreshStatusPending,
        InstanceRefreshStatusSuccessful
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceRefreshStatus = InstanceRefreshStatus'
  { fromInstanceRefreshStatus ::
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

pattern InstanceRefreshStatusCancelled :: InstanceRefreshStatus
pattern InstanceRefreshStatusCancelled = InstanceRefreshStatus' "Cancelled"

pattern InstanceRefreshStatusCancelling :: InstanceRefreshStatus
pattern InstanceRefreshStatusCancelling = InstanceRefreshStatus' "Cancelling"

pattern InstanceRefreshStatusFailed :: InstanceRefreshStatus
pattern InstanceRefreshStatusFailed = InstanceRefreshStatus' "Failed"

pattern InstanceRefreshStatusInProgress :: InstanceRefreshStatus
pattern InstanceRefreshStatusInProgress = InstanceRefreshStatus' "InProgress"

pattern InstanceRefreshStatusPending :: InstanceRefreshStatus
pattern InstanceRefreshStatusPending = InstanceRefreshStatus' "Pending"

pattern InstanceRefreshStatusSuccessful :: InstanceRefreshStatus
pattern InstanceRefreshStatusSuccessful = InstanceRefreshStatus' "Successful"

{-# COMPLETE
  InstanceRefreshStatusCancelled,
  InstanceRefreshStatusCancelling,
  InstanceRefreshStatusFailed,
  InstanceRefreshStatusInProgress,
  InstanceRefreshStatusPending,
  InstanceRefreshStatusSuccessful,
  InstanceRefreshStatus'
  #-}

instance Prelude.FromText InstanceRefreshStatus where
  parser = InstanceRefreshStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceRefreshStatus where
  toText (InstanceRefreshStatus' x) = x

instance Prelude.Hashable InstanceRefreshStatus

instance Prelude.NFData InstanceRefreshStatus

instance Prelude.ToByteString InstanceRefreshStatus

instance Prelude.ToQuery InstanceRefreshStatus

instance Prelude.ToHeader InstanceRefreshStatus

instance Prelude.FromXML InstanceRefreshStatus where
  parseXML = Prelude.parseXMLText "InstanceRefreshStatus"
