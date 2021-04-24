{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Complete,
        Failed,
        Pending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AvailabilityMonitorTestStatus
  = AvailabilityMonitorTestStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Complete :: AvailabilityMonitorTestStatus
pattern Complete = AvailabilityMonitorTestStatus' "COMPLETE"

pattern Failed :: AvailabilityMonitorTestStatus
pattern Failed = AvailabilityMonitorTestStatus' "FAILED"

pattern Pending :: AvailabilityMonitorTestStatus
pattern Pending = AvailabilityMonitorTestStatus' "PENDING"

{-# COMPLETE
  Complete,
  Failed,
  Pending,
  AvailabilityMonitorTestStatus'
  #-}

instance FromText AvailabilityMonitorTestStatus where
  parser = (AvailabilityMonitorTestStatus' . mk) <$> takeText

instance ToText AvailabilityMonitorTestStatus where
  toText (AvailabilityMonitorTestStatus' ci) = original ci

instance Hashable AvailabilityMonitorTestStatus

instance NFData AvailabilityMonitorTestStatus

instance ToByteString AvailabilityMonitorTestStatus

instance ToQuery AvailabilityMonitorTestStatus

instance ToHeader AvailabilityMonitorTestStatus

instance FromJSON AvailabilityMonitorTestStatus where
  parseJSON = parseJSONText "AvailabilityMonitorTestStatus"
