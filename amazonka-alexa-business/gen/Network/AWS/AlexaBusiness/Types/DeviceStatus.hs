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
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceStatus
  ( DeviceStatus
      ( ..,
        DeviceStatusDEREGISTERED,
        DeviceStatusFAILED,
        DeviceStatusPENDING,
        DeviceStatusREADY,
        DeviceStatusWASOFFLINE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceStatus = DeviceStatus'
  { fromDeviceStatus ::
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

pattern DeviceStatusDEREGISTERED :: DeviceStatus
pattern DeviceStatusDEREGISTERED = DeviceStatus' "DEREGISTERED"

pattern DeviceStatusFAILED :: DeviceStatus
pattern DeviceStatusFAILED = DeviceStatus' "FAILED"

pattern DeviceStatusPENDING :: DeviceStatus
pattern DeviceStatusPENDING = DeviceStatus' "PENDING"

pattern DeviceStatusREADY :: DeviceStatus
pattern DeviceStatusREADY = DeviceStatus' "READY"

pattern DeviceStatusWASOFFLINE :: DeviceStatus
pattern DeviceStatusWASOFFLINE = DeviceStatus' "WAS_OFFLINE"

{-# COMPLETE
  DeviceStatusDEREGISTERED,
  DeviceStatusFAILED,
  DeviceStatusPENDING,
  DeviceStatusREADY,
  DeviceStatusWASOFFLINE,
  DeviceStatus'
  #-}

instance Prelude.FromText DeviceStatus where
  parser = DeviceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceStatus where
  toText (DeviceStatus' x) = x

instance Prelude.Hashable DeviceStatus

instance Prelude.NFData DeviceStatus

instance Prelude.ToByteString DeviceStatus

instance Prelude.ToQuery DeviceStatus

instance Prelude.ToHeader DeviceStatus

instance Prelude.FromJSON DeviceStatus where
  parseJSON = Prelude.parseJSONText "DeviceStatus"
