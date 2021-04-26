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
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationTeletextGridControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationTeletextGridControl
  ( DvbSubDestinationTeletextGridControl
      ( ..,
        DvbSubDestinationTeletextGridControlFIXED,
        DvbSubDestinationTeletextGridControlSCALED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Dvb Sub Destination Teletext Grid Control
newtype DvbSubDestinationTeletextGridControl = DvbSubDestinationTeletextGridControl'
  { fromDvbSubDestinationTeletextGridControl ::
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

pattern DvbSubDestinationTeletextGridControlFIXED :: DvbSubDestinationTeletextGridControl
pattern DvbSubDestinationTeletextGridControlFIXED = DvbSubDestinationTeletextGridControl' "FIXED"

pattern DvbSubDestinationTeletextGridControlSCALED :: DvbSubDestinationTeletextGridControl
pattern DvbSubDestinationTeletextGridControlSCALED = DvbSubDestinationTeletextGridControl' "SCALED"

{-# COMPLETE
  DvbSubDestinationTeletextGridControlFIXED,
  DvbSubDestinationTeletextGridControlSCALED,
  DvbSubDestinationTeletextGridControl'
  #-}

instance Prelude.FromText DvbSubDestinationTeletextGridControl where
  parser = DvbSubDestinationTeletextGridControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubDestinationTeletextGridControl where
  toText (DvbSubDestinationTeletextGridControl' x) = x

instance Prelude.Hashable DvbSubDestinationTeletextGridControl

instance Prelude.NFData DvbSubDestinationTeletextGridControl

instance Prelude.ToByteString DvbSubDestinationTeletextGridControl

instance Prelude.ToQuery DvbSubDestinationTeletextGridControl

instance Prelude.ToHeader DvbSubDestinationTeletextGridControl

instance Prelude.ToJSON DvbSubDestinationTeletextGridControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubDestinationTeletextGridControl where
  parseJSON = Prelude.parseJSONText "DvbSubDestinationTeletextGridControl"
