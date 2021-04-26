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
-- Module      : Network.AWS.EC2.Types.FleetActivityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetActivityStatus
  ( FleetActivityStatus
      ( ..,
        FleetActivityStatusError,
        FleetActivityStatusFulfilled,
        FleetActivityStatusPendingFulfillment,
        FleetActivityStatusPendingTermination
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FleetActivityStatus = FleetActivityStatus'
  { fromFleetActivityStatus ::
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

pattern FleetActivityStatusError :: FleetActivityStatus
pattern FleetActivityStatusError = FleetActivityStatus' "error"

pattern FleetActivityStatusFulfilled :: FleetActivityStatus
pattern FleetActivityStatusFulfilled = FleetActivityStatus' "fulfilled"

pattern FleetActivityStatusPendingFulfillment :: FleetActivityStatus
pattern FleetActivityStatusPendingFulfillment = FleetActivityStatus' "pending_fulfillment"

pattern FleetActivityStatusPendingTermination :: FleetActivityStatus
pattern FleetActivityStatusPendingTermination = FleetActivityStatus' "pending_termination"

{-# COMPLETE
  FleetActivityStatusError,
  FleetActivityStatusFulfilled,
  FleetActivityStatusPendingFulfillment,
  FleetActivityStatusPendingTermination,
  FleetActivityStatus'
  #-}

instance Prelude.FromText FleetActivityStatus where
  parser = FleetActivityStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetActivityStatus where
  toText (FleetActivityStatus' x) = x

instance Prelude.Hashable FleetActivityStatus

instance Prelude.NFData FleetActivityStatus

instance Prelude.ToByteString FleetActivityStatus

instance Prelude.ToQuery FleetActivityStatus

instance Prelude.ToHeader FleetActivityStatus

instance Prelude.FromXML FleetActivityStatus where
  parseXML = Prelude.parseXMLText "FleetActivityStatus"
