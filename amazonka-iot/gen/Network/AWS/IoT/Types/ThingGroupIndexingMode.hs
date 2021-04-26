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
-- Module      : Network.AWS.IoT.Types.ThingGroupIndexingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ThingGroupIndexingMode
  ( ThingGroupIndexingMode
      ( ..,
        ThingGroupIndexingModeOFF,
        ThingGroupIndexingModeON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ThingGroupIndexingMode = ThingGroupIndexingMode'
  { fromThingGroupIndexingMode ::
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

pattern ThingGroupIndexingModeOFF :: ThingGroupIndexingMode
pattern ThingGroupIndexingModeOFF = ThingGroupIndexingMode' "OFF"

pattern ThingGroupIndexingModeON :: ThingGroupIndexingMode
pattern ThingGroupIndexingModeON = ThingGroupIndexingMode' "ON"

{-# COMPLETE
  ThingGroupIndexingModeOFF,
  ThingGroupIndexingModeON,
  ThingGroupIndexingMode'
  #-}

instance Prelude.FromText ThingGroupIndexingMode where
  parser = ThingGroupIndexingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ThingGroupIndexingMode where
  toText (ThingGroupIndexingMode' x) = x

instance Prelude.Hashable ThingGroupIndexingMode

instance Prelude.NFData ThingGroupIndexingMode

instance Prelude.ToByteString ThingGroupIndexingMode

instance Prelude.ToQuery ThingGroupIndexingMode

instance Prelude.ToHeader ThingGroupIndexingMode

instance Prelude.ToJSON ThingGroupIndexingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ThingGroupIndexingMode where
  parseJSON = Prelude.parseJSONText "ThingGroupIndexingMode"
