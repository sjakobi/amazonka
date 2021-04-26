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
-- Module      : Network.AWS.EC2.Types.RootDeviceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RootDeviceType
  ( RootDeviceType
      ( ..,
        RootDeviceTypeEbs,
        RootDeviceTypeInstanceStore
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype RootDeviceType = RootDeviceType'
  { fromRootDeviceType ::
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

pattern RootDeviceTypeEbs :: RootDeviceType
pattern RootDeviceTypeEbs = RootDeviceType' "ebs"

pattern RootDeviceTypeInstanceStore :: RootDeviceType
pattern RootDeviceTypeInstanceStore = RootDeviceType' "instance-store"

{-# COMPLETE
  RootDeviceTypeEbs,
  RootDeviceTypeInstanceStore,
  RootDeviceType'
  #-}

instance Prelude.FromText RootDeviceType where
  parser = RootDeviceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RootDeviceType where
  toText (RootDeviceType' x) = x

instance Prelude.Hashable RootDeviceType

instance Prelude.NFData RootDeviceType

instance Prelude.ToByteString RootDeviceType

instance Prelude.ToQuery RootDeviceType

instance Prelude.ToHeader RootDeviceType

instance Prelude.FromXML RootDeviceType where
  parseXML = Prelude.parseXMLText "RootDeviceType"
