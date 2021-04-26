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
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosDialogueIntelligence
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosDialogueIntelligence
  ( Eac3AtmosDialogueIntelligence
      ( ..,
        Eac3AtmosDialogueIntelligenceDISABLED,
        Eac3AtmosDialogueIntelligenceENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue
-- analysis.
newtype Eac3AtmosDialogueIntelligence = Eac3AtmosDialogueIntelligence'
  { fromEac3AtmosDialogueIntelligence ::
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

pattern Eac3AtmosDialogueIntelligenceDISABLED :: Eac3AtmosDialogueIntelligence
pattern Eac3AtmosDialogueIntelligenceDISABLED = Eac3AtmosDialogueIntelligence' "DISABLED"

pattern Eac3AtmosDialogueIntelligenceENABLED :: Eac3AtmosDialogueIntelligence
pattern Eac3AtmosDialogueIntelligenceENABLED = Eac3AtmosDialogueIntelligence' "ENABLED"

{-# COMPLETE
  Eac3AtmosDialogueIntelligenceDISABLED,
  Eac3AtmosDialogueIntelligenceENABLED,
  Eac3AtmosDialogueIntelligence'
  #-}

instance Prelude.FromText Eac3AtmosDialogueIntelligence where
  parser = Eac3AtmosDialogueIntelligence' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3AtmosDialogueIntelligence where
  toText (Eac3AtmosDialogueIntelligence' x) = x

instance Prelude.Hashable Eac3AtmosDialogueIntelligence

instance Prelude.NFData Eac3AtmosDialogueIntelligence

instance Prelude.ToByteString Eac3AtmosDialogueIntelligence

instance Prelude.ToQuery Eac3AtmosDialogueIntelligence

instance Prelude.ToHeader Eac3AtmosDialogueIntelligence

instance Prelude.ToJSON Eac3AtmosDialogueIntelligence where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3AtmosDialogueIntelligence where
  parseJSON = Prelude.parseJSONText "Eac3AtmosDialogueIntelligence"
