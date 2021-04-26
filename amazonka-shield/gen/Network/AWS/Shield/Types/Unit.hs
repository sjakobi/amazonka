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
-- Module      : Network.AWS.Shield.Types.Unit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.Unit
  ( Unit
      ( ..,
        UnitBITS,
        UnitBYTES,
        UnitPACKETS,
        UnitREQUESTS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Unit = Unit' {fromUnit :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern UnitBITS :: Unit
pattern UnitBITS = Unit' "BITS"

pattern UnitBYTES :: Unit
pattern UnitBYTES = Unit' "BYTES"

pattern UnitPACKETS :: Unit
pattern UnitPACKETS = Unit' "PACKETS"

pattern UnitREQUESTS :: Unit
pattern UnitREQUESTS = Unit' "REQUESTS"

{-# COMPLETE
  UnitBITS,
  UnitBYTES,
  UnitPACKETS,
  UnitREQUESTS,
  Unit'
  #-}

instance Prelude.FromText Unit where
  parser = Unit' Prelude.<$> Prelude.takeText

instance Prelude.ToText Unit where
  toText (Unit' x) = x

instance Prelude.Hashable Unit

instance Prelude.NFData Unit

instance Prelude.ToByteString Unit

instance Prelude.ToQuery Unit

instance Prelude.ToHeader Unit

instance Prelude.FromJSON Unit where
  parseJSON = Prelude.parseJSONText "Unit"
