{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.UpdateTargetsOperatingSystem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.UpdateTargetsOperatingSystem
  ( UpdateTargetsOperatingSystem
      ( ..,
        AmazonLinux,
        Openwrt,
        Raspbian,
        Ubuntu
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The operating system of the cores which are the targets of an update.
data UpdateTargetsOperatingSystem
  = UpdateTargetsOperatingSystem'
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

pattern AmazonLinux :: UpdateTargetsOperatingSystem
pattern AmazonLinux = UpdateTargetsOperatingSystem' "amazon_linux"

pattern Openwrt :: UpdateTargetsOperatingSystem
pattern Openwrt = UpdateTargetsOperatingSystem' "openwrt"

pattern Raspbian :: UpdateTargetsOperatingSystem
pattern Raspbian = UpdateTargetsOperatingSystem' "raspbian"

pattern Ubuntu :: UpdateTargetsOperatingSystem
pattern Ubuntu = UpdateTargetsOperatingSystem' "ubuntu"

{-# COMPLETE
  AmazonLinux,
  Openwrt,
  Raspbian,
  Ubuntu,
  UpdateTargetsOperatingSystem'
  #-}

instance FromText UpdateTargetsOperatingSystem where
  parser = (UpdateTargetsOperatingSystem' . mk) <$> takeText

instance ToText UpdateTargetsOperatingSystem where
  toText (UpdateTargetsOperatingSystem' ci) = original ci

instance Hashable UpdateTargetsOperatingSystem

instance NFData UpdateTargetsOperatingSystem

instance ToByteString UpdateTargetsOperatingSystem

instance ToQuery UpdateTargetsOperatingSystem

instance ToHeader UpdateTargetsOperatingSystem

instance ToJSON UpdateTargetsOperatingSystem where
  toJSON = toJSONText
