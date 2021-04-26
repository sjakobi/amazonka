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
-- Module      : Network.AWS.AppStream.Types.FleetState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.FleetState
  ( FleetState
      ( ..,
        FleetStateRUNNING,
        FleetStateSTARTING,
        FleetStateSTOPPED,
        FleetStateSTOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FleetState = FleetState'
  { fromFleetState ::
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

pattern FleetStateRUNNING :: FleetState
pattern FleetStateRUNNING = FleetState' "RUNNING"

pattern FleetStateSTARTING :: FleetState
pattern FleetStateSTARTING = FleetState' "STARTING"

pattern FleetStateSTOPPED :: FleetState
pattern FleetStateSTOPPED = FleetState' "STOPPED"

pattern FleetStateSTOPPING :: FleetState
pattern FleetStateSTOPPING = FleetState' "STOPPING"

{-# COMPLETE
  FleetStateRUNNING,
  FleetStateSTARTING,
  FleetStateSTOPPED,
  FleetStateSTOPPING,
  FleetState'
  #-}

instance Prelude.FromText FleetState where
  parser = FleetState' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetState where
  toText (FleetState' x) = x

instance Prelude.Hashable FleetState

instance Prelude.NFData FleetState

instance Prelude.ToByteString FleetState

instance Prelude.ToQuery FleetState

instance Prelude.ToHeader FleetState

instance Prelude.FromJSON FleetState where
  parseJSON = Prelude.parseJSONText "FleetState"
