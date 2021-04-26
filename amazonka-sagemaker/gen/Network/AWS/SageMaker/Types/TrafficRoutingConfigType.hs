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
-- Module      : Network.AWS.SageMaker.Types.TrafficRoutingConfigType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrafficRoutingConfigType
  ( TrafficRoutingConfigType
      ( ..,
        TrafficRoutingConfigTypeALLATONCE,
        TrafficRoutingConfigTypeCANARY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrafficRoutingConfigType = TrafficRoutingConfigType'
  { fromTrafficRoutingConfigType ::
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

pattern TrafficRoutingConfigTypeALLATONCE :: TrafficRoutingConfigType
pattern TrafficRoutingConfigTypeALLATONCE = TrafficRoutingConfigType' "ALL_AT_ONCE"

pattern TrafficRoutingConfigTypeCANARY :: TrafficRoutingConfigType
pattern TrafficRoutingConfigTypeCANARY = TrafficRoutingConfigType' "CANARY"

{-# COMPLETE
  TrafficRoutingConfigTypeALLATONCE,
  TrafficRoutingConfigTypeCANARY,
  TrafficRoutingConfigType'
  #-}

instance Prelude.FromText TrafficRoutingConfigType where
  parser = TrafficRoutingConfigType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrafficRoutingConfigType where
  toText (TrafficRoutingConfigType' x) = x

instance Prelude.Hashable TrafficRoutingConfigType

instance Prelude.NFData TrafficRoutingConfigType

instance Prelude.ToByteString TrafficRoutingConfigType

instance Prelude.ToQuery TrafficRoutingConfigType

instance Prelude.ToHeader TrafficRoutingConfigType

instance Prelude.ToJSON TrafficRoutingConfigType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TrafficRoutingConfigType where
  parseJSON = Prelude.parseJSONText "TrafficRoutingConfigType"
