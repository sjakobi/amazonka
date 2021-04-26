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
-- Module      : Network.AWS.MediaConvert.Types.DashIsoMpdProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoMpdProfile
  ( DashIsoMpdProfile
      ( ..,
        DashIsoMpdProfileMAINPROFILE,
        DashIsoMpdProfileONDEMANDPROFILE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether your DASH profile is on-demand or main. When you choose
-- Main profile (MAIN_PROFILE), the service signals
-- urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When
-- you choose On-demand (ON_DEMAND_PROFILE), the service signals
-- urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose
-- On-demand, you must also set the output group setting Segment control
-- (SegmentControl) to Single file (SINGLE_FILE).
newtype DashIsoMpdProfile = DashIsoMpdProfile'
  { fromDashIsoMpdProfile ::
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

pattern DashIsoMpdProfileMAINPROFILE :: DashIsoMpdProfile
pattern DashIsoMpdProfileMAINPROFILE = DashIsoMpdProfile' "MAIN_PROFILE"

pattern DashIsoMpdProfileONDEMANDPROFILE :: DashIsoMpdProfile
pattern DashIsoMpdProfileONDEMANDPROFILE = DashIsoMpdProfile' "ON_DEMAND_PROFILE"

{-# COMPLETE
  DashIsoMpdProfileMAINPROFILE,
  DashIsoMpdProfileONDEMANDPROFILE,
  DashIsoMpdProfile'
  #-}

instance Prelude.FromText DashIsoMpdProfile where
  parser = DashIsoMpdProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText DashIsoMpdProfile where
  toText (DashIsoMpdProfile' x) = x

instance Prelude.Hashable DashIsoMpdProfile

instance Prelude.NFData DashIsoMpdProfile

instance Prelude.ToByteString DashIsoMpdProfile

instance Prelude.ToQuery DashIsoMpdProfile

instance Prelude.ToHeader DashIsoMpdProfile

instance Prelude.ToJSON DashIsoMpdProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DashIsoMpdProfile where
  parseJSON = Prelude.parseJSONText "DashIsoMpdProfile"
