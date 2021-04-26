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
-- Module      : Network.AWS.DeviceFarm.Types.DeviceAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DeviceAvailability
  ( DeviceAvailability
      ( ..,
        DeviceAvailabilityAVAILABLE,
        DeviceAvailabilityBUSY,
        DeviceAvailabilityHIGHLYAVAILABLE,
        DeviceAvailabilityTEMPORARYNOTAVAILABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceAvailability = DeviceAvailability'
  { fromDeviceAvailability ::
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

pattern DeviceAvailabilityAVAILABLE :: DeviceAvailability
pattern DeviceAvailabilityAVAILABLE = DeviceAvailability' "AVAILABLE"

pattern DeviceAvailabilityBUSY :: DeviceAvailability
pattern DeviceAvailabilityBUSY = DeviceAvailability' "BUSY"

pattern DeviceAvailabilityHIGHLYAVAILABLE :: DeviceAvailability
pattern DeviceAvailabilityHIGHLYAVAILABLE = DeviceAvailability' "HIGHLY_AVAILABLE"

pattern DeviceAvailabilityTEMPORARYNOTAVAILABLE :: DeviceAvailability
pattern DeviceAvailabilityTEMPORARYNOTAVAILABLE = DeviceAvailability' "TEMPORARY_NOT_AVAILABLE"

{-# COMPLETE
  DeviceAvailabilityAVAILABLE,
  DeviceAvailabilityBUSY,
  DeviceAvailabilityHIGHLYAVAILABLE,
  DeviceAvailabilityTEMPORARYNOTAVAILABLE,
  DeviceAvailability'
  #-}

instance Prelude.FromText DeviceAvailability where
  parser = DeviceAvailability' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceAvailability where
  toText (DeviceAvailability' x) = x

instance Prelude.Hashable DeviceAvailability

instance Prelude.NFData DeviceAvailability

instance Prelude.ToByteString DeviceAvailability

instance Prelude.ToQuery DeviceAvailability

instance Prelude.ToHeader DeviceAvailability

instance Prelude.FromJSON DeviceAvailability where
  parseJSON = Prelude.parseJSONText "DeviceAvailability"
