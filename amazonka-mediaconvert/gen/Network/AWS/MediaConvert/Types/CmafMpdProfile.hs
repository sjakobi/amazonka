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
-- Module      : Network.AWS.MediaConvert.Types.CmafMpdProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafMpdProfile
  ( CmafMpdProfile
      ( ..,
        CmafMpdProfileMAINPROFILE,
        CmafMpdProfileONDEMANDPROFILE
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
newtype CmafMpdProfile = CmafMpdProfile'
  { fromCmafMpdProfile ::
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

pattern CmafMpdProfileMAINPROFILE :: CmafMpdProfile
pattern CmafMpdProfileMAINPROFILE = CmafMpdProfile' "MAIN_PROFILE"

pattern CmafMpdProfileONDEMANDPROFILE :: CmafMpdProfile
pattern CmafMpdProfileONDEMANDPROFILE = CmafMpdProfile' "ON_DEMAND_PROFILE"

{-# COMPLETE
  CmafMpdProfileMAINPROFILE,
  CmafMpdProfileONDEMANDPROFILE,
  CmafMpdProfile'
  #-}

instance Prelude.FromText CmafMpdProfile where
  parser = CmafMpdProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafMpdProfile where
  toText (CmafMpdProfile' x) = x

instance Prelude.Hashable CmafMpdProfile

instance Prelude.NFData CmafMpdProfile

instance Prelude.ToByteString CmafMpdProfile

instance Prelude.ToQuery CmafMpdProfile

instance Prelude.ToHeader CmafMpdProfile

instance Prelude.ToJSON CmafMpdProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafMpdProfile where
  parseJSON = Prelude.parseJSONText "CmafMpdProfile"
