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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.DASHDisplayFragmentTimestamp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.DASHDisplayFragmentTimestamp
  ( DASHDisplayFragmentTimestamp
      ( ..,
        DASHDisplayFragmentTimestampALWAYS,
        DASHDisplayFragmentTimestampNEVER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DASHDisplayFragmentTimestamp = DASHDisplayFragmentTimestamp'
  { fromDASHDisplayFragmentTimestamp ::
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

pattern DASHDisplayFragmentTimestampALWAYS :: DASHDisplayFragmentTimestamp
pattern DASHDisplayFragmentTimestampALWAYS = DASHDisplayFragmentTimestamp' "ALWAYS"

pattern DASHDisplayFragmentTimestampNEVER :: DASHDisplayFragmentTimestamp
pattern DASHDisplayFragmentTimestampNEVER = DASHDisplayFragmentTimestamp' "NEVER"

{-# COMPLETE
  DASHDisplayFragmentTimestampALWAYS,
  DASHDisplayFragmentTimestampNEVER,
  DASHDisplayFragmentTimestamp'
  #-}

instance Prelude.FromText DASHDisplayFragmentTimestamp where
  parser = DASHDisplayFragmentTimestamp' Prelude.<$> Prelude.takeText

instance Prelude.ToText DASHDisplayFragmentTimestamp where
  toText (DASHDisplayFragmentTimestamp' x) = x

instance Prelude.Hashable DASHDisplayFragmentTimestamp

instance Prelude.NFData DASHDisplayFragmentTimestamp

instance Prelude.ToByteString DASHDisplayFragmentTimestamp

instance Prelude.ToQuery DASHDisplayFragmentTimestamp

instance Prelude.ToHeader DASHDisplayFragmentTimestamp

instance Prelude.ToJSON DASHDisplayFragmentTimestamp where
  toJSON = Prelude.toJSONText
