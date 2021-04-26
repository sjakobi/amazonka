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
-- Module      : Network.AWS.MediaLive.Types.AudioType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioType
  ( AudioType
      ( ..,
        AudioTypeCLEANEFFECTS,
        AudioTypeHEARINGIMPAIRED,
        AudioTypeUNDEFINED,
        AudioTypeVISUALIMPAIREDCOMMENTARY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Audio Type
newtype AudioType = AudioType'
  { fromAudioType ::
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

pattern AudioTypeCLEANEFFECTS :: AudioType
pattern AudioTypeCLEANEFFECTS = AudioType' "CLEAN_EFFECTS"

pattern AudioTypeHEARINGIMPAIRED :: AudioType
pattern AudioTypeHEARINGIMPAIRED = AudioType' "HEARING_IMPAIRED"

pattern AudioTypeUNDEFINED :: AudioType
pattern AudioTypeUNDEFINED = AudioType' "UNDEFINED"

pattern AudioTypeVISUALIMPAIREDCOMMENTARY :: AudioType
pattern AudioTypeVISUALIMPAIREDCOMMENTARY = AudioType' "VISUAL_IMPAIRED_COMMENTARY"

{-# COMPLETE
  AudioTypeCLEANEFFECTS,
  AudioTypeHEARINGIMPAIRED,
  AudioTypeUNDEFINED,
  AudioTypeVISUALIMPAIREDCOMMENTARY,
  AudioType'
  #-}

instance Prelude.FromText AudioType where
  parser = AudioType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioType where
  toText (AudioType' x) = x

instance Prelude.Hashable AudioType

instance Prelude.NFData AudioType

instance Prelude.ToByteString AudioType

instance Prelude.ToQuery AudioType

instance Prelude.ToHeader AudioType

instance Prelude.ToJSON AudioType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioType where
  parseJSON = Prelude.parseJSONText "AudioType"
