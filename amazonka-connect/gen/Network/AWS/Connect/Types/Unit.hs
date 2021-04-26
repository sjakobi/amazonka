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
-- Module      : Network.AWS.Connect.Types.Unit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Unit
  ( Unit
      ( ..,
        UnitCOUNT,
        UnitPERCENT,
        UnitSECONDS
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

pattern UnitCOUNT :: Unit
pattern UnitCOUNT = Unit' "COUNT"

pattern UnitPERCENT :: Unit
pattern UnitPERCENT = Unit' "PERCENT"

pattern UnitSECONDS :: Unit
pattern UnitSECONDS = Unit' "SECONDS"

{-# COMPLETE
  UnitCOUNT,
  UnitPERCENT,
  UnitSECONDS,
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

instance Prelude.ToJSON Unit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Unit where
  parseJSON = Prelude.parseJSONText "Unit"
