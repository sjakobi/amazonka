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
-- Module      : Network.AWS.MediaConvert.Types.MsSmoothAudioDeduplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MsSmoothAudioDeduplication
  ( MsSmoothAudioDeduplication
      ( ..,
        MsSmoothAudioDeduplicationCOMBINEDUPLICATESTREAMS,
        MsSmoothAudioDeduplicationNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings
-- across a Microsoft Smooth output group into a single audio stream.
newtype MsSmoothAudioDeduplication = MsSmoothAudioDeduplication'
  { fromMsSmoothAudioDeduplication ::
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

pattern MsSmoothAudioDeduplicationCOMBINEDUPLICATESTREAMS :: MsSmoothAudioDeduplication
pattern MsSmoothAudioDeduplicationCOMBINEDUPLICATESTREAMS = MsSmoothAudioDeduplication' "COMBINE_DUPLICATE_STREAMS"

pattern MsSmoothAudioDeduplicationNONE :: MsSmoothAudioDeduplication
pattern MsSmoothAudioDeduplicationNONE = MsSmoothAudioDeduplication' "NONE"

{-# COMPLETE
  MsSmoothAudioDeduplicationCOMBINEDUPLICATESTREAMS,
  MsSmoothAudioDeduplicationNONE,
  MsSmoothAudioDeduplication'
  #-}

instance Prelude.FromText MsSmoothAudioDeduplication where
  parser = MsSmoothAudioDeduplication' Prelude.<$> Prelude.takeText

instance Prelude.ToText MsSmoothAudioDeduplication where
  toText (MsSmoothAudioDeduplication' x) = x

instance Prelude.Hashable MsSmoothAudioDeduplication

instance Prelude.NFData MsSmoothAudioDeduplication

instance Prelude.ToByteString MsSmoothAudioDeduplication

instance Prelude.ToQuery MsSmoothAudioDeduplication

instance Prelude.ToHeader MsSmoothAudioDeduplication

instance Prelude.ToJSON MsSmoothAudioDeduplication where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MsSmoothAudioDeduplication where
  parseJSON = Prelude.parseJSONText "MsSmoothAudioDeduplication"
