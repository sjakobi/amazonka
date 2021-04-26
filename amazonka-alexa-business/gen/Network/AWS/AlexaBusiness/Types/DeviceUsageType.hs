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
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceUsageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceUsageType
  ( DeviceUsageType
      ( ..,
        DeviceUsageTypeVOICE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceUsageType = DeviceUsageType'
  { fromDeviceUsageType ::
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

pattern DeviceUsageTypeVOICE :: DeviceUsageType
pattern DeviceUsageTypeVOICE = DeviceUsageType' "VOICE"

{-# COMPLETE
  DeviceUsageTypeVOICE,
  DeviceUsageType'
  #-}

instance Prelude.FromText DeviceUsageType where
  parser = DeviceUsageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceUsageType where
  toText (DeviceUsageType' x) = x

instance Prelude.Hashable DeviceUsageType

instance Prelude.NFData DeviceUsageType

instance Prelude.ToByteString DeviceUsageType

instance Prelude.ToQuery DeviceUsageType

instance Prelude.ToHeader DeviceUsageType

instance Prelude.ToJSON DeviceUsageType where
  toJSON = Prelude.toJSONText
