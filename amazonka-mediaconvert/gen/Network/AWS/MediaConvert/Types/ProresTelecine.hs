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
-- Module      : Network.AWS.MediaConvert.Types.ProresTelecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresTelecine
  ( ProresTelecine
      ( ..,
        ProresTelecineHARD,
        ProresTelecineNONE
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
newtype ProresTelecine = ProresTelecine'
  { fromProresTelecine ::
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

pattern ProresTelecineHARD :: ProresTelecine
pattern ProresTelecineHARD = ProresTelecine' "HARD"

pattern ProresTelecineNONE :: ProresTelecine
pattern ProresTelecineNONE = ProresTelecine' "NONE"

{-# COMPLETE
  ProresTelecineHARD,
  ProresTelecineNONE,
  ProresTelecine'
  #-}

instance Prelude.FromText ProresTelecine where
  parser = ProresTelecine' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProresTelecine where
  toText (ProresTelecine' x) = x

instance Prelude.Hashable ProresTelecine

instance Prelude.NFData ProresTelecine

instance Prelude.ToByteString ProresTelecine

instance Prelude.ToQuery ProresTelecine

instance Prelude.ToHeader ProresTelecine

instance Prelude.ToJSON ProresTelecine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProresTelecine where
  parseJSON = Prelude.parseJSONText "ProresTelecine"
