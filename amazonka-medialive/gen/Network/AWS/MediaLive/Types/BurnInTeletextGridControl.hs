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
-- Module      : Network.AWS.MediaLive.Types.BurnInTeletextGridControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInTeletextGridControl
  ( BurnInTeletextGridControl
      ( ..,
        BurnInTeletextGridControlFIXED,
        BurnInTeletextGridControlSCALED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Burn In Teletext Grid Control
newtype BurnInTeletextGridControl = BurnInTeletextGridControl'
  { fromBurnInTeletextGridControl ::
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

pattern BurnInTeletextGridControlFIXED :: BurnInTeletextGridControl
pattern BurnInTeletextGridControlFIXED = BurnInTeletextGridControl' "FIXED"

pattern BurnInTeletextGridControlSCALED :: BurnInTeletextGridControl
pattern BurnInTeletextGridControlSCALED = BurnInTeletextGridControl' "SCALED"

{-# COMPLETE
  BurnInTeletextGridControlFIXED,
  BurnInTeletextGridControlSCALED,
  BurnInTeletextGridControl'
  #-}

instance Prelude.FromText BurnInTeletextGridControl where
  parser = BurnInTeletextGridControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurnInTeletextGridControl where
  toText (BurnInTeletextGridControl' x) = x

instance Prelude.Hashable BurnInTeletextGridControl

instance Prelude.NFData BurnInTeletextGridControl

instance Prelude.ToByteString BurnInTeletextGridControl

instance Prelude.ToQuery BurnInTeletextGridControl

instance Prelude.ToHeader BurnInTeletextGridControl

instance Prelude.ToJSON BurnInTeletextGridControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurnInTeletextGridControl where
  parseJSON = Prelude.parseJSONText "BurnInTeletextGridControl"
