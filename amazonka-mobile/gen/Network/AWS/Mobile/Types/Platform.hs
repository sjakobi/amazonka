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
-- Module      : Network.AWS.Mobile.Types.Platform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Mobile.Types.Platform
  ( Platform
      ( ..,
        PlatformANDROID,
        PlatformJAVASCRIPT,
        PlatformLINUX,
        PlatformOBJC,
        PlatformOSX,
        PlatformSWIFT,
        PlatformWINDOWS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Developer desktop or target mobile app or website platform.
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

pattern PlatformANDROID :: Platform
pattern PlatformANDROID = Platform' "ANDROID"

pattern PlatformJAVASCRIPT :: Platform
pattern PlatformJAVASCRIPT = Platform' "JAVASCRIPT"

pattern PlatformLINUX :: Platform
pattern PlatformLINUX = Platform' "LINUX"

pattern PlatformOBJC :: Platform
pattern PlatformOBJC = Platform' "OBJC"

pattern PlatformOSX :: Platform
pattern PlatformOSX = Platform' "OSX"

pattern PlatformSWIFT :: Platform
pattern PlatformSWIFT = Platform' "SWIFT"

pattern PlatformWINDOWS :: Platform
pattern PlatformWINDOWS = Platform' "WINDOWS"

{-# COMPLETE
  PlatformANDROID,
  PlatformJAVASCRIPT,
  PlatformLINUX,
  PlatformOBJC,
  PlatformOSX,
  PlatformSWIFT,
  PlatformWINDOWS,
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

instance Prelude.FromJSON Platform where
  parseJSON = Prelude.parseJSONText "Platform"
