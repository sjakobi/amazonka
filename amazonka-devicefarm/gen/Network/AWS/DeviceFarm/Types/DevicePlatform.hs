{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Android,
        Ios
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DevicePlatform = DevicePlatform' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Android :: DevicePlatform
pattern Android = DevicePlatform' "ANDROID"

pattern Ios :: DevicePlatform
pattern Ios = DevicePlatform' "IOS"

{-# COMPLETE
  Android,
  Ios,
  DevicePlatform'
  #-}

instance FromText DevicePlatform where
  parser = (DevicePlatform' . mk) <$> takeText

instance ToText DevicePlatform where
  toText (DevicePlatform' ci) = original ci

instance Hashable DevicePlatform

instance NFData DevicePlatform

instance ToByteString DevicePlatform

instance ToQuery DevicePlatform

instance ToHeader DevicePlatform

instance FromJSON DevicePlatform where
  parseJSON = parseJSONText "DevicePlatform"
