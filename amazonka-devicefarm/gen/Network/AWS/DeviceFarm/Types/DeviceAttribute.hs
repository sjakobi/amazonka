{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ARN,
        AppiumVersion,
        Availability,
        FleetType,
        FormFactor,
        InstanceARN,
        InstanceLabels,
        Manufacturer,
        Model,
        OSVersion,
        Platform,
        RemoteAccessEnabled,
        RemoteDebugEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeviceAttribute = DeviceAttribute' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ARN :: DeviceAttribute
pattern ARN = DeviceAttribute' "ARN"

pattern AppiumVersion :: DeviceAttribute
pattern AppiumVersion = DeviceAttribute' "APPIUM_VERSION"

pattern Availability :: DeviceAttribute
pattern Availability = DeviceAttribute' "AVAILABILITY"

pattern FleetType :: DeviceAttribute
pattern FleetType = DeviceAttribute' "FLEET_TYPE"

pattern FormFactor :: DeviceAttribute
pattern FormFactor = DeviceAttribute' "FORM_FACTOR"

pattern InstanceARN :: DeviceAttribute
pattern InstanceARN = DeviceAttribute' "INSTANCE_ARN"

pattern InstanceLabels :: DeviceAttribute
pattern InstanceLabels = DeviceAttribute' "INSTANCE_LABELS"

pattern Manufacturer :: DeviceAttribute
pattern Manufacturer = DeviceAttribute' "MANUFACTURER"

pattern Model :: DeviceAttribute
pattern Model = DeviceAttribute' "MODEL"

pattern OSVersion :: DeviceAttribute
pattern OSVersion = DeviceAttribute' "OS_VERSION"

pattern Platform :: DeviceAttribute
pattern Platform = DeviceAttribute' "PLATFORM"

pattern RemoteAccessEnabled :: DeviceAttribute
pattern RemoteAccessEnabled = DeviceAttribute' "REMOTE_ACCESS_ENABLED"

pattern RemoteDebugEnabled :: DeviceAttribute
pattern RemoteDebugEnabled = DeviceAttribute' "REMOTE_DEBUG_ENABLED"

{-# COMPLETE
  ARN,
  AppiumVersion,
  Availability,
  FleetType,
  FormFactor,
  InstanceARN,
  InstanceLabels,
  Manufacturer,
  Model,
  OSVersion,
  Platform,
  RemoteAccessEnabled,
  RemoteDebugEnabled,
  DeviceAttribute'
  #-}

instance FromText DeviceAttribute where
  parser = (DeviceAttribute' . mk) <$> takeText

instance ToText DeviceAttribute where
  toText (DeviceAttribute' ci) = original ci

instance Hashable DeviceAttribute

instance NFData DeviceAttribute

instance ToByteString DeviceAttribute

instance ToQuery DeviceAttribute

instance ToHeader DeviceAttribute

instance ToJSON DeviceAttribute where
  toJSON = toJSONText

instance FromJSON DeviceAttribute where
  parseJSON = parseJSONText "DeviceAttribute"
