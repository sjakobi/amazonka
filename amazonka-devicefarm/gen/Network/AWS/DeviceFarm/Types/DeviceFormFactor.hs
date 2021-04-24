{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Phone,
        Tablet
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeviceFormFactor = DeviceFormFactor' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Phone :: DeviceFormFactor
pattern Phone = DeviceFormFactor' "PHONE"

pattern Tablet :: DeviceFormFactor
pattern Tablet = DeviceFormFactor' "TABLET"

{-# COMPLETE
  Phone,
  Tablet,
  DeviceFormFactor'
  #-}

instance FromText DeviceFormFactor where
  parser = (DeviceFormFactor' . mk) <$> takeText

instance ToText DeviceFormFactor where
  toText (DeviceFormFactor' ci) = original ci

instance Hashable DeviceFormFactor

instance NFData DeviceFormFactor

instance ToByteString DeviceFormFactor

instance ToQuery DeviceFormFactor

instance ToHeader DeviceFormFactor

instance FromJSON DeviceFormFactor where
  parseJSON = parseJSONText "DeviceFormFactor"
