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
-- Module      : Network.AWS.MediaLive.Types.Eac3DrcRf
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3DrcRf
  ( Eac3DrcRf
      ( ..,
        Eac3DrcRfFILMLIGHT,
        Eac3DrcRfFILMSTANDARD,
        Eac3DrcRfMUSICLIGHT,
        Eac3DrcRfMUSICSTANDARD,
        Eac3DrcRfNONE,
        Eac3DrcRfSPEECH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Drc Rf
newtype Eac3DrcRf = Eac3DrcRf'
  { fromEac3DrcRf ::
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

pattern Eac3DrcRfFILMLIGHT :: Eac3DrcRf
pattern Eac3DrcRfFILMLIGHT = Eac3DrcRf' "FILM_LIGHT"

pattern Eac3DrcRfFILMSTANDARD :: Eac3DrcRf
pattern Eac3DrcRfFILMSTANDARD = Eac3DrcRf' "FILM_STANDARD"

pattern Eac3DrcRfMUSICLIGHT :: Eac3DrcRf
pattern Eac3DrcRfMUSICLIGHT = Eac3DrcRf' "MUSIC_LIGHT"

pattern Eac3DrcRfMUSICSTANDARD :: Eac3DrcRf
pattern Eac3DrcRfMUSICSTANDARD = Eac3DrcRf' "MUSIC_STANDARD"

pattern Eac3DrcRfNONE :: Eac3DrcRf
pattern Eac3DrcRfNONE = Eac3DrcRf' "NONE"

pattern Eac3DrcRfSPEECH :: Eac3DrcRf
pattern Eac3DrcRfSPEECH = Eac3DrcRf' "SPEECH"

{-# COMPLETE
  Eac3DrcRfFILMLIGHT,
  Eac3DrcRfFILMSTANDARD,
  Eac3DrcRfMUSICLIGHT,
  Eac3DrcRfMUSICSTANDARD,
  Eac3DrcRfNONE,
  Eac3DrcRfSPEECH,
  Eac3DrcRf'
  #-}

instance Prelude.FromText Eac3DrcRf where
  parser = Eac3DrcRf' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3DrcRf where
  toText (Eac3DrcRf' x) = x

instance Prelude.Hashable Eac3DrcRf

instance Prelude.NFData Eac3DrcRf

instance Prelude.ToByteString Eac3DrcRf

instance Prelude.ToQuery Eac3DrcRf

instance Prelude.ToHeader Eac3DrcRf

instance Prelude.ToJSON Eac3DrcRf where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3DrcRf where
  parseJSON = Prelude.parseJSONText "Eac3DrcRf"
