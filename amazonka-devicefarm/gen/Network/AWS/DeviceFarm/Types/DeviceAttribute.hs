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
-- Module      : Network.AWS.DeviceFarm.Types.DeviceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DeviceAttribute
  ( DeviceAttribute
      ( ..,
        DeviceAttributeAPPIUMVERSION,
        DeviceAttributeARN,
        DeviceAttributeAVAILABILITY,
        DeviceAttributeFLEETTYPE,
        DeviceAttributeFORMFACTOR,
        DeviceAttributeINSTANCEARN,
        DeviceAttributeINSTANCELABELS,
        DeviceAttributeMANUFACTURER,
        DeviceAttributeMODEL,
        DeviceAttributeOSVERSION,
        DeviceAttributePLATFORM,
        DeviceAttributeREMOTEACCESSENABLED,
        DeviceAttributeREMOTEDEBUGENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceAttribute = DeviceAttribute'
  { fromDeviceAttribute ::
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

pattern DeviceAttributeAPPIUMVERSION :: DeviceAttribute
pattern DeviceAttributeAPPIUMVERSION = DeviceAttribute' "APPIUM_VERSION"

pattern DeviceAttributeARN :: DeviceAttribute
pattern DeviceAttributeARN = DeviceAttribute' "ARN"

pattern DeviceAttributeAVAILABILITY :: DeviceAttribute
pattern DeviceAttributeAVAILABILITY = DeviceAttribute' "AVAILABILITY"

pattern DeviceAttributeFLEETTYPE :: DeviceAttribute
pattern DeviceAttributeFLEETTYPE = DeviceAttribute' "FLEET_TYPE"

pattern DeviceAttributeFORMFACTOR :: DeviceAttribute
pattern DeviceAttributeFORMFACTOR = DeviceAttribute' "FORM_FACTOR"

pattern DeviceAttributeINSTANCEARN :: DeviceAttribute
pattern DeviceAttributeINSTANCEARN = DeviceAttribute' "INSTANCE_ARN"

pattern DeviceAttributeINSTANCELABELS :: DeviceAttribute
pattern DeviceAttributeINSTANCELABELS = DeviceAttribute' "INSTANCE_LABELS"

pattern DeviceAttributeMANUFACTURER :: DeviceAttribute
pattern DeviceAttributeMANUFACTURER = DeviceAttribute' "MANUFACTURER"

pattern DeviceAttributeMODEL :: DeviceAttribute
pattern DeviceAttributeMODEL = DeviceAttribute' "MODEL"

pattern DeviceAttributeOSVERSION :: DeviceAttribute
pattern DeviceAttributeOSVERSION = DeviceAttribute' "OS_VERSION"

pattern DeviceAttributePLATFORM :: DeviceAttribute
pattern DeviceAttributePLATFORM = DeviceAttribute' "PLATFORM"

pattern DeviceAttributeREMOTEACCESSENABLED :: DeviceAttribute
pattern DeviceAttributeREMOTEACCESSENABLED = DeviceAttribute' "REMOTE_ACCESS_ENABLED"

pattern DeviceAttributeREMOTEDEBUGENABLED :: DeviceAttribute
pattern DeviceAttributeREMOTEDEBUGENABLED = DeviceAttribute' "REMOTE_DEBUG_ENABLED"

{-# COMPLETE
  DeviceAttributeAPPIUMVERSION,
  DeviceAttributeARN,
  DeviceAttributeAVAILABILITY,
  DeviceAttributeFLEETTYPE,
  DeviceAttributeFORMFACTOR,
  DeviceAttributeINSTANCEARN,
  DeviceAttributeINSTANCELABELS,
  DeviceAttributeMANUFACTURER,
  DeviceAttributeMODEL,
  DeviceAttributeOSVERSION,
  DeviceAttributePLATFORM,
  DeviceAttributeREMOTEACCESSENABLED,
  DeviceAttributeREMOTEDEBUGENABLED,
  DeviceAttribute'
  #-}

instance Prelude.FromText DeviceAttribute where
  parser = DeviceAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceAttribute where
  toText (DeviceAttribute' x) = x

instance Prelude.Hashable DeviceAttribute

instance Prelude.NFData DeviceAttribute

instance Prelude.ToByteString DeviceAttribute

instance Prelude.ToQuery DeviceAttribute

instance Prelude.ToHeader DeviceAttribute

instance Prelude.ToJSON DeviceAttribute where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeviceAttribute where
  parseJSON = Prelude.parseJSONText "DeviceAttribute"
