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
-- Module      : Network.AWS.Greengrass.Types.UpdateTargetsOperatingSystem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.UpdateTargetsOperatingSystem
  ( UpdateTargetsOperatingSystem
      ( ..,
        UpdateTargetsOperatingSystemAmazonLinux,
        UpdateTargetsOperatingSystemOpenwrt,
        UpdateTargetsOperatingSystemRaspbian,
        UpdateTargetsOperatingSystemUbuntu
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The operating system of the cores which are the targets of an update.
newtype UpdateTargetsOperatingSystem = UpdateTargetsOperatingSystem'
  { fromUpdateTargetsOperatingSystem ::
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

pattern UpdateTargetsOperatingSystemAmazonLinux :: UpdateTargetsOperatingSystem
pattern UpdateTargetsOperatingSystemAmazonLinux = UpdateTargetsOperatingSystem' "amazon_linux"

pattern UpdateTargetsOperatingSystemOpenwrt :: UpdateTargetsOperatingSystem
pattern UpdateTargetsOperatingSystemOpenwrt = UpdateTargetsOperatingSystem' "openwrt"

pattern UpdateTargetsOperatingSystemRaspbian :: UpdateTargetsOperatingSystem
pattern UpdateTargetsOperatingSystemRaspbian = UpdateTargetsOperatingSystem' "raspbian"

pattern UpdateTargetsOperatingSystemUbuntu :: UpdateTargetsOperatingSystem
pattern UpdateTargetsOperatingSystemUbuntu = UpdateTargetsOperatingSystem' "ubuntu"

{-# COMPLETE
  UpdateTargetsOperatingSystemAmazonLinux,
  UpdateTargetsOperatingSystemOpenwrt,
  UpdateTargetsOperatingSystemRaspbian,
  UpdateTargetsOperatingSystemUbuntu,
  UpdateTargetsOperatingSystem'
  #-}

instance Prelude.FromText UpdateTargetsOperatingSystem where
  parser = UpdateTargetsOperatingSystem' Prelude.<$> Prelude.takeText

instance Prelude.ToText UpdateTargetsOperatingSystem where
  toText (UpdateTargetsOperatingSystem' x) = x

instance Prelude.Hashable UpdateTargetsOperatingSystem

instance Prelude.NFData UpdateTargetsOperatingSystem

instance Prelude.ToByteString UpdateTargetsOperatingSystem

instance Prelude.ToQuery UpdateTargetsOperatingSystem

instance Prelude.ToHeader UpdateTargetsOperatingSystem

instance Prelude.ToJSON UpdateTargetsOperatingSystem where
  toJSON = Prelude.toJSONText
