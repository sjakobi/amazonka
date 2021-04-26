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
-- Module      : Network.AWS.GameLift.Types.FleetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.FleetStatus
  ( FleetStatus
      ( ..,
        FleetStatusACTIVATING,
        FleetStatusACTIVE,
        FleetStatusBUILDING,
        FleetStatusDELETING,
        FleetStatusDOWNLOADING,
        FleetStatusERROR,
        FleetStatusNEW,
        FleetStatusTERMINATED,
        FleetStatusVALIDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FleetStatus = FleetStatus'
  { fromFleetStatus ::
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

pattern FleetStatusACTIVATING :: FleetStatus
pattern FleetStatusACTIVATING = FleetStatus' "ACTIVATING"

pattern FleetStatusACTIVE :: FleetStatus
pattern FleetStatusACTIVE = FleetStatus' "ACTIVE"

pattern FleetStatusBUILDING :: FleetStatus
pattern FleetStatusBUILDING = FleetStatus' "BUILDING"

pattern FleetStatusDELETING :: FleetStatus
pattern FleetStatusDELETING = FleetStatus' "DELETING"

pattern FleetStatusDOWNLOADING :: FleetStatus
pattern FleetStatusDOWNLOADING = FleetStatus' "DOWNLOADING"

pattern FleetStatusERROR :: FleetStatus
pattern FleetStatusERROR = FleetStatus' "ERROR"

pattern FleetStatusNEW :: FleetStatus
pattern FleetStatusNEW = FleetStatus' "NEW"

pattern FleetStatusTERMINATED :: FleetStatus
pattern FleetStatusTERMINATED = FleetStatus' "TERMINATED"

pattern FleetStatusVALIDATING :: FleetStatus
pattern FleetStatusVALIDATING = FleetStatus' "VALIDATING"

{-# COMPLETE
  FleetStatusACTIVATING,
  FleetStatusACTIVE,
  FleetStatusBUILDING,
  FleetStatusDELETING,
  FleetStatusDOWNLOADING,
  FleetStatusERROR,
  FleetStatusNEW,
  FleetStatusTERMINATED,
  FleetStatusVALIDATING,
  FleetStatus'
  #-}

instance Prelude.FromText FleetStatus where
  parser = FleetStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetStatus where
  toText (FleetStatus' x) = x

instance Prelude.Hashable FleetStatus

instance Prelude.NFData FleetStatus

instance Prelude.ToByteString FleetStatus

instance Prelude.ToQuery FleetStatus

instance Prelude.ToHeader FleetStatus

instance Prelude.FromJSON FleetStatus where
  parseJSON = Prelude.parseJSONText "FleetStatus"
