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
-- Module      : Network.AWS.MediaLive.Types.Ac3DrcProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3DrcProfile
  ( Ac3DrcProfile
      ( ..,
        Ac3DrcProfileFILMSTANDARD,
        Ac3DrcProfileNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ac3 Drc Profile
newtype Ac3DrcProfile = Ac3DrcProfile'
  { fromAc3DrcProfile ::
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

pattern Ac3DrcProfileFILMSTANDARD :: Ac3DrcProfile
pattern Ac3DrcProfileFILMSTANDARD = Ac3DrcProfile' "FILM_STANDARD"

pattern Ac3DrcProfileNONE :: Ac3DrcProfile
pattern Ac3DrcProfileNONE = Ac3DrcProfile' "NONE"

{-# COMPLETE
  Ac3DrcProfileFILMSTANDARD,
  Ac3DrcProfileNONE,
  Ac3DrcProfile'
  #-}

instance Prelude.FromText Ac3DrcProfile where
  parser = Ac3DrcProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText Ac3DrcProfile where
  toText (Ac3DrcProfile' x) = x

instance Prelude.Hashable Ac3DrcProfile

instance Prelude.NFData Ac3DrcProfile

instance Prelude.ToByteString Ac3DrcProfile

instance Prelude.ToQuery Ac3DrcProfile

instance Prelude.ToHeader Ac3DrcProfile

instance Prelude.ToJSON Ac3DrcProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Ac3DrcProfile where
  parseJSON = Prelude.parseJSONText "Ac3DrcProfile"
