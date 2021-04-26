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
-- Module      : Network.AWS.MediaLive.Types.AudioDescriptionLanguageCodeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioDescriptionLanguageCodeControl
  ( AudioDescriptionLanguageCodeControl
      ( ..,
        AudioDescriptionLanguageCodeControlFOLLOWINPUT,
        AudioDescriptionLanguageCodeControlUSECONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Audio Description Language Code Control
newtype AudioDescriptionLanguageCodeControl = AudioDescriptionLanguageCodeControl'
  { fromAudioDescriptionLanguageCodeControl ::
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

pattern AudioDescriptionLanguageCodeControlFOLLOWINPUT :: AudioDescriptionLanguageCodeControl
pattern AudioDescriptionLanguageCodeControlFOLLOWINPUT = AudioDescriptionLanguageCodeControl' "FOLLOW_INPUT"

pattern AudioDescriptionLanguageCodeControlUSECONFIGURED :: AudioDescriptionLanguageCodeControl
pattern AudioDescriptionLanguageCodeControlUSECONFIGURED = AudioDescriptionLanguageCodeControl' "USE_CONFIGURED"

{-# COMPLETE
  AudioDescriptionLanguageCodeControlFOLLOWINPUT,
  AudioDescriptionLanguageCodeControlUSECONFIGURED,
  AudioDescriptionLanguageCodeControl'
  #-}

instance Prelude.FromText AudioDescriptionLanguageCodeControl where
  parser = AudioDescriptionLanguageCodeControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioDescriptionLanguageCodeControl where
  toText (AudioDescriptionLanguageCodeControl' x) = x

instance Prelude.Hashable AudioDescriptionLanguageCodeControl

instance Prelude.NFData AudioDescriptionLanguageCodeControl

instance Prelude.ToByteString AudioDescriptionLanguageCodeControl

instance Prelude.ToQuery AudioDescriptionLanguageCodeControl

instance Prelude.ToHeader AudioDescriptionLanguageCodeControl

instance Prelude.ToJSON AudioDescriptionLanguageCodeControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioDescriptionLanguageCodeControl where
  parseJSON = Prelude.parseJSONText "AudioDescriptionLanguageCodeControl"
