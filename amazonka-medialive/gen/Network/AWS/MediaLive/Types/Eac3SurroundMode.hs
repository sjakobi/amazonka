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
-- Module      : Network.AWS.MediaLive.Types.Eac3SurroundMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3SurroundMode
  ( Eac3SurroundMode
      ( ..,
        Eac3SurroundModeDISABLED,
        Eac3SurroundModeENABLED,
        Eac3SurroundModeNOTINDICATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Surround Mode
newtype Eac3SurroundMode = Eac3SurroundMode'
  { fromEac3SurroundMode ::
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

pattern Eac3SurroundModeDISABLED :: Eac3SurroundMode
pattern Eac3SurroundModeDISABLED = Eac3SurroundMode' "DISABLED"

pattern Eac3SurroundModeENABLED :: Eac3SurroundMode
pattern Eac3SurroundModeENABLED = Eac3SurroundMode' "ENABLED"

pattern Eac3SurroundModeNOTINDICATED :: Eac3SurroundMode
pattern Eac3SurroundModeNOTINDICATED = Eac3SurroundMode' "NOT_INDICATED"

{-# COMPLETE
  Eac3SurroundModeDISABLED,
  Eac3SurroundModeENABLED,
  Eac3SurroundModeNOTINDICATED,
  Eac3SurroundMode'
  #-}

instance Prelude.FromText Eac3SurroundMode where
  parser = Eac3SurroundMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3SurroundMode where
  toText (Eac3SurroundMode' x) = x

instance Prelude.Hashable Eac3SurroundMode

instance Prelude.NFData Eac3SurroundMode

instance Prelude.ToByteString Eac3SurroundMode

instance Prelude.ToQuery Eac3SurroundMode

instance Prelude.ToHeader Eac3SurroundMode

instance Prelude.ToJSON Eac3SurroundMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3SurroundMode where
  parseJSON = Prelude.parseJSONText "Eac3SurroundMode"
