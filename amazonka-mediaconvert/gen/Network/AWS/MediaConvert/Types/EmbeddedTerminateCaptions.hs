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
-- Module      : Network.AWS.MediaConvert.Types.EmbeddedTerminateCaptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.EmbeddedTerminateCaptions
  ( EmbeddedTerminateCaptions
      ( ..,
        EmbeddedTerminateCaptionsDISABLED,
        EmbeddedTerminateCaptionsENDOFINPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | By default, the service terminates any unterminated captions at the end
-- of each input. If you want the caption to continue onto your next input,
-- disable this setting.
newtype EmbeddedTerminateCaptions = EmbeddedTerminateCaptions'
  { fromEmbeddedTerminateCaptions ::
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

pattern EmbeddedTerminateCaptionsDISABLED :: EmbeddedTerminateCaptions
pattern EmbeddedTerminateCaptionsDISABLED = EmbeddedTerminateCaptions' "DISABLED"

pattern EmbeddedTerminateCaptionsENDOFINPUT :: EmbeddedTerminateCaptions
pattern EmbeddedTerminateCaptionsENDOFINPUT = EmbeddedTerminateCaptions' "END_OF_INPUT"

{-# COMPLETE
  EmbeddedTerminateCaptionsDISABLED,
  EmbeddedTerminateCaptionsENDOFINPUT,
  EmbeddedTerminateCaptions'
  #-}

instance Prelude.FromText EmbeddedTerminateCaptions where
  parser = EmbeddedTerminateCaptions' Prelude.<$> Prelude.takeText

instance Prelude.ToText EmbeddedTerminateCaptions where
  toText (EmbeddedTerminateCaptions' x) = x

instance Prelude.Hashable EmbeddedTerminateCaptions

instance Prelude.NFData EmbeddedTerminateCaptions

instance Prelude.ToByteString EmbeddedTerminateCaptions

instance Prelude.ToQuery EmbeddedTerminateCaptions

instance Prelude.ToHeader EmbeddedTerminateCaptions

instance Prelude.ToJSON EmbeddedTerminateCaptions where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EmbeddedTerminateCaptions where
  parseJSON = Prelude.parseJSONText "EmbeddedTerminateCaptions"
