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
-- Module      : Network.AWS.Batch.Types.PlatformCapability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.PlatformCapability
  ( PlatformCapability
      ( ..,
        PlatformCapabilityEC2,
        PlatformCapabilityFARGATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlatformCapability = PlatformCapability'
  { fromPlatformCapability ::
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

pattern PlatformCapabilityEC2 :: PlatformCapability
pattern PlatformCapabilityEC2 = PlatformCapability' "EC2"

pattern PlatformCapabilityFARGATE :: PlatformCapability
pattern PlatformCapabilityFARGATE = PlatformCapability' "FARGATE"

{-# COMPLETE
  PlatformCapabilityEC2,
  PlatformCapabilityFARGATE,
  PlatformCapability'
  #-}

instance Prelude.FromText PlatformCapability where
  parser = PlatformCapability' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlatformCapability where
  toText (PlatformCapability' x) = x

instance Prelude.Hashable PlatformCapability

instance Prelude.NFData PlatformCapability

instance Prelude.ToByteString PlatformCapability

instance Prelude.ToQuery PlatformCapability

instance Prelude.ToHeader PlatformCapability

instance Prelude.ToJSON PlatformCapability where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PlatformCapability where
  parseJSON = Prelude.parseJSONText "PlatformCapability"
