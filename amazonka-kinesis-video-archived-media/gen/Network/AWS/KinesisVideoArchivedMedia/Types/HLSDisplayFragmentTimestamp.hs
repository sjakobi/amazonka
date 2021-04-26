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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.HLSDisplayFragmentTimestamp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.HLSDisplayFragmentTimestamp
  ( HLSDisplayFragmentTimestamp
      ( ..,
        HLSDisplayFragmentTimestampALWAYS,
        HLSDisplayFragmentTimestampNEVER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HLSDisplayFragmentTimestamp = HLSDisplayFragmentTimestamp'
  { fromHLSDisplayFragmentTimestamp ::
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

pattern HLSDisplayFragmentTimestampALWAYS :: HLSDisplayFragmentTimestamp
pattern HLSDisplayFragmentTimestampALWAYS = HLSDisplayFragmentTimestamp' "ALWAYS"

pattern HLSDisplayFragmentTimestampNEVER :: HLSDisplayFragmentTimestamp
pattern HLSDisplayFragmentTimestampNEVER = HLSDisplayFragmentTimestamp' "NEVER"

{-# COMPLETE
  HLSDisplayFragmentTimestampALWAYS,
  HLSDisplayFragmentTimestampNEVER,
  HLSDisplayFragmentTimestamp'
  #-}

instance Prelude.FromText HLSDisplayFragmentTimestamp where
  parser = HLSDisplayFragmentTimestamp' Prelude.<$> Prelude.takeText

instance Prelude.ToText HLSDisplayFragmentTimestamp where
  toText (HLSDisplayFragmentTimestamp' x) = x

instance Prelude.Hashable HLSDisplayFragmentTimestamp

instance Prelude.NFData HLSDisplayFragmentTimestamp

instance Prelude.ToByteString HLSDisplayFragmentTimestamp

instance Prelude.ToQuery HLSDisplayFragmentTimestamp

instance Prelude.ToHeader HLSDisplayFragmentTimestamp

instance Prelude.ToJSON HLSDisplayFragmentTimestamp where
  toJSON = Prelude.toJSONText
