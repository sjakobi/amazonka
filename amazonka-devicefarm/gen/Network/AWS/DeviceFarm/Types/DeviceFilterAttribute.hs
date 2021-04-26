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
-- Module      : Network.AWS.DeviceFarm.Types.DeviceFilterAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DeviceFilterAttribute
  ( DeviceFilterAttribute
      ( ..,
        DeviceFilterAttributeARN,
        DeviceFilterAttributeAVAILABILITY,
        DeviceFilterAttributeFLEETTYPE,
        DeviceFilterAttributeFORMFACTOR,
        DeviceFilterAttributeINSTANCEARN,
        DeviceFilterAttributeINSTANCELABELS,
        DeviceFilterAttributeMANUFACTURER,
        DeviceFilterAttributeMODEL,
        DeviceFilterAttributeOSVERSION,
        DeviceFilterAttributePLATFORM,
        DeviceFilterAttributeREMOTEACCESSENABLED,
        DeviceFilterAttributeREMOTEDEBUGENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceFilterAttribute = DeviceFilterAttribute'
  { fromDeviceFilterAttribute ::
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

pattern DeviceFilterAttributeARN :: DeviceFilterAttribute
pattern DeviceFilterAttributeARN = DeviceFilterAttribute' "ARN"

pattern DeviceFilterAttributeAVAILABILITY :: DeviceFilterAttribute
pattern DeviceFilterAttributeAVAILABILITY = DeviceFilterAttribute' "AVAILABILITY"

pattern DeviceFilterAttributeFLEETTYPE :: DeviceFilterAttribute
pattern DeviceFilterAttributeFLEETTYPE = DeviceFilterAttribute' "FLEET_TYPE"

pattern DeviceFilterAttributeFORMFACTOR :: DeviceFilterAttribute
pattern DeviceFilterAttributeFORMFACTOR = DeviceFilterAttribute' "FORM_FACTOR"

pattern DeviceFilterAttributeINSTANCEARN :: DeviceFilterAttribute
pattern DeviceFilterAttributeINSTANCEARN = DeviceFilterAttribute' "INSTANCE_ARN"

pattern DeviceFilterAttributeINSTANCELABELS :: DeviceFilterAttribute
pattern DeviceFilterAttributeINSTANCELABELS = DeviceFilterAttribute' "INSTANCE_LABELS"

pattern DeviceFilterAttributeMANUFACTURER :: DeviceFilterAttribute
pattern DeviceFilterAttributeMANUFACTURER = DeviceFilterAttribute' "MANUFACTURER"

pattern DeviceFilterAttributeMODEL :: DeviceFilterAttribute
pattern DeviceFilterAttributeMODEL = DeviceFilterAttribute' "MODEL"

pattern DeviceFilterAttributeOSVERSION :: DeviceFilterAttribute
pattern DeviceFilterAttributeOSVERSION = DeviceFilterAttribute' "OS_VERSION"

pattern DeviceFilterAttributePLATFORM :: DeviceFilterAttribute
pattern DeviceFilterAttributePLATFORM = DeviceFilterAttribute' "PLATFORM"

pattern DeviceFilterAttributeREMOTEACCESSENABLED :: DeviceFilterAttribute
pattern DeviceFilterAttributeREMOTEACCESSENABLED = DeviceFilterAttribute' "REMOTE_ACCESS_ENABLED"

pattern DeviceFilterAttributeREMOTEDEBUGENABLED :: DeviceFilterAttribute
pattern DeviceFilterAttributeREMOTEDEBUGENABLED = DeviceFilterAttribute' "REMOTE_DEBUG_ENABLED"

{-# COMPLETE
  DeviceFilterAttributeARN,
  DeviceFilterAttributeAVAILABILITY,
  DeviceFilterAttributeFLEETTYPE,
  DeviceFilterAttributeFORMFACTOR,
  DeviceFilterAttributeINSTANCEARN,
  DeviceFilterAttributeINSTANCELABELS,
  DeviceFilterAttributeMANUFACTURER,
  DeviceFilterAttributeMODEL,
  DeviceFilterAttributeOSVERSION,
  DeviceFilterAttributePLATFORM,
  DeviceFilterAttributeREMOTEACCESSENABLED,
  DeviceFilterAttributeREMOTEDEBUGENABLED,
  DeviceFilterAttribute'
  #-}

instance Prelude.FromText DeviceFilterAttribute where
  parser = DeviceFilterAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceFilterAttribute where
  toText (DeviceFilterAttribute' x) = x

instance Prelude.Hashable DeviceFilterAttribute

instance Prelude.NFData DeviceFilterAttribute

instance Prelude.ToByteString DeviceFilterAttribute

instance Prelude.ToQuery DeviceFilterAttribute

instance Prelude.ToHeader DeviceFilterAttribute

instance Prelude.ToJSON DeviceFilterAttribute where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeviceFilterAttribute where
  parseJSON = Prelude.parseJSONText "DeviceFilterAttribute"
