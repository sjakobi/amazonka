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
-- Module      : Network.AWS.MediaLive.Types.M2tsScte35Control
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsScte35Control
  ( M2tsScte35Control
      ( ..,
        M2tsScte35ControlNONE,
        M2tsScte35ControlPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Scte35 Control
newtype M2tsScte35Control = M2tsScte35Control'
  { fromM2tsScte35Control ::
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

pattern M2tsScte35ControlNONE :: M2tsScte35Control
pattern M2tsScte35ControlNONE = M2tsScte35Control' "NONE"

pattern M2tsScte35ControlPASSTHROUGH :: M2tsScte35Control
pattern M2tsScte35ControlPASSTHROUGH = M2tsScte35Control' "PASSTHROUGH"

{-# COMPLETE
  M2tsScte35ControlNONE,
  M2tsScte35ControlPASSTHROUGH,
  M2tsScte35Control'
  #-}

instance Prelude.FromText M2tsScte35Control where
  parser = M2tsScte35Control' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsScte35Control where
  toText (M2tsScte35Control' x) = x

instance Prelude.Hashable M2tsScte35Control

instance Prelude.NFData M2tsScte35Control

instance Prelude.ToByteString M2tsScte35Control

instance Prelude.ToQuery M2tsScte35Control

instance Prelude.ToHeader M2tsScte35Control

instance Prelude.ToJSON M2tsScte35Control where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsScte35Control where
  parseJSON = Prelude.parseJSONText "M2tsScte35Control"
