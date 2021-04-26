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
-- Module      : Network.AWS.DeviceFarm.Types.DevicePlatform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DevicePlatform
  ( DevicePlatform
      ( ..,
        DevicePlatformANDROID,
        DevicePlatformIOS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DevicePlatform = DevicePlatform'
  { fromDevicePlatform ::
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

pattern DevicePlatformANDROID :: DevicePlatform
pattern DevicePlatformANDROID = DevicePlatform' "ANDROID"

pattern DevicePlatformIOS :: DevicePlatform
pattern DevicePlatformIOS = DevicePlatform' "IOS"

{-# COMPLETE
  DevicePlatformANDROID,
  DevicePlatformIOS,
  DevicePlatform'
  #-}

instance Prelude.FromText DevicePlatform where
  parser = DevicePlatform' Prelude.<$> Prelude.takeText

instance Prelude.ToText DevicePlatform where
  toText (DevicePlatform' x) = x

instance Prelude.Hashable DevicePlatform

instance Prelude.NFData DevicePlatform

instance Prelude.ToByteString DevicePlatform

instance Prelude.ToQuery DevicePlatform

instance Prelude.ToHeader DevicePlatform

instance Prelude.FromJSON DevicePlatform where
  parseJSON = Prelude.parseJSONText "DevicePlatform"
