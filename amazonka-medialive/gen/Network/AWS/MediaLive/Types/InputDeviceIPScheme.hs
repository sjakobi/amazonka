{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceIPScheme
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceIPScheme
  ( InputDeviceIPScheme
      ( ..,
        DHCP,
        Static
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies whether the input device has been configured (outside of MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP address.
data InputDeviceIPScheme
  = InputDeviceIPScheme'
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

pattern DHCP :: InputDeviceIPScheme
pattern DHCP = InputDeviceIPScheme' "DHCP"

pattern Static :: InputDeviceIPScheme
pattern Static = InputDeviceIPScheme' "STATIC"

{-# COMPLETE
  DHCP,
  Static,
  InputDeviceIPScheme'
  #-}

instance FromText InputDeviceIPScheme where
  parser = (InputDeviceIPScheme' . mk) <$> takeText

instance ToText InputDeviceIPScheme where
  toText (InputDeviceIPScheme' ci) = original ci

instance Hashable InputDeviceIPScheme

instance NFData InputDeviceIPScheme

instance ToByteString InputDeviceIPScheme

instance ToQuery InputDeviceIPScheme

instance ToHeader InputDeviceIPScheme

instance FromJSON InputDeviceIPScheme where
  parseJSON = parseJSONText "InputDeviceIPScheme"
