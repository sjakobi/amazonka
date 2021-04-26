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
-- Module      : Network.AWS.MediaLive.Types.M2tsAudioStreamType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAudioStreamType
  ( M2tsAudioStreamType
      ( ..,
        M2tsAudioStreamTypeATSC,
        M2tsAudioStreamTypeDVB
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | M2ts Audio Stream Type
newtype M2tsAudioStreamType = M2tsAudioStreamType'
  { fromM2tsAudioStreamType ::
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

pattern M2tsAudioStreamTypeATSC :: M2tsAudioStreamType
pattern M2tsAudioStreamTypeATSC = M2tsAudioStreamType' "ATSC"

pattern M2tsAudioStreamTypeDVB :: M2tsAudioStreamType
pattern M2tsAudioStreamTypeDVB = M2tsAudioStreamType' "DVB"

{-# COMPLETE
  M2tsAudioStreamTypeATSC,
  M2tsAudioStreamTypeDVB,
  M2tsAudioStreamType'
  #-}

instance Prelude.FromText M2tsAudioStreamType where
  parser = M2tsAudioStreamType' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsAudioStreamType where
  toText (M2tsAudioStreamType' x) = x

instance Prelude.Hashable M2tsAudioStreamType

instance Prelude.NFData M2tsAudioStreamType

instance Prelude.ToByteString M2tsAudioStreamType

instance Prelude.ToQuery M2tsAudioStreamType

instance Prelude.ToHeader M2tsAudioStreamType

instance Prelude.ToJSON M2tsAudioStreamType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsAudioStreamType where
  parseJSON = Prelude.parseJSONText "M2tsAudioStreamType"
