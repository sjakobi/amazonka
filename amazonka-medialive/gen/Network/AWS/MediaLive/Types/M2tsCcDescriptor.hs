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
-- Module      : Network.AWS.MediaLive.Types.M2tsCcDescriptor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsCcDescriptor
  ( M2tsCcDescriptor
      ( ..,
        M2tsCcDescriptorDISABLED,
        M2tsCcDescriptorENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Cc Descriptor
newtype M2tsCcDescriptor = M2tsCcDescriptor'
  { fromM2tsCcDescriptor ::
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

pattern M2tsCcDescriptorDISABLED :: M2tsCcDescriptor
pattern M2tsCcDescriptorDISABLED = M2tsCcDescriptor' "DISABLED"

pattern M2tsCcDescriptorENABLED :: M2tsCcDescriptor
pattern M2tsCcDescriptorENABLED = M2tsCcDescriptor' "ENABLED"

{-# COMPLETE
  M2tsCcDescriptorDISABLED,
  M2tsCcDescriptorENABLED,
  M2tsCcDescriptor'
  #-}

instance Prelude.FromText M2tsCcDescriptor where
  parser = M2tsCcDescriptor' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsCcDescriptor where
  toText (M2tsCcDescriptor' x) = x

instance Prelude.Hashable M2tsCcDescriptor

instance Prelude.NFData M2tsCcDescriptor

instance Prelude.ToByteString M2tsCcDescriptor

instance Prelude.ToQuery M2tsCcDescriptor

instance Prelude.ToHeader M2tsCcDescriptor

instance Prelude.ToJSON M2tsCcDescriptor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsCcDescriptor where
  parseJSON = Prelude.parseJSONText "M2tsCcDescriptor"
