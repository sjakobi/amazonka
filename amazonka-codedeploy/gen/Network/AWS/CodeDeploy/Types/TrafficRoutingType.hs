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
-- Module      : Network.AWS.CodeDeploy.Types.TrafficRoutingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TrafficRoutingType
  ( TrafficRoutingType
      ( ..,
        TrafficRoutingTypeAllAtOnce,
        TrafficRoutingTypeTimeBasedCanary,
        TrafficRoutingTypeTimeBasedLinear
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrafficRoutingType = TrafficRoutingType'
  { fromTrafficRoutingType ::
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

pattern TrafficRoutingTypeAllAtOnce :: TrafficRoutingType
pattern TrafficRoutingTypeAllAtOnce = TrafficRoutingType' "AllAtOnce"

pattern TrafficRoutingTypeTimeBasedCanary :: TrafficRoutingType
pattern TrafficRoutingTypeTimeBasedCanary = TrafficRoutingType' "TimeBasedCanary"

pattern TrafficRoutingTypeTimeBasedLinear :: TrafficRoutingType
pattern TrafficRoutingTypeTimeBasedLinear = TrafficRoutingType' "TimeBasedLinear"

{-# COMPLETE
  TrafficRoutingTypeAllAtOnce,
  TrafficRoutingTypeTimeBasedCanary,
  TrafficRoutingTypeTimeBasedLinear,
  TrafficRoutingType'
  #-}

instance Prelude.FromText TrafficRoutingType where
  parser = TrafficRoutingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrafficRoutingType where
  toText (TrafficRoutingType' x) = x

instance Prelude.Hashable TrafficRoutingType

instance Prelude.NFData TrafficRoutingType

instance Prelude.ToByteString TrafficRoutingType

instance Prelude.ToQuery TrafficRoutingType

instance Prelude.ToHeader TrafficRoutingType

instance Prelude.ToJSON TrafficRoutingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TrafficRoutingType where
  parseJSON = Prelude.parseJSONText "TrafficRoutingType"
