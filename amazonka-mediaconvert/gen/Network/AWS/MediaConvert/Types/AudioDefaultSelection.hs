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
-- Module      : Network.AWS.MediaConvert.Types.AudioDefaultSelection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioDefaultSelection
  ( AudioDefaultSelection
      ( ..,
        AudioDefaultSelectionDEFAULT,
        AudioDefaultSelectionNOTDEFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable this setting on one audio selector to set it as the default for
-- the job. The service uses this default for outputs where it can\'t find
-- the specified input audio. If you don\'t set a default, those outputs
-- have no audio.
newtype AudioDefaultSelection = AudioDefaultSelection'
  { fromAudioDefaultSelection ::
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

pattern AudioDefaultSelectionDEFAULT :: AudioDefaultSelection
pattern AudioDefaultSelectionDEFAULT = AudioDefaultSelection' "DEFAULT"

pattern AudioDefaultSelectionNOTDEFAULT :: AudioDefaultSelection
pattern AudioDefaultSelectionNOTDEFAULT = AudioDefaultSelection' "NOT_DEFAULT"

{-# COMPLETE
  AudioDefaultSelectionDEFAULT,
  AudioDefaultSelectionNOTDEFAULT,
  AudioDefaultSelection'
  #-}

instance Prelude.FromText AudioDefaultSelection where
  parser = AudioDefaultSelection' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioDefaultSelection where
  toText (AudioDefaultSelection' x) = x

instance Prelude.Hashable AudioDefaultSelection

instance Prelude.NFData AudioDefaultSelection

instance Prelude.ToByteString AudioDefaultSelection

instance Prelude.ToQuery AudioDefaultSelection

instance Prelude.ToHeader AudioDefaultSelection

instance Prelude.ToJSON AudioDefaultSelection where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioDefaultSelection where
  parseJSON = Prelude.parseJSONText "AudioDefaultSelection"
