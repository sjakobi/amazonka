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
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosMeteringMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosMeteringMode
  ( Eac3AtmosMeteringMode
      ( ..,
        Eac3AtmosMeteringModeITUBS17701,
        Eac3AtmosMeteringModeITUBS17702,
        Eac3AtmosMeteringModeITUBS17703,
        Eac3AtmosMeteringModeITUBS17704,
        Eac3AtmosMeteringModeLEQA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose how the service meters the loudness of your audio.
newtype Eac3AtmosMeteringMode = Eac3AtmosMeteringMode'
  { fromEac3AtmosMeteringMode ::
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

pattern Eac3AtmosMeteringModeITUBS17701 :: Eac3AtmosMeteringMode
pattern Eac3AtmosMeteringModeITUBS17701 = Eac3AtmosMeteringMode' "ITU_BS_1770_1"

pattern Eac3AtmosMeteringModeITUBS17702 :: Eac3AtmosMeteringMode
pattern Eac3AtmosMeteringModeITUBS17702 = Eac3AtmosMeteringMode' "ITU_BS_1770_2"

pattern Eac3AtmosMeteringModeITUBS17703 :: Eac3AtmosMeteringMode
pattern Eac3AtmosMeteringModeITUBS17703 = Eac3AtmosMeteringMode' "ITU_BS_1770_3"

pattern Eac3AtmosMeteringModeITUBS17704 :: Eac3AtmosMeteringMode
pattern Eac3AtmosMeteringModeITUBS17704 = Eac3AtmosMeteringMode' "ITU_BS_1770_4"

pattern Eac3AtmosMeteringModeLEQA :: Eac3AtmosMeteringMode
pattern Eac3AtmosMeteringModeLEQA = Eac3AtmosMeteringMode' "LEQ_A"

{-# COMPLETE
  Eac3AtmosMeteringModeITUBS17701,
  Eac3AtmosMeteringModeITUBS17702,
  Eac3AtmosMeteringModeITUBS17703,
  Eac3AtmosMeteringModeITUBS17704,
  Eac3AtmosMeteringModeLEQA,
  Eac3AtmosMeteringMode'
  #-}

instance Prelude.FromText Eac3AtmosMeteringMode where
  parser = Eac3AtmosMeteringMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3AtmosMeteringMode where
  toText (Eac3AtmosMeteringMode' x) = x

instance Prelude.Hashable Eac3AtmosMeteringMode

instance Prelude.NFData Eac3AtmosMeteringMode

instance Prelude.ToByteString Eac3AtmosMeteringMode

instance Prelude.ToQuery Eac3AtmosMeteringMode

instance Prelude.ToHeader Eac3AtmosMeteringMode

instance Prelude.ToJSON Eac3AtmosMeteringMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3AtmosMeteringMode where
  parseJSON = Prelude.parseJSONText "Eac3AtmosMeteringMode"
