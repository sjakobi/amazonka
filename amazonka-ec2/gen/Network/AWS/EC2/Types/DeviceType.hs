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
-- Module      : Network.AWS.EC2.Types.DeviceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DeviceType
  ( DeviceType
      ( ..,
        DeviceTypeEbs,
        DeviceTypeInstanceStore
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DeviceType = DeviceType'
  { fromDeviceType ::
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

pattern DeviceTypeEbs :: DeviceType
pattern DeviceTypeEbs = DeviceType' "ebs"

pattern DeviceTypeInstanceStore :: DeviceType
pattern DeviceTypeInstanceStore = DeviceType' "instance-store"

{-# COMPLETE
  DeviceTypeEbs,
  DeviceTypeInstanceStore,
  DeviceType'
  #-}

instance Prelude.FromText DeviceType where
  parser = DeviceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceType where
  toText (DeviceType' x) = x

instance Prelude.Hashable DeviceType

instance Prelude.NFData DeviceType

instance Prelude.ToByteString DeviceType

instance Prelude.ToQuery DeviceType

instance Prelude.ToHeader DeviceType

instance Prelude.FromXML DeviceType where
  parseXML = Prelude.parseXMLText "DeviceType"
