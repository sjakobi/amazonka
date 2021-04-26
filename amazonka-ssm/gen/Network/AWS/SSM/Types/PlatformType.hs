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
-- Module      : Network.AWS.SSM.Types.PlatformType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PlatformType
  ( PlatformType
      ( ..,
        PlatformTypeLinux,
        PlatformTypeWindows
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlatformType = PlatformType'
  { fromPlatformType ::
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

pattern PlatformTypeLinux :: PlatformType
pattern PlatformTypeLinux = PlatformType' "Linux"

pattern PlatformTypeWindows :: PlatformType
pattern PlatformTypeWindows = PlatformType' "Windows"

{-# COMPLETE
  PlatformTypeLinux,
  PlatformTypeWindows,
  PlatformType'
  #-}

instance Prelude.FromText PlatformType where
  parser = PlatformType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlatformType where
  toText (PlatformType' x) = x

instance Prelude.Hashable PlatformType

instance Prelude.NFData PlatformType

instance Prelude.ToByteString PlatformType

instance Prelude.ToQuery PlatformType

instance Prelude.ToHeader PlatformType

instance Prelude.FromJSON PlatformType where
  parseJSON = Prelude.parseJSONText "PlatformType"
