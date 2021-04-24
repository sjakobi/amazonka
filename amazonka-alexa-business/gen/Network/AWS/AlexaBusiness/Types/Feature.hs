{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Feature
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Feature
  ( Feature
      ( ..,
        All,
        Bluetooth,
        Lists,
        NetworkProfile,
        Notifications,
        Settings,
        Skills,
        Volume
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Feature = Feature' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern All :: Feature
pattern All = Feature' "ALL"

pattern Bluetooth :: Feature
pattern Bluetooth = Feature' "BLUETOOTH"

pattern Lists :: Feature
pattern Lists = Feature' "LISTS"

pattern NetworkProfile :: Feature
pattern NetworkProfile = Feature' "NETWORK_PROFILE"

pattern Notifications :: Feature
pattern Notifications = Feature' "NOTIFICATIONS"

pattern Settings :: Feature
pattern Settings = Feature' "SETTINGS"

pattern Skills :: Feature
pattern Skills = Feature' "SKILLS"

pattern Volume :: Feature
pattern Volume = Feature' "VOLUME"

{-# COMPLETE
  All,
  Bluetooth,
  Lists,
  NetworkProfile,
  Notifications,
  Settings,
  Skills,
  Volume,
  Feature'
  #-}

instance FromText Feature where
  parser = (Feature' . mk) <$> takeText

instance ToText Feature where
  toText (Feature' ci) = original ci

instance Hashable Feature

instance NFData Feature

instance ToByteString Feature

instance ToQuery Feature

instance ToHeader Feature

instance ToJSON Feature where
  toJSON = toJSONText

instance FromJSON Feature where
  parseJSON = parseJSONText "Feature"
