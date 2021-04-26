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
-- Module      : Network.AWS.MediaLive.Types.M2tsEbifControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsEbifControl
  ( M2tsEbifControl
      ( ..,
        M2tsEbifControlNONE,
        M2tsEbifControlPASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Ebif Control
newtype M2tsEbifControl = M2tsEbifControl'
  { fromM2tsEbifControl ::
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

pattern M2tsEbifControlNONE :: M2tsEbifControl
pattern M2tsEbifControlNONE = M2tsEbifControl' "NONE"

pattern M2tsEbifControlPASSTHROUGH :: M2tsEbifControl
pattern M2tsEbifControlPASSTHROUGH = M2tsEbifControl' "PASSTHROUGH"

{-# COMPLETE
  M2tsEbifControlNONE,
  M2tsEbifControlPASSTHROUGH,
  M2tsEbifControl'
  #-}

instance Prelude.FromText M2tsEbifControl where
  parser = M2tsEbifControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsEbifControl where
  toText (M2tsEbifControl' x) = x

instance Prelude.Hashable M2tsEbifControl

instance Prelude.NFData M2tsEbifControl

instance Prelude.ToByteString M2tsEbifControl

instance Prelude.ToQuery M2tsEbifControl

instance Prelude.ToHeader M2tsEbifControl

instance Prelude.ToJSON M2tsEbifControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsEbifControl where
  parseJSON = Prelude.parseJSONText "M2tsEbifControl"
