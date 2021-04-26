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
-- Module      : Network.AWS.MediaLive.Types.M2tsArib
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsArib
  ( M2tsArib
      ( ..,
        M2tsAribDISABLED,
        M2tsAribENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Arib
newtype M2tsArib = M2tsArib'
  { fromM2tsArib ::
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

pattern M2tsAribDISABLED :: M2tsArib
pattern M2tsAribDISABLED = M2tsArib' "DISABLED"

pattern M2tsAribENABLED :: M2tsArib
pattern M2tsAribENABLED = M2tsArib' "ENABLED"

{-# COMPLETE
  M2tsAribDISABLED,
  M2tsAribENABLED,
  M2tsArib'
  #-}

instance Prelude.FromText M2tsArib where
  parser = M2tsArib' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsArib where
  toText (M2tsArib' x) = x

instance Prelude.Hashable M2tsArib

instance Prelude.NFData M2tsArib

instance Prelude.ToByteString M2tsArib

instance Prelude.ToQuery M2tsArib

instance Prelude.ToHeader M2tsArib

instance Prelude.ToJSON M2tsArib where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsArib where
  parseJSON = Prelude.parseJSONText "M2tsArib"
