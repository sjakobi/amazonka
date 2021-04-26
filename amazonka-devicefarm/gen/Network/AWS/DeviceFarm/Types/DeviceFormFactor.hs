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
-- Module      : Network.AWS.DeviceFarm.Types.DeviceFormFactor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DeviceFormFactor
  ( DeviceFormFactor
      ( ..,
        DeviceFormFactorPHONE,
        DeviceFormFactorTABLET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceFormFactor = DeviceFormFactor'
  { fromDeviceFormFactor ::
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

pattern DeviceFormFactorPHONE :: DeviceFormFactor
pattern DeviceFormFactorPHONE = DeviceFormFactor' "PHONE"

pattern DeviceFormFactorTABLET :: DeviceFormFactor
pattern DeviceFormFactorTABLET = DeviceFormFactor' "TABLET"

{-# COMPLETE
  DeviceFormFactorPHONE,
  DeviceFormFactorTABLET,
  DeviceFormFactor'
  #-}

instance Prelude.FromText DeviceFormFactor where
  parser = DeviceFormFactor' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceFormFactor where
  toText (DeviceFormFactor' x) = x

instance Prelude.Hashable DeviceFormFactor

instance Prelude.NFData DeviceFormFactor

instance Prelude.ToByteString DeviceFormFactor

instance Prelude.ToQuery DeviceFormFactor

instance Prelude.ToHeader DeviceFormFactor

instance Prelude.FromJSON DeviceFormFactor where
  parseJSON = Prelude.parseJSONText "DeviceFormFactor"
