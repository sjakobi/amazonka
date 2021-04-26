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
-- Module      : Network.AWS.GameLift.Types.FleetAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.FleetAction
  ( FleetAction
      ( ..,
        FleetActionAUTOSCALING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FleetAction = FleetAction'
  { fromFleetAction ::
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

pattern FleetActionAUTOSCALING :: FleetAction
pattern FleetActionAUTOSCALING = FleetAction' "AUTO_SCALING"

{-# COMPLETE
  FleetActionAUTOSCALING,
  FleetAction'
  #-}

instance Prelude.FromText FleetAction where
  parser = FleetAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetAction where
  toText (FleetAction' x) = x

instance Prelude.Hashable FleetAction

instance Prelude.NFData FleetAction

instance Prelude.ToByteString FleetAction

instance Prelude.ToQuery FleetAction

instance Prelude.ToHeader FleetAction

instance Prelude.ToJSON FleetAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FleetAction where
  parseJSON = Prelude.parseJSONText "FleetAction"
