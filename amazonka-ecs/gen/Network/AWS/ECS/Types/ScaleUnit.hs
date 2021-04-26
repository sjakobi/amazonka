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
-- Module      : Network.AWS.ECS.Types.ScaleUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ScaleUnit
  ( ScaleUnit
      ( ..,
        ScaleUnitPERCENT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScaleUnit = ScaleUnit'
  { fromScaleUnit ::
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

pattern ScaleUnitPERCENT :: ScaleUnit
pattern ScaleUnitPERCENT = ScaleUnit' "PERCENT"

{-# COMPLETE
  ScaleUnitPERCENT,
  ScaleUnit'
  #-}

instance Prelude.FromText ScaleUnit where
  parser = ScaleUnit' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScaleUnit where
  toText (ScaleUnit' x) = x

instance Prelude.Hashable ScaleUnit

instance Prelude.NFData ScaleUnit

instance Prelude.ToByteString ScaleUnit

instance Prelude.ToQuery ScaleUnit

instance Prelude.ToHeader ScaleUnit

instance Prelude.ToJSON ScaleUnit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScaleUnit where
  parseJSON = Prelude.parseJSONText "ScaleUnit"
