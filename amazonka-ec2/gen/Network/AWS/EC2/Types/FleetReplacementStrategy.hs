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
-- Module      : Network.AWS.EC2.Types.FleetReplacementStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetReplacementStrategy
  ( FleetReplacementStrategy
      ( ..,
        FleetReplacementStrategyLaunch
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FleetReplacementStrategy = FleetReplacementStrategy'
  { fromFleetReplacementStrategy ::
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

pattern FleetReplacementStrategyLaunch :: FleetReplacementStrategy
pattern FleetReplacementStrategyLaunch = FleetReplacementStrategy' "launch"

{-# COMPLETE
  FleetReplacementStrategyLaunch,
  FleetReplacementStrategy'
  #-}

instance Prelude.FromText FleetReplacementStrategy where
  parser = FleetReplacementStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetReplacementStrategy where
  toText (FleetReplacementStrategy' x) = x

instance Prelude.Hashable FleetReplacementStrategy

instance Prelude.NFData FleetReplacementStrategy

instance Prelude.ToByteString FleetReplacementStrategy

instance Prelude.ToQuery FleetReplacementStrategy

instance Prelude.ToHeader FleetReplacementStrategy

instance Prelude.FromXML FleetReplacementStrategy where
  parseXML = Prelude.parseXMLText "FleetReplacementStrategy"
