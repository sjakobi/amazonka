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
-- Module      : Network.AWS.StorageGateway.Types.AvailabilityMonitorTestStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.AvailabilityMonitorTestStatus
  ( AvailabilityMonitorTestStatus
      ( ..,
        AvailabilityMonitorTestStatusCOMPLETE,
        AvailabilityMonitorTestStatusFAILED,
        AvailabilityMonitorTestStatusPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AvailabilityMonitorTestStatus = AvailabilityMonitorTestStatus'
  { fromAvailabilityMonitorTestStatus ::
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

pattern AvailabilityMonitorTestStatusCOMPLETE :: AvailabilityMonitorTestStatus
pattern AvailabilityMonitorTestStatusCOMPLETE = AvailabilityMonitorTestStatus' "COMPLETE"

pattern AvailabilityMonitorTestStatusFAILED :: AvailabilityMonitorTestStatus
pattern AvailabilityMonitorTestStatusFAILED = AvailabilityMonitorTestStatus' "FAILED"

pattern AvailabilityMonitorTestStatusPENDING :: AvailabilityMonitorTestStatus
pattern AvailabilityMonitorTestStatusPENDING = AvailabilityMonitorTestStatus' "PENDING"

{-# COMPLETE
  AvailabilityMonitorTestStatusCOMPLETE,
  AvailabilityMonitorTestStatusFAILED,
  AvailabilityMonitorTestStatusPENDING,
  AvailabilityMonitorTestStatus'
  #-}

instance Prelude.FromText AvailabilityMonitorTestStatus where
  parser = AvailabilityMonitorTestStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AvailabilityMonitorTestStatus where
  toText (AvailabilityMonitorTestStatus' x) = x

instance Prelude.Hashable AvailabilityMonitorTestStatus

instance Prelude.NFData AvailabilityMonitorTestStatus

instance Prelude.ToByteString AvailabilityMonitorTestStatus

instance Prelude.ToQuery AvailabilityMonitorTestStatus

instance Prelude.ToHeader AvailabilityMonitorTestStatus

instance Prelude.FromJSON AvailabilityMonitorTestStatus where
  parseJSON = Prelude.parseJSONText "AvailabilityMonitorTestStatus"
