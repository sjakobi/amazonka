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
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraTelecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraTelecine
  ( AvcIntraTelecine
      ( ..,
        AvcIntraTelecineHARD,
        AvcIntraTelecineNONE
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
newtype AvcIntraTelecine = AvcIntraTelecine'
  { fromAvcIntraTelecine ::
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

pattern AvcIntraTelecineHARD :: AvcIntraTelecine
pattern AvcIntraTelecineHARD = AvcIntraTelecine' "HARD"

pattern AvcIntraTelecineNONE :: AvcIntraTelecine
pattern AvcIntraTelecineNONE = AvcIntraTelecine' "NONE"

{-# COMPLETE
  AvcIntraTelecineHARD,
  AvcIntraTelecineNONE,
  AvcIntraTelecine'
  #-}

instance Prelude.FromText AvcIntraTelecine where
  parser = AvcIntraTelecine' Prelude.<$> Prelude.takeText

instance Prelude.ToText AvcIntraTelecine where
  toText (AvcIntraTelecine' x) = x

instance Prelude.Hashable AvcIntraTelecine

instance Prelude.NFData AvcIntraTelecine

instance Prelude.ToByteString AvcIntraTelecine

instance Prelude.ToQuery AvcIntraTelecine

instance Prelude.ToHeader AvcIntraTelecine

instance Prelude.ToJSON AvcIntraTelecine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AvcIntraTelecine where
  parseJSON = Prelude.parseJSONText "AvcIntraTelecine"
