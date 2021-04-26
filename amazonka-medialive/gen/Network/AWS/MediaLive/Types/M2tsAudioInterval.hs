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
-- Module      : Network.AWS.MediaLive.Types.M2tsAudioInterval
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAudioInterval
  ( M2tsAudioInterval
      ( ..,
        M2tsAudioIntervalVIDEOANDFIXEDINTERVALS,
        M2tsAudioIntervalVIDEOINTERVAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Audio Interval
newtype M2tsAudioInterval = M2tsAudioInterval'
  { fromM2tsAudioInterval ::
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

pattern M2tsAudioIntervalVIDEOANDFIXEDINTERVALS :: M2tsAudioInterval
pattern M2tsAudioIntervalVIDEOANDFIXEDINTERVALS = M2tsAudioInterval' "VIDEO_AND_FIXED_INTERVALS"

pattern M2tsAudioIntervalVIDEOINTERVAL :: M2tsAudioInterval
pattern M2tsAudioIntervalVIDEOINTERVAL = M2tsAudioInterval' "VIDEO_INTERVAL"

{-# COMPLETE
  M2tsAudioIntervalVIDEOANDFIXEDINTERVALS,
  M2tsAudioIntervalVIDEOINTERVAL,
  M2tsAudioInterval'
  #-}

instance Prelude.FromText M2tsAudioInterval where
  parser = M2tsAudioInterval' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsAudioInterval where
  toText (M2tsAudioInterval' x) = x

instance Prelude.Hashable M2tsAudioInterval

instance Prelude.NFData M2tsAudioInterval

instance Prelude.ToByteString M2tsAudioInterval

instance Prelude.ToQuery M2tsAudioInterval

instance Prelude.ToHeader M2tsAudioInterval

instance Prelude.ToJSON M2tsAudioInterval where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsAudioInterval where
  parseJSON = Prelude.parseJSONText "M2tsAudioInterval"
