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
-- Module      : Network.AWS.MediaConvert.Types.DashIsoPlaybackDeviceCompatibility
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoPlaybackDeviceCompatibility
  ( DashIsoPlaybackDeviceCompatibility
      ( ..,
        DashIsoPlaybackDeviceCompatibilityCENCV1,
        DashIsoPlaybackDeviceCompatibilityUNENCRYPTEDSEI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | This setting can improve the compatibility of your output with video
-- players on obsolete devices. It applies only to DASH H.264 outputs with
-- DRM encryption. Choose Unencrypted SEI (UNENCRYPTED_SEI) only to correct
-- problems with playback on older devices. Otherwise, keep the default
-- setting CENC v1 (CENC_V1). If you choose Unencrypted SEI, for that
-- output, the service will exclude the access unit delimiter and will
-- leave the SEI NAL units unencrypted.
newtype DashIsoPlaybackDeviceCompatibility = DashIsoPlaybackDeviceCompatibility'
  { fromDashIsoPlaybackDeviceCompatibility ::
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

pattern DashIsoPlaybackDeviceCompatibilityCENCV1 :: DashIsoPlaybackDeviceCompatibility
pattern DashIsoPlaybackDeviceCompatibilityCENCV1 = DashIsoPlaybackDeviceCompatibility' "CENC_V1"

pattern DashIsoPlaybackDeviceCompatibilityUNENCRYPTEDSEI :: DashIsoPlaybackDeviceCompatibility
pattern DashIsoPlaybackDeviceCompatibilityUNENCRYPTEDSEI = DashIsoPlaybackDeviceCompatibility' "UNENCRYPTED_SEI"

{-# COMPLETE
  DashIsoPlaybackDeviceCompatibilityCENCV1,
  DashIsoPlaybackDeviceCompatibilityUNENCRYPTEDSEI,
  DashIsoPlaybackDeviceCompatibility'
  #-}

instance Prelude.FromText DashIsoPlaybackDeviceCompatibility where
  parser = DashIsoPlaybackDeviceCompatibility' Prelude.<$> Prelude.takeText

instance Prelude.ToText DashIsoPlaybackDeviceCompatibility where
  toText (DashIsoPlaybackDeviceCompatibility' x) = x

instance Prelude.Hashable DashIsoPlaybackDeviceCompatibility

instance Prelude.NFData DashIsoPlaybackDeviceCompatibility

instance Prelude.ToByteString DashIsoPlaybackDeviceCompatibility

instance Prelude.ToQuery DashIsoPlaybackDeviceCompatibility

instance Prelude.ToHeader DashIsoPlaybackDeviceCompatibility

instance Prelude.ToJSON DashIsoPlaybackDeviceCompatibility where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DashIsoPlaybackDeviceCompatibility where
  parseJSON = Prelude.parseJSONText "DashIsoPlaybackDeviceCompatibility"
