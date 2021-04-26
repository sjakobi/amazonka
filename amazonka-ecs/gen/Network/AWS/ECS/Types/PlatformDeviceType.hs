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
-- Module      : Network.AWS.ECS.Types.PlatformDeviceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PlatformDeviceType
  ( PlatformDeviceType
      ( ..,
        PlatformDeviceTypeGPU
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlatformDeviceType = PlatformDeviceType'
  { fromPlatformDeviceType ::
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

pattern PlatformDeviceTypeGPU :: PlatformDeviceType
pattern PlatformDeviceTypeGPU = PlatformDeviceType' "GPU"

{-# COMPLETE
  PlatformDeviceTypeGPU,
  PlatformDeviceType'
  #-}

instance Prelude.FromText PlatformDeviceType where
  parser = PlatformDeviceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlatformDeviceType where
  toText (PlatformDeviceType' x) = x

instance Prelude.Hashable PlatformDeviceType

instance Prelude.NFData PlatformDeviceType

instance Prelude.ToByteString PlatformDeviceType

instance Prelude.ToQuery PlatformDeviceType

instance Prelude.ToHeader PlatformDeviceType

instance Prelude.ToJSON PlatformDeviceType where
  toJSON = Prelude.toJSONText
