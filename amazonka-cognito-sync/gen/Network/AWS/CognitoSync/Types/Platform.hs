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
-- Module      : Network.AWS.CognitoSync.Types.Platform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.Platform
  ( Platform
      ( ..,
        PlatformADM,
        PlatformAPNS,
        PlatformAPNSSANDBOX,
        PlatformGCM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Platform = Platform'
  { fromPlatform ::
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

pattern PlatformADM :: Platform
pattern PlatformADM = Platform' "ADM"

pattern PlatformAPNS :: Platform
pattern PlatformAPNS = Platform' "APNS"

pattern PlatformAPNSSANDBOX :: Platform
pattern PlatformAPNSSANDBOX = Platform' "APNS_SANDBOX"

pattern PlatformGCM :: Platform
pattern PlatformGCM = Platform' "GCM"

{-# COMPLETE
  PlatformADM,
  PlatformAPNS,
  PlatformAPNSSANDBOX,
  PlatformGCM,
  Platform'
  #-}

instance Prelude.FromText Platform where
  parser = Platform' Prelude.<$> Prelude.takeText

instance Prelude.ToText Platform where
  toText (Platform' x) = x

instance Prelude.Hashable Platform

instance Prelude.NFData Platform

instance Prelude.ToByteString Platform

instance Prelude.ToQuery Platform

instance Prelude.ToHeader Platform

instance Prelude.ToJSON Platform where
  toJSON = Prelude.toJSONText
