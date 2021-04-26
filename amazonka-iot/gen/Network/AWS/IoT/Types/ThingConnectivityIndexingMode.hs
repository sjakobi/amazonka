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
-- Module      : Network.AWS.IoT.Types.ThingConnectivityIndexingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ThingConnectivityIndexingMode
  ( ThingConnectivityIndexingMode
      ( ..,
        ThingConnectivityIndexingModeOFF,
        ThingConnectivityIndexingModeSTATUS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ThingConnectivityIndexingMode = ThingConnectivityIndexingMode'
  { fromThingConnectivityIndexingMode ::
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

pattern ThingConnectivityIndexingModeOFF :: ThingConnectivityIndexingMode
pattern ThingConnectivityIndexingModeOFF = ThingConnectivityIndexingMode' "OFF"

pattern ThingConnectivityIndexingModeSTATUS :: ThingConnectivityIndexingMode
pattern ThingConnectivityIndexingModeSTATUS = ThingConnectivityIndexingMode' "STATUS"

{-# COMPLETE
  ThingConnectivityIndexingModeOFF,
  ThingConnectivityIndexingModeSTATUS,
  ThingConnectivityIndexingMode'
  #-}

instance Prelude.FromText ThingConnectivityIndexingMode where
  parser = ThingConnectivityIndexingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ThingConnectivityIndexingMode where
  toText (ThingConnectivityIndexingMode' x) = x

instance Prelude.Hashable ThingConnectivityIndexingMode

instance Prelude.NFData ThingConnectivityIndexingMode

instance Prelude.ToByteString ThingConnectivityIndexingMode

instance Prelude.ToQuery ThingConnectivityIndexingMode

instance Prelude.ToHeader ThingConnectivityIndexingMode

instance Prelude.ToJSON ThingConnectivityIndexingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ThingConnectivityIndexingMode where
  parseJSON = Prelude.parseJSONText "ThingConnectivityIndexingMode"
