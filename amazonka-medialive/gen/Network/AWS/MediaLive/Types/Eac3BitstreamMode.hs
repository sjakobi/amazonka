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
-- Module      : Network.AWS.MediaLive.Types.Eac3BitstreamMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3BitstreamMode
  ( Eac3BitstreamMode
      ( ..,
        Eac3BitstreamModeCOMMENTARY,
        Eac3BitstreamModeCOMPLETEMAIN,
        Eac3BitstreamModeEMERGENCY,
        Eac3BitstreamModeHEARINGIMPAIRED,
        Eac3BitstreamModeVISUALLYIMPAIRED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Bitstream Mode
newtype Eac3BitstreamMode = Eac3BitstreamMode'
  { fromEac3BitstreamMode ::
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

pattern Eac3BitstreamModeCOMMENTARY :: Eac3BitstreamMode
pattern Eac3BitstreamModeCOMMENTARY = Eac3BitstreamMode' "COMMENTARY"

pattern Eac3BitstreamModeCOMPLETEMAIN :: Eac3BitstreamMode
pattern Eac3BitstreamModeCOMPLETEMAIN = Eac3BitstreamMode' "COMPLETE_MAIN"

pattern Eac3BitstreamModeEMERGENCY :: Eac3BitstreamMode
pattern Eac3BitstreamModeEMERGENCY = Eac3BitstreamMode' "EMERGENCY"

pattern Eac3BitstreamModeHEARINGIMPAIRED :: Eac3BitstreamMode
pattern Eac3BitstreamModeHEARINGIMPAIRED = Eac3BitstreamMode' "HEARING_IMPAIRED"

pattern Eac3BitstreamModeVISUALLYIMPAIRED :: Eac3BitstreamMode
pattern Eac3BitstreamModeVISUALLYIMPAIRED = Eac3BitstreamMode' "VISUALLY_IMPAIRED"

{-# COMPLETE
  Eac3BitstreamModeCOMMENTARY,
  Eac3BitstreamModeCOMPLETEMAIN,
  Eac3BitstreamModeEMERGENCY,
  Eac3BitstreamModeHEARINGIMPAIRED,
  Eac3BitstreamModeVISUALLYIMPAIRED,
  Eac3BitstreamMode'
  #-}

instance Prelude.FromText Eac3BitstreamMode where
  parser = Eac3BitstreamMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3BitstreamMode where
  toText (Eac3BitstreamMode' x) = x

instance Prelude.Hashable Eac3BitstreamMode

instance Prelude.NFData Eac3BitstreamMode

instance Prelude.ToByteString Eac3BitstreamMode

instance Prelude.ToQuery Eac3BitstreamMode

instance Prelude.ToHeader Eac3BitstreamMode

instance Prelude.ToJSON Eac3BitstreamMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3BitstreamMode where
  parseJSON = Prelude.parseJSONText "Eac3BitstreamMode"
