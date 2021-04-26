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
-- Module      : Network.AWS.MediaConvert.Types.H265SampleAdaptiveOffsetFilterMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265SampleAdaptiveOffsetFilterMode
  ( H265SampleAdaptiveOffsetFilterMode
      ( ..,
        H265SampleAdaptiveOffsetFilterModeADAPTIVE,
        H265SampleAdaptiveOffsetFilterModeDEFAULT,
        H265SampleAdaptiveOffsetFilterModeOFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify Sample Adaptive Offset (SAO) filter strength. Adaptive mode
-- dynamically selects best strength based on content
newtype H265SampleAdaptiveOffsetFilterMode = H265SampleAdaptiveOffsetFilterMode'
  { fromH265SampleAdaptiveOffsetFilterMode ::
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

pattern H265SampleAdaptiveOffsetFilterModeADAPTIVE :: H265SampleAdaptiveOffsetFilterMode
pattern H265SampleAdaptiveOffsetFilterModeADAPTIVE = H265SampleAdaptiveOffsetFilterMode' "ADAPTIVE"

pattern H265SampleAdaptiveOffsetFilterModeDEFAULT :: H265SampleAdaptiveOffsetFilterMode
pattern H265SampleAdaptiveOffsetFilterModeDEFAULT = H265SampleAdaptiveOffsetFilterMode' "DEFAULT"

pattern H265SampleAdaptiveOffsetFilterModeOFF :: H265SampleAdaptiveOffsetFilterMode
pattern H265SampleAdaptiveOffsetFilterModeOFF = H265SampleAdaptiveOffsetFilterMode' "OFF"

{-# COMPLETE
  H265SampleAdaptiveOffsetFilterModeADAPTIVE,
  H265SampleAdaptiveOffsetFilterModeDEFAULT,
  H265SampleAdaptiveOffsetFilterModeOFF,
  H265SampleAdaptiveOffsetFilterMode'
  #-}

instance Prelude.FromText H265SampleAdaptiveOffsetFilterMode where
  parser = H265SampleAdaptiveOffsetFilterMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265SampleAdaptiveOffsetFilterMode where
  toText (H265SampleAdaptiveOffsetFilterMode' x) = x

instance Prelude.Hashable H265SampleAdaptiveOffsetFilterMode

instance Prelude.NFData H265SampleAdaptiveOffsetFilterMode

instance Prelude.ToByteString H265SampleAdaptiveOffsetFilterMode

instance Prelude.ToQuery H265SampleAdaptiveOffsetFilterMode

instance Prelude.ToHeader H265SampleAdaptiveOffsetFilterMode

instance Prelude.ToJSON H265SampleAdaptiveOffsetFilterMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265SampleAdaptiveOffsetFilterMode where
  parseJSON = Prelude.parseJSONText "H265SampleAdaptiveOffsetFilterMode"
