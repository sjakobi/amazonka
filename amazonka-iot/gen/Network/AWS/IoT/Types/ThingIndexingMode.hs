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
-- Module      : Network.AWS.IoT.Types.ThingIndexingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ThingIndexingMode
  ( ThingIndexingMode
      ( ..,
        ThingIndexingModeOFF,
        ThingIndexingModeREGISTRY,
        ThingIndexingModeREGISTRYANDSHADOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ThingIndexingMode = ThingIndexingMode'
  { fromThingIndexingMode ::
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

pattern ThingIndexingModeOFF :: ThingIndexingMode
pattern ThingIndexingModeOFF = ThingIndexingMode' "OFF"

pattern ThingIndexingModeREGISTRY :: ThingIndexingMode
pattern ThingIndexingModeREGISTRY = ThingIndexingMode' "REGISTRY"

pattern ThingIndexingModeREGISTRYANDSHADOW :: ThingIndexingMode
pattern ThingIndexingModeREGISTRYANDSHADOW = ThingIndexingMode' "REGISTRY_AND_SHADOW"

{-# COMPLETE
  ThingIndexingModeOFF,
  ThingIndexingModeREGISTRY,
  ThingIndexingModeREGISTRYANDSHADOW,
  ThingIndexingMode'
  #-}

instance Prelude.FromText ThingIndexingMode where
  parser = ThingIndexingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ThingIndexingMode where
  toText (ThingIndexingMode' x) = x

instance Prelude.Hashable ThingIndexingMode

instance Prelude.NFData ThingIndexingMode

instance Prelude.ToByteString ThingIndexingMode

instance Prelude.ToQuery ThingIndexingMode

instance Prelude.ToHeader ThingIndexingMode

instance Prelude.ToJSON ThingIndexingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ThingIndexingMode where
  parseJSON = Prelude.parseJSONText "ThingIndexingMode"
