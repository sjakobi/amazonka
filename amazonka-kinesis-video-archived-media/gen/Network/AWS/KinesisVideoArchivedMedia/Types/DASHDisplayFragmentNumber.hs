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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.DASHDisplayFragmentNumber
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.DASHDisplayFragmentNumber
  ( DASHDisplayFragmentNumber
      ( ..,
        DASHDisplayFragmentNumberALWAYS,
        DASHDisplayFragmentNumberNEVER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DASHDisplayFragmentNumber = DASHDisplayFragmentNumber'
  { fromDASHDisplayFragmentNumber ::
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

pattern DASHDisplayFragmentNumberALWAYS :: DASHDisplayFragmentNumber
pattern DASHDisplayFragmentNumberALWAYS = DASHDisplayFragmentNumber' "ALWAYS"

pattern DASHDisplayFragmentNumberNEVER :: DASHDisplayFragmentNumber
pattern DASHDisplayFragmentNumberNEVER = DASHDisplayFragmentNumber' "NEVER"

{-# COMPLETE
  DASHDisplayFragmentNumberALWAYS,
  DASHDisplayFragmentNumberNEVER,
  DASHDisplayFragmentNumber'
  #-}

instance Prelude.FromText DASHDisplayFragmentNumber where
  parser = DASHDisplayFragmentNumber' Prelude.<$> Prelude.takeText

instance Prelude.ToText DASHDisplayFragmentNumber where
  toText (DASHDisplayFragmentNumber' x) = x

instance Prelude.Hashable DASHDisplayFragmentNumber

instance Prelude.NFData DASHDisplayFragmentNumber

instance Prelude.ToByteString DASHDisplayFragmentNumber

instance Prelude.ToQuery DASHDisplayFragmentNumber

instance Prelude.ToHeader DASHDisplayFragmentNumber

instance Prelude.ToJSON DASHDisplayFragmentNumber where
  toJSON = Prelude.toJSONText
