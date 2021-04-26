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
-- Module      : Network.AWS.MediaLive.Types.NielsenPcmToId3TaggingState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.NielsenPcmToId3TaggingState
  ( NielsenPcmToId3TaggingState
      ( ..,
        NielsenPcmToId3TaggingStateDISABLED,
        NielsenPcmToId3TaggingStateENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | State of Nielsen PCM to ID3 tagging
newtype NielsenPcmToId3TaggingState = NielsenPcmToId3TaggingState'
  { fromNielsenPcmToId3TaggingState ::
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

pattern NielsenPcmToId3TaggingStateDISABLED :: NielsenPcmToId3TaggingState
pattern NielsenPcmToId3TaggingStateDISABLED = NielsenPcmToId3TaggingState' "DISABLED"

pattern NielsenPcmToId3TaggingStateENABLED :: NielsenPcmToId3TaggingState
pattern NielsenPcmToId3TaggingStateENABLED = NielsenPcmToId3TaggingState' "ENABLED"

{-# COMPLETE
  NielsenPcmToId3TaggingStateDISABLED,
  NielsenPcmToId3TaggingStateENABLED,
  NielsenPcmToId3TaggingState'
  #-}

instance Prelude.FromText NielsenPcmToId3TaggingState where
  parser = NielsenPcmToId3TaggingState' Prelude.<$> Prelude.takeText

instance Prelude.ToText NielsenPcmToId3TaggingState where
  toText (NielsenPcmToId3TaggingState' x) = x

instance Prelude.Hashable NielsenPcmToId3TaggingState

instance Prelude.NFData NielsenPcmToId3TaggingState

instance Prelude.ToByteString NielsenPcmToId3TaggingState

instance Prelude.ToQuery NielsenPcmToId3TaggingState

instance Prelude.ToHeader NielsenPcmToId3TaggingState

instance Prelude.ToJSON NielsenPcmToId3TaggingState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NielsenPcmToId3TaggingState where
  parseJSON = Prelude.parseJSONText "NielsenPcmToId3TaggingState"
