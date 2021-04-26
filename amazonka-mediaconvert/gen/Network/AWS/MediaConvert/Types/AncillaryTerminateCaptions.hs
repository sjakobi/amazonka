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
-- Module      : Network.AWS.MediaConvert.Types.AncillaryTerminateCaptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AncillaryTerminateCaptions
  ( AncillaryTerminateCaptions
      ( ..,
        AncillaryTerminateCaptionsDISABLED,
        AncillaryTerminateCaptionsENDOFINPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | By default, the service terminates any unterminated captions at the end
-- of each input. If you want the caption to continue onto your next input,
-- disable this setting.
newtype AncillaryTerminateCaptions = AncillaryTerminateCaptions'
  { fromAncillaryTerminateCaptions ::
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

pattern AncillaryTerminateCaptionsDISABLED :: AncillaryTerminateCaptions
pattern AncillaryTerminateCaptionsDISABLED = AncillaryTerminateCaptions' "DISABLED"

pattern AncillaryTerminateCaptionsENDOFINPUT :: AncillaryTerminateCaptions
pattern AncillaryTerminateCaptionsENDOFINPUT = AncillaryTerminateCaptions' "END_OF_INPUT"

{-# COMPLETE
  AncillaryTerminateCaptionsDISABLED,
  AncillaryTerminateCaptionsENDOFINPUT,
  AncillaryTerminateCaptions'
  #-}

instance Prelude.FromText AncillaryTerminateCaptions where
  parser = AncillaryTerminateCaptions' Prelude.<$> Prelude.takeText

instance Prelude.ToText AncillaryTerminateCaptions where
  toText (AncillaryTerminateCaptions' x) = x

instance Prelude.Hashable AncillaryTerminateCaptions

instance Prelude.NFData AncillaryTerminateCaptions

instance Prelude.ToByteString AncillaryTerminateCaptions

instance Prelude.ToQuery AncillaryTerminateCaptions

instance Prelude.ToHeader AncillaryTerminateCaptions

instance Prelude.ToJSON AncillaryTerminateCaptions where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AncillaryTerminateCaptions where
  parseJSON = Prelude.parseJSONText "AncillaryTerminateCaptions"
