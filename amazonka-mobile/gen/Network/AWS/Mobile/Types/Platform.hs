{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Mobile.Types.Platform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Mobile.Types.Platform
  ( Platform
      ( ..,
        Android,
        Javascript,
        Linux,
        OSx,
        Objc,
        Swift,
        Windows
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Developer desktop or target mobile app or website platform.
data Platform = Platform' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Android :: Platform
pattern Android = Platform' "ANDROID"

pattern Javascript :: Platform
pattern Javascript = Platform' "JAVASCRIPT"

pattern Linux :: Platform
pattern Linux = Platform' "LINUX"

pattern OSx :: Platform
pattern OSx = Platform' "OSX"

pattern Objc :: Platform
pattern Objc = Platform' "OBJC"

pattern Swift :: Platform
pattern Swift = Platform' "SWIFT"

pattern Windows :: Platform
pattern Windows = Platform' "WINDOWS"

{-# COMPLETE
  Android,
  Javascript,
  Linux,
  OSx,
  Objc,
  Swift,
  Windows,
  Platform'
  #-}

instance FromText Platform where
  parser = (Platform' . mk) <$> takeText

instance ToText Platform where
  toText (Platform' ci) = original ci

instance Hashable Platform

instance NFData Platform

instance ToByteString Platform

instance ToQuery Platform

instance ToHeader Platform

instance ToJSON Platform where
  toJSON = toJSONText

instance FromJSON Platform where
  parseJSON = parseJSONText "Platform"
