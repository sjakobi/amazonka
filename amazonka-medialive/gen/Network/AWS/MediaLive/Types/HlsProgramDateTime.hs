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
-- Module      : Network.AWS.MediaLive.Types.HlsProgramDateTime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsProgramDateTime
  ( HlsProgramDateTime
      ( ..,
        HlsProgramDateTimeEXCLUDE,
        HlsProgramDateTimeINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Program Date Time
newtype HlsProgramDateTime = HlsProgramDateTime'
  { fromHlsProgramDateTime ::
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

pattern HlsProgramDateTimeEXCLUDE :: HlsProgramDateTime
pattern HlsProgramDateTimeEXCLUDE = HlsProgramDateTime' "EXCLUDE"

pattern HlsProgramDateTimeINCLUDE :: HlsProgramDateTime
pattern HlsProgramDateTimeINCLUDE = HlsProgramDateTime' "INCLUDE"

{-# COMPLETE
  HlsProgramDateTimeEXCLUDE,
  HlsProgramDateTimeINCLUDE,
  HlsProgramDateTime'
  #-}

instance Prelude.FromText HlsProgramDateTime where
  parser = HlsProgramDateTime' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsProgramDateTime where
  toText (HlsProgramDateTime' x) = x

instance Prelude.Hashable HlsProgramDateTime

instance Prelude.NFData HlsProgramDateTime

instance Prelude.ToByteString HlsProgramDateTime

instance Prelude.ToQuery HlsProgramDateTime

instance Prelude.ToHeader HlsProgramDateTime

instance Prelude.ToJSON HlsProgramDateTime where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsProgramDateTime where
  parseJSON = Prelude.parseJSONText "HlsProgramDateTime"
