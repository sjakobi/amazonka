{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        DPTCurated,
        DPTPrivate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DevicePoolType = DevicePoolType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DPTCurated :: DevicePoolType
pattern DPTCurated = DevicePoolType' "CURATED"

pattern DPTPrivate :: DevicePoolType
pattern DPTPrivate = DevicePoolType' "PRIVATE"

{-# COMPLETE
  DPTCurated,
  DPTPrivate,
  DevicePoolType'
  #-}

instance FromText DevicePoolType where
  parser = (DevicePoolType' . mk) <$> takeText

instance ToText DevicePoolType where
  toText (DevicePoolType' ci) = original ci

instance Hashable DevicePoolType

instance NFData DevicePoolType

instance ToByteString DevicePoolType

instance ToQuery DevicePoolType

instance ToHeader DevicePoolType

instance ToJSON DevicePoolType where
  toJSON = toJSONText

instance FromJSON DevicePoolType where
  parseJSON = parseJSONText "DevicePoolType"
