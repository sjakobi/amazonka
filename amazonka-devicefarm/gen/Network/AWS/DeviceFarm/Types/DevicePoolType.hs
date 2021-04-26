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
-- Module      : Network.AWS.DeviceFarm.Types.DevicePoolType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DevicePoolType
  ( DevicePoolType
      ( ..,
        DevicePoolTypeCURATED,
        DevicePoolTypePRIVATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DevicePoolType = DevicePoolType'
  { fromDevicePoolType ::
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

pattern DevicePoolTypeCURATED :: DevicePoolType
pattern DevicePoolTypeCURATED = DevicePoolType' "CURATED"

pattern DevicePoolTypePRIVATE :: DevicePoolType
pattern DevicePoolTypePRIVATE = DevicePoolType' "PRIVATE"

{-# COMPLETE
  DevicePoolTypeCURATED,
  DevicePoolTypePRIVATE,
  DevicePoolType'
  #-}

instance Prelude.FromText DevicePoolType where
  parser = DevicePoolType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DevicePoolType where
  toText (DevicePoolType' x) = x

instance Prelude.Hashable DevicePoolType

instance Prelude.NFData DevicePoolType

instance Prelude.ToByteString DevicePoolType

instance Prelude.ToQuery DevicePoolType

instance Prelude.ToHeader DevicePoolType

instance Prelude.ToJSON DevicePoolType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DevicePoolType where
  parseJSON = Prelude.parseJSONText "DevicePoolType"
