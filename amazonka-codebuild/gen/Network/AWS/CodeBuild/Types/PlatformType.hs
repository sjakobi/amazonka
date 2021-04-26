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
-- Module      : Network.AWS.CodeBuild.Types.PlatformType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.PlatformType
  ( PlatformType
      ( ..,
        PlatformTypeAMAZONLINUX,
        PlatformTypeDEBIAN,
        PlatformTypeUBUNTU,
        PlatformTypeWINDOWSSERVER
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

pattern PlatformTypeAMAZONLINUX :: PlatformType
pattern PlatformTypeAMAZONLINUX = PlatformType' "AMAZON_LINUX"

pattern PlatformTypeDEBIAN :: PlatformType
pattern PlatformTypeDEBIAN = PlatformType' "DEBIAN"

pattern PlatformTypeUBUNTU :: PlatformType
pattern PlatformTypeUBUNTU = PlatformType' "UBUNTU"

pattern PlatformTypeWINDOWSSERVER :: PlatformType
pattern PlatformTypeWINDOWSSERVER = PlatformType' "WINDOWS_SERVER"

{-# COMPLETE
  PlatformTypeAMAZONLINUX,
  PlatformTypeDEBIAN,
  PlatformTypeUBUNTU,
  PlatformTypeWINDOWSSERVER,
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
