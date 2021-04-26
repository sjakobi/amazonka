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
-- Module      : Network.AWS.MediaConvert.Types.NielsenUniqueTicPerAudioTrackType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NielsenUniqueTicPerAudioTrackType
  ( NielsenUniqueTicPerAudioTrackType
      ( ..,
        NielsenUniqueTicPerAudioTrackTypeRESERVEUNIQUETICSPERTRACK,
        NielsenUniqueTicPerAudioTrackTypeSAMETICSPERTRACK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | To create assets that have the same TIC values in each audio track, keep
-- the default value Share TICs (SAME_TICS_PER_TRACK). To create assets
-- that have unique TIC values for each audio track, choose Use unique TICs
-- (RESERVE_UNIQUE_TICS_PER_TRACK).
newtype NielsenUniqueTicPerAudioTrackType = NielsenUniqueTicPerAudioTrackType'
  { fromNielsenUniqueTicPerAudioTrackType ::
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

pattern NielsenUniqueTicPerAudioTrackTypeRESERVEUNIQUETICSPERTRACK :: NielsenUniqueTicPerAudioTrackType
pattern NielsenUniqueTicPerAudioTrackTypeRESERVEUNIQUETICSPERTRACK = NielsenUniqueTicPerAudioTrackType' "RESERVE_UNIQUE_TICS_PER_TRACK"

pattern NielsenUniqueTicPerAudioTrackTypeSAMETICSPERTRACK :: NielsenUniqueTicPerAudioTrackType
pattern NielsenUniqueTicPerAudioTrackTypeSAMETICSPERTRACK = NielsenUniqueTicPerAudioTrackType' "SAME_TICS_PER_TRACK"

{-# COMPLETE
  NielsenUniqueTicPerAudioTrackTypeRESERVEUNIQUETICSPERTRACK,
  NielsenUniqueTicPerAudioTrackTypeSAMETICSPERTRACK,
  NielsenUniqueTicPerAudioTrackType'
  #-}

instance Prelude.FromText NielsenUniqueTicPerAudioTrackType where
  parser = NielsenUniqueTicPerAudioTrackType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NielsenUniqueTicPerAudioTrackType where
  toText (NielsenUniqueTicPerAudioTrackType' x) = x

instance Prelude.Hashable NielsenUniqueTicPerAudioTrackType

instance Prelude.NFData NielsenUniqueTicPerAudioTrackType

instance Prelude.ToByteString NielsenUniqueTicPerAudioTrackType

instance Prelude.ToQuery NielsenUniqueTicPerAudioTrackType

instance Prelude.ToHeader NielsenUniqueTicPerAudioTrackType

instance Prelude.ToJSON NielsenUniqueTicPerAudioTrackType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NielsenUniqueTicPerAudioTrackType where
  parseJSON = Prelude.parseJSONText "NielsenUniqueTicPerAudioTrackType"
