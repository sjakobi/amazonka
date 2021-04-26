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
-- Module      : Network.AWS.MediaConvert.Types.AudioLanguageCodeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioLanguageCodeControl
  ( AudioLanguageCodeControl
      ( ..,
        AudioLanguageCodeControlFOLLOWINPUT,
        AudioLanguageCodeControlUSECONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify which source for language code takes precedence for this audio
-- track. When you choose Follow input (FOLLOW_INPUT), the service uses the
-- language code from the input track if it\'s present. If there\'s no
-- languge code on the input track, the service uses the code that you
-- specify in the setting Language code (languageCode or
-- customLanguageCode). When you choose Use configured (USE_CONFIGURED),
-- the service uses the language code that you specify.
newtype AudioLanguageCodeControl = AudioLanguageCodeControl'
  { fromAudioLanguageCodeControl ::
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

pattern AudioLanguageCodeControlFOLLOWINPUT :: AudioLanguageCodeControl
pattern AudioLanguageCodeControlFOLLOWINPUT = AudioLanguageCodeControl' "FOLLOW_INPUT"

pattern AudioLanguageCodeControlUSECONFIGURED :: AudioLanguageCodeControl
pattern AudioLanguageCodeControlUSECONFIGURED = AudioLanguageCodeControl' "USE_CONFIGURED"

{-# COMPLETE
  AudioLanguageCodeControlFOLLOWINPUT,
  AudioLanguageCodeControlUSECONFIGURED,
  AudioLanguageCodeControl'
  #-}

instance Prelude.FromText AudioLanguageCodeControl where
  parser = AudioLanguageCodeControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioLanguageCodeControl where
  toText (AudioLanguageCodeControl' x) = x

instance Prelude.Hashable AudioLanguageCodeControl

instance Prelude.NFData AudioLanguageCodeControl

instance Prelude.ToByteString AudioLanguageCodeControl

instance Prelude.ToQuery AudioLanguageCodeControl

instance Prelude.ToHeader AudioLanguageCodeControl

instance Prelude.ToJSON AudioLanguageCodeControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioLanguageCodeControl where
  parseJSON = Prelude.parseJSONText "AudioLanguageCodeControl"
