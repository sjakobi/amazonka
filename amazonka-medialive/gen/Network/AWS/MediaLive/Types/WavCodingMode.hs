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
-- Module      : Network.AWS.MediaLive.Types.WavCodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.WavCodingMode
  ( WavCodingMode
      ( ..,
        WavCodingModeCODINGMODE10,
        WavCodingModeCODINGMODE20,
        WavCodingModeCODINGMODE40,
        WavCodingModeCODINGMODE80
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Wav Coding Mode
newtype WavCodingMode = WavCodingMode'
  { fromWavCodingMode ::
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

pattern WavCodingModeCODINGMODE10 :: WavCodingMode
pattern WavCodingModeCODINGMODE10 = WavCodingMode' "CODING_MODE_1_0"

pattern WavCodingModeCODINGMODE20 :: WavCodingMode
pattern WavCodingModeCODINGMODE20 = WavCodingMode' "CODING_MODE_2_0"

pattern WavCodingModeCODINGMODE40 :: WavCodingMode
pattern WavCodingModeCODINGMODE40 = WavCodingMode' "CODING_MODE_4_0"

pattern WavCodingModeCODINGMODE80 :: WavCodingMode
pattern WavCodingModeCODINGMODE80 = WavCodingMode' "CODING_MODE_8_0"

{-# COMPLETE
  WavCodingModeCODINGMODE10,
  WavCodingModeCODINGMODE20,
  WavCodingModeCODINGMODE40,
  WavCodingModeCODINGMODE80,
  WavCodingMode'
  #-}

instance Prelude.FromText WavCodingMode where
  parser = WavCodingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText WavCodingMode where
  toText (WavCodingMode' x) = x

instance Prelude.Hashable WavCodingMode

instance Prelude.NFData WavCodingMode

instance Prelude.ToByteString WavCodingMode

instance Prelude.ToQuery WavCodingMode

instance Prelude.ToHeader WavCodingMode

instance Prelude.ToJSON WavCodingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WavCodingMode where
  parseJSON = Prelude.parseJSONText "WavCodingMode"
