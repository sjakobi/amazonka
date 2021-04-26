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
-- Module      : Network.AWS.Snowball.Types.ShipmentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.ShipmentState
  ( ShipmentState
      ( ..,
        ShipmentStateRECEIVED,
        ShipmentStateRETURNED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShipmentState = ShipmentState'
  { fromShipmentState ::
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

pattern ShipmentStateRECEIVED :: ShipmentState
pattern ShipmentStateRECEIVED = ShipmentState' "RECEIVED"

pattern ShipmentStateRETURNED :: ShipmentState
pattern ShipmentStateRETURNED = ShipmentState' "RETURNED"

{-# COMPLETE
  ShipmentStateRECEIVED,
  ShipmentStateRETURNED,
  ShipmentState'
  #-}

instance Prelude.FromText ShipmentState where
  parser = ShipmentState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShipmentState where
  toText (ShipmentState' x) = x

instance Prelude.Hashable ShipmentState

instance Prelude.NFData ShipmentState

instance Prelude.ToByteString ShipmentState

instance Prelude.ToQuery ShipmentState

instance Prelude.ToHeader ShipmentState

instance Prelude.ToJSON ShipmentState where
  toJSON = Prelude.toJSONText
