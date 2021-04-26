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
-- Module      : Network.AWS.AlexaBusiness.Types.WakeWord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.WakeWord
  ( WakeWord
      ( ..,
        WakeWordALEXA,
        WakeWordAMAZON,
        WakeWordCOMPUTER,
        WakeWordECHO
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WakeWord = WakeWord'
  { fromWakeWord ::
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

pattern WakeWordALEXA :: WakeWord
pattern WakeWordALEXA = WakeWord' "ALEXA"

pattern WakeWordAMAZON :: WakeWord
pattern WakeWordAMAZON = WakeWord' "AMAZON"

pattern WakeWordCOMPUTER :: WakeWord
pattern WakeWordCOMPUTER = WakeWord' "COMPUTER"

pattern WakeWordECHO :: WakeWord
pattern WakeWordECHO = WakeWord' "ECHO"

{-# COMPLETE
  WakeWordALEXA,
  WakeWordAMAZON,
  WakeWordCOMPUTER,
  WakeWordECHO,
  WakeWord'
  #-}

instance Prelude.FromText WakeWord where
  parser = WakeWord' Prelude.<$> Prelude.takeText

instance Prelude.ToText WakeWord where
  toText (WakeWord' x) = x

instance Prelude.Hashable WakeWord

instance Prelude.NFData WakeWord

instance Prelude.ToByteString WakeWord

instance Prelude.ToQuery WakeWord

instance Prelude.ToHeader WakeWord

instance Prelude.ToJSON WakeWord where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WakeWord where
  parseJSON = Prelude.parseJSONText "WakeWord"
