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
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationAlignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationAlignment
  ( DvbSubDestinationAlignment
      ( ..,
        DvbSubDestinationAlignmentCENTERED,
        DvbSubDestinationAlignmentLEFT,
        DvbSubDestinationAlignmentSMART
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Dvb Sub Destination Alignment
newtype DvbSubDestinationAlignment = DvbSubDestinationAlignment'
  { fromDvbSubDestinationAlignment ::
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

pattern DvbSubDestinationAlignmentCENTERED :: DvbSubDestinationAlignment
pattern DvbSubDestinationAlignmentCENTERED = DvbSubDestinationAlignment' "CENTERED"

pattern DvbSubDestinationAlignmentLEFT :: DvbSubDestinationAlignment
pattern DvbSubDestinationAlignmentLEFT = DvbSubDestinationAlignment' "LEFT"

pattern DvbSubDestinationAlignmentSMART :: DvbSubDestinationAlignment
pattern DvbSubDestinationAlignmentSMART = DvbSubDestinationAlignment' "SMART"

{-# COMPLETE
  DvbSubDestinationAlignmentCENTERED,
  DvbSubDestinationAlignmentLEFT,
  DvbSubDestinationAlignmentSMART,
  DvbSubDestinationAlignment'
  #-}

instance Prelude.FromText DvbSubDestinationAlignment where
  parser = DvbSubDestinationAlignment' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubDestinationAlignment where
  toText (DvbSubDestinationAlignment' x) = x

instance Prelude.Hashable DvbSubDestinationAlignment

instance Prelude.NFData DvbSubDestinationAlignment

instance Prelude.ToByteString DvbSubDestinationAlignment

instance Prelude.ToQuery DvbSubDestinationAlignment

instance Prelude.ToHeader DvbSubDestinationAlignment

instance Prelude.ToJSON DvbSubDestinationAlignment where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubDestinationAlignment where
  parseJSON = Prelude.parseJSONText "DvbSubDestinationAlignment"
