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
-- Module      : Network.AWS.Lightsail.Types.InstancePlatform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstancePlatform
  ( InstancePlatform
      ( ..,
        InstancePlatformLINUXUNIX,
        InstancePlatformWINDOWS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstancePlatform = InstancePlatform'
  { fromInstancePlatform ::
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

pattern InstancePlatformLINUXUNIX :: InstancePlatform
pattern InstancePlatformLINUXUNIX = InstancePlatform' "LINUX_UNIX"

pattern InstancePlatformWINDOWS :: InstancePlatform
pattern InstancePlatformWINDOWS = InstancePlatform' "WINDOWS"

{-# COMPLETE
  InstancePlatformLINUXUNIX,
  InstancePlatformWINDOWS,
  InstancePlatform'
  #-}

instance Prelude.FromText InstancePlatform where
  parser = InstancePlatform' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstancePlatform where
  toText (InstancePlatform' x) = x

instance Prelude.Hashable InstancePlatform

instance Prelude.NFData InstancePlatform

instance Prelude.ToByteString InstancePlatform

instance Prelude.ToQuery InstancePlatform

instance Prelude.ToHeader InstancePlatform

instance Prelude.FromJSON InstancePlatform where
  parseJSON = Prelude.parseJSONText "InstancePlatform"
