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
-- Module      : Network.AWS.MediaConvert.Types.Vc3Telecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3Telecine
  ( Vc3Telecine
      ( ..,
        Vc3TelecineHARD,
        Vc3TelecineNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When you do frame rate conversion from 23.976 frames per second (fps) to
-- 29.97 fps, and your output scan type is interlaced, you can optionally
-- enable hard telecine (HARD) to create a smoother picture. When you keep
-- the default value, None (NONE), MediaConvert does a standard frame rate
-- conversion to 29.97 without doing anything with the field polarity to
-- create a smoother picture.
newtype Vc3Telecine = Vc3Telecine'
  { fromVc3Telecine ::
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

pattern Vc3TelecineHARD :: Vc3Telecine
pattern Vc3TelecineHARD = Vc3Telecine' "HARD"

pattern Vc3TelecineNONE :: Vc3Telecine
pattern Vc3TelecineNONE = Vc3Telecine' "NONE"

{-# COMPLETE
  Vc3TelecineHARD,
  Vc3TelecineNONE,
  Vc3Telecine'
  #-}

instance Prelude.FromText Vc3Telecine where
  parser = Vc3Telecine' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vc3Telecine where
  toText (Vc3Telecine' x) = x

instance Prelude.Hashable Vc3Telecine

instance Prelude.NFData Vc3Telecine

instance Prelude.ToByteString Vc3Telecine

instance Prelude.ToQuery Vc3Telecine

instance Prelude.ToHeader Vc3Telecine

instance Prelude.ToJSON Vc3Telecine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vc3Telecine where
  parseJSON = Prelude.parseJSONText "Vc3Telecine"
