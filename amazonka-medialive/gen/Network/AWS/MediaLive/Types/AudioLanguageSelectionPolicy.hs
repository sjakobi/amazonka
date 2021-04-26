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
-- Module      : Network.AWS.MediaLive.Types.AudioLanguageSelectionPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioLanguageSelectionPolicy
  ( AudioLanguageSelectionPolicy
      ( ..,
        AudioLanguageSelectionPolicyLOOSE,
        AudioLanguageSelectionPolicySTRICT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Audio Language Selection Policy
newtype AudioLanguageSelectionPolicy = AudioLanguageSelectionPolicy'
  { fromAudioLanguageSelectionPolicy ::
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

pattern AudioLanguageSelectionPolicyLOOSE :: AudioLanguageSelectionPolicy
pattern AudioLanguageSelectionPolicyLOOSE = AudioLanguageSelectionPolicy' "LOOSE"

pattern AudioLanguageSelectionPolicySTRICT :: AudioLanguageSelectionPolicy
pattern AudioLanguageSelectionPolicySTRICT = AudioLanguageSelectionPolicy' "STRICT"

{-# COMPLETE
  AudioLanguageSelectionPolicyLOOSE,
  AudioLanguageSelectionPolicySTRICT,
  AudioLanguageSelectionPolicy'
  #-}

instance Prelude.FromText AudioLanguageSelectionPolicy where
  parser = AudioLanguageSelectionPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioLanguageSelectionPolicy where
  toText (AudioLanguageSelectionPolicy' x) = x

instance Prelude.Hashable AudioLanguageSelectionPolicy

instance Prelude.NFData AudioLanguageSelectionPolicy

instance Prelude.ToByteString AudioLanguageSelectionPolicy

instance Prelude.ToQuery AudioLanguageSelectionPolicy

instance Prelude.ToHeader AudioLanguageSelectionPolicy

instance Prelude.ToJSON AudioLanguageSelectionPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioLanguageSelectionPolicy where
  parseJSON = Prelude.parseJSONText "AudioLanguageSelectionPolicy"
