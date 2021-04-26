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
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosSurroundExMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosSurroundExMode
  ( Eac3AtmosSurroundExMode
      ( ..,
        Eac3AtmosSurroundExModeDISABLED,
        Eac3AtmosSurroundExModeENABLED,
        Eac3AtmosSurroundExModeNOTINDICATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether your input audio has an additional center rear surround
-- channel matrix encoded into your left and right surround channels.
newtype Eac3AtmosSurroundExMode = Eac3AtmosSurroundExMode'
  { fromEac3AtmosSurroundExMode ::
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

pattern Eac3AtmosSurroundExModeDISABLED :: Eac3AtmosSurroundExMode
pattern Eac3AtmosSurroundExModeDISABLED = Eac3AtmosSurroundExMode' "DISABLED"

pattern Eac3AtmosSurroundExModeENABLED :: Eac3AtmosSurroundExMode
pattern Eac3AtmosSurroundExModeENABLED = Eac3AtmosSurroundExMode' "ENABLED"

pattern Eac3AtmosSurroundExModeNOTINDICATED :: Eac3AtmosSurroundExMode
pattern Eac3AtmosSurroundExModeNOTINDICATED = Eac3AtmosSurroundExMode' "NOT_INDICATED"

{-# COMPLETE
  Eac3AtmosSurroundExModeDISABLED,
  Eac3AtmosSurroundExModeENABLED,
  Eac3AtmosSurroundExModeNOTINDICATED,
  Eac3AtmosSurroundExMode'
  #-}

instance Prelude.FromText Eac3AtmosSurroundExMode where
  parser = Eac3AtmosSurroundExMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3AtmosSurroundExMode where
  toText (Eac3AtmosSurroundExMode' x) = x

instance Prelude.Hashable Eac3AtmosSurroundExMode

instance Prelude.NFData Eac3AtmosSurroundExMode

instance Prelude.ToByteString Eac3AtmosSurroundExMode

instance Prelude.ToQuery Eac3AtmosSurroundExMode

instance Prelude.ToHeader Eac3AtmosSurroundExMode

instance Prelude.ToJSON Eac3AtmosSurroundExMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3AtmosSurroundExMode where
  parseJSON = Prelude.parseJSONText "Eac3AtmosSurroundExMode"
