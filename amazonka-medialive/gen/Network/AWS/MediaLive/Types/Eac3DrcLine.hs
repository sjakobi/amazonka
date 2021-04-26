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
-- Module      : Network.AWS.MediaLive.Types.Eac3DrcLine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3DrcLine
  ( Eac3DrcLine
      ( ..,
        Eac3DrcLineFILMLIGHT,
        Eac3DrcLineFILMSTANDARD,
        Eac3DrcLineMUSICLIGHT,
        Eac3DrcLineMUSICSTANDARD,
        Eac3DrcLineNONE,
        Eac3DrcLineSPEECH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Drc Line
newtype Eac3DrcLine = Eac3DrcLine'
  { fromEac3DrcLine ::
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

pattern Eac3DrcLineFILMLIGHT :: Eac3DrcLine
pattern Eac3DrcLineFILMLIGHT = Eac3DrcLine' "FILM_LIGHT"

pattern Eac3DrcLineFILMSTANDARD :: Eac3DrcLine
pattern Eac3DrcLineFILMSTANDARD = Eac3DrcLine' "FILM_STANDARD"

pattern Eac3DrcLineMUSICLIGHT :: Eac3DrcLine
pattern Eac3DrcLineMUSICLIGHT = Eac3DrcLine' "MUSIC_LIGHT"

pattern Eac3DrcLineMUSICSTANDARD :: Eac3DrcLine
pattern Eac3DrcLineMUSICSTANDARD = Eac3DrcLine' "MUSIC_STANDARD"

pattern Eac3DrcLineNONE :: Eac3DrcLine
pattern Eac3DrcLineNONE = Eac3DrcLine' "NONE"

pattern Eac3DrcLineSPEECH :: Eac3DrcLine
pattern Eac3DrcLineSPEECH = Eac3DrcLine' "SPEECH"

{-# COMPLETE
  Eac3DrcLineFILMLIGHT,
  Eac3DrcLineFILMSTANDARD,
  Eac3DrcLineMUSICLIGHT,
  Eac3DrcLineMUSICSTANDARD,
  Eac3DrcLineNONE,
  Eac3DrcLineSPEECH,
  Eac3DrcLine'
  #-}

instance Prelude.FromText Eac3DrcLine where
  parser = Eac3DrcLine' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3DrcLine where
  toText (Eac3DrcLine' x) = x

instance Prelude.Hashable Eac3DrcLine

instance Prelude.NFData Eac3DrcLine

instance Prelude.ToByteString Eac3DrcLine

instance Prelude.ToQuery Eac3DrcLine

instance Prelude.ToHeader Eac3DrcLine

instance Prelude.ToJSON Eac3DrcLine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3DrcLine where
  parseJSON = Prelude.parseJSONText "Eac3DrcLine"
