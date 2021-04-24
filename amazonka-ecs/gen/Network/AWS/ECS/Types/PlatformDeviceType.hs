{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Gpu
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PlatformDeviceType
  = PlatformDeviceType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Gpu :: PlatformDeviceType
pattern Gpu = PlatformDeviceType' "GPU"

{-# COMPLETE
  Gpu,
  PlatformDeviceType'
  #-}

instance FromText PlatformDeviceType where
  parser = (PlatformDeviceType' . mk) <$> takeText

instance ToText PlatformDeviceType where
  toText (PlatformDeviceType' ci) = original ci

instance Hashable PlatformDeviceType

instance NFData PlatformDeviceType

instance ToByteString PlatformDeviceType

instance ToQuery PlatformDeviceType

instance ToHeader PlatformDeviceType

instance ToJSON PlatformDeviceType where
  toJSON = toJSONText
