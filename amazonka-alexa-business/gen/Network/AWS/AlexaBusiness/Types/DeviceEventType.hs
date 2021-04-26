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
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceEventType
  ( DeviceEventType
      ( ..,
        DeviceEventTypeCONNECTIONSTATUS,
        DeviceEventTypeDEVICESTATUS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceEventType = DeviceEventType'
  { fromDeviceEventType ::
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

pattern DeviceEventTypeCONNECTIONSTATUS :: DeviceEventType
pattern DeviceEventTypeCONNECTIONSTATUS = DeviceEventType' "CONNECTION_STATUS"

pattern DeviceEventTypeDEVICESTATUS :: DeviceEventType
pattern DeviceEventTypeDEVICESTATUS = DeviceEventType' "DEVICE_STATUS"

{-# COMPLETE
  DeviceEventTypeCONNECTIONSTATUS,
  DeviceEventTypeDEVICESTATUS,
  DeviceEventType'
  #-}

instance Prelude.FromText DeviceEventType where
  parser = DeviceEventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceEventType where
  toText (DeviceEventType' x) = x

instance Prelude.Hashable DeviceEventType

instance Prelude.NFData DeviceEventType

instance Prelude.ToByteString DeviceEventType

instance Prelude.ToQuery DeviceEventType

instance Prelude.ToHeader DeviceEventType

instance Prelude.ToJSON DeviceEventType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeviceEventType where
  parseJSON = Prelude.parseJSONText "DeviceEventType"
