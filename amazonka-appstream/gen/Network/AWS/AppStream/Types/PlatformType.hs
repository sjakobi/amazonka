{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.PlatformType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.PlatformType
  ( PlatformType
      ( ..,
        Windows,
        WindowsServer2016,
        WindowsServer2019
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PlatformType = PlatformType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Windows :: PlatformType
pattern Windows = PlatformType' "WINDOWS"

pattern WindowsServer2016 :: PlatformType
pattern WindowsServer2016 = PlatformType' "WINDOWS_SERVER_2016"

pattern WindowsServer2019 :: PlatformType
pattern WindowsServer2019 = PlatformType' "WINDOWS_SERVER_2019"

{-# COMPLETE
  Windows,
  WindowsServer2016,
  WindowsServer2019,
  PlatformType'
  #-}

instance FromText PlatformType where
  parser = (PlatformType' . mk) <$> takeText

instance ToText PlatformType where
  toText (PlatformType' ci) = original ci

instance Hashable PlatformType

instance NFData PlatformType

instance ToByteString PlatformType

instance ToQuery PlatformType

instance ToHeader PlatformType

instance FromJSON PlatformType where
  parseJSON = parseJSONText "PlatformType"
