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
-- Module      : Network.AWS.MediaConvert.Types.Eac3SurroundExMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3SurroundExMode
  ( Eac3SurroundExMode
      ( ..,
        Eac3SurroundExModeDISABLED,
        Eac3SurroundExModeENABLED,
        Eac3SurroundExModeNOTINDICATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When encoding 3\/2 audio, sets whether an extra center back surround
-- channel is matrix encoded into the left and right surround channels.
newtype Eac3SurroundExMode = Eac3SurroundExMode'
  { fromEac3SurroundExMode ::
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

pattern Eac3SurroundExModeDISABLED :: Eac3SurroundExMode
pattern Eac3SurroundExModeDISABLED = Eac3SurroundExMode' "DISABLED"

pattern Eac3SurroundExModeENABLED :: Eac3SurroundExMode
pattern Eac3SurroundExModeENABLED = Eac3SurroundExMode' "ENABLED"

pattern Eac3SurroundExModeNOTINDICATED :: Eac3SurroundExMode
pattern Eac3SurroundExModeNOTINDICATED = Eac3SurroundExMode' "NOT_INDICATED"

{-# COMPLETE
  Eac3SurroundExModeDISABLED,
  Eac3SurroundExModeENABLED,
  Eac3SurroundExModeNOTINDICATED,
  Eac3SurroundExMode'
  #-}

instance Prelude.FromText Eac3SurroundExMode where
  parser = Eac3SurroundExMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3SurroundExMode where
  toText (Eac3SurroundExMode' x) = x

instance Prelude.Hashable Eac3SurroundExMode

instance Prelude.NFData Eac3SurroundExMode

instance Prelude.ToByteString Eac3SurroundExMode

instance Prelude.ToQuery Eac3SurroundExMode

instance Prelude.ToHeader Eac3SurroundExMode

instance Prelude.ToJSON Eac3SurroundExMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3SurroundExMode where
  parseJSON = Prelude.parseJSONText "Eac3SurroundExMode"
