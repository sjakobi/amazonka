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
-- Module      : Network.AWS.MediaLive.Types.Ac3BitstreamMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3BitstreamMode
  ( Ac3BitstreamMode
      ( ..,
        Ac3BitstreamModeCOMMENTARY,
        Ac3BitstreamModeCOMPLETEMAIN,
        Ac3BitstreamModeDIALOGUE,
        Ac3BitstreamModeEMERGENCY,
        Ac3BitstreamModeHEARINGIMPAIRED,
        Ac3BitstreamModeMUSICANDEFFECTS,
        Ac3BitstreamModeVISUALLYIMPAIRED,
        Ac3BitstreamModeVOICEOVER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ac3 Bitstream Mode
newtype Ac3BitstreamMode = Ac3BitstreamMode'
  { fromAc3BitstreamMode ::
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

pattern Ac3BitstreamModeCOMMENTARY :: Ac3BitstreamMode
pattern Ac3BitstreamModeCOMMENTARY = Ac3BitstreamMode' "COMMENTARY"

pattern Ac3BitstreamModeCOMPLETEMAIN :: Ac3BitstreamMode
pattern Ac3BitstreamModeCOMPLETEMAIN = Ac3BitstreamMode' "COMPLETE_MAIN"

pattern Ac3BitstreamModeDIALOGUE :: Ac3BitstreamMode
pattern Ac3BitstreamModeDIALOGUE = Ac3BitstreamMode' "DIALOGUE"

pattern Ac3BitstreamModeEMERGENCY :: Ac3BitstreamMode
pattern Ac3BitstreamModeEMERGENCY = Ac3BitstreamMode' "EMERGENCY"

pattern Ac3BitstreamModeHEARINGIMPAIRED :: Ac3BitstreamMode
pattern Ac3BitstreamModeHEARINGIMPAIRED = Ac3BitstreamMode' "HEARING_IMPAIRED"

pattern Ac3BitstreamModeMUSICANDEFFECTS :: Ac3BitstreamMode
pattern Ac3BitstreamModeMUSICANDEFFECTS = Ac3BitstreamMode' "MUSIC_AND_EFFECTS"

pattern Ac3BitstreamModeVISUALLYIMPAIRED :: Ac3BitstreamMode
pattern Ac3BitstreamModeVISUALLYIMPAIRED = Ac3BitstreamMode' "VISUALLY_IMPAIRED"

pattern Ac3BitstreamModeVOICEOVER :: Ac3BitstreamMode
pattern Ac3BitstreamModeVOICEOVER = Ac3BitstreamMode' "VOICE_OVER"

{-# COMPLETE
  Ac3BitstreamModeCOMMENTARY,
  Ac3BitstreamModeCOMPLETEMAIN,
  Ac3BitstreamModeDIALOGUE,
  Ac3BitstreamModeEMERGENCY,
  Ac3BitstreamModeHEARINGIMPAIRED,
  Ac3BitstreamModeMUSICANDEFFECTS,
  Ac3BitstreamModeVISUALLYIMPAIRED,
  Ac3BitstreamModeVOICEOVER,
  Ac3BitstreamMode'
  #-}

instance Prelude.FromText Ac3BitstreamMode where
  parser = Ac3BitstreamMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Ac3BitstreamMode where
  toText (Ac3BitstreamMode' x) = x

instance Prelude.Hashable Ac3BitstreamMode

instance Prelude.NFData Ac3BitstreamMode

instance Prelude.ToByteString Ac3BitstreamMode

instance Prelude.ToQuery Ac3BitstreamMode

instance Prelude.ToHeader Ac3BitstreamMode

instance Prelude.ToJSON Ac3BitstreamMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Ac3BitstreamMode where
  parseJSON = Prelude.parseJSONText "Ac3BitstreamMode"
