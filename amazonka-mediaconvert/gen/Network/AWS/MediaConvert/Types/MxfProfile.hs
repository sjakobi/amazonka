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
-- Module      : Network.AWS.MediaConvert.Types.MxfProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MxfProfile
  ( MxfProfile
      ( ..,
        MxfProfileD10,
        MxfProfileOP1A,
        MxfProfileXDCAM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the MXF profile, also called shim, for this output. When you
-- choose Auto, MediaConvert chooses a profile based on the video codec and
-- resolution. For a list of codecs supported with each MXF profile, see
-- https:\/\/docs.aws.amazon.com\/mediaconvert\/latest\/ug\/codecs-supported-with-each-mxf-profile.html.
-- For more information about the automatic selection behavior, see
-- https:\/\/docs.aws.amazon.com\/mediaconvert\/latest\/ug\/default-automatic-selection-of-mxf-profiles.html.
newtype MxfProfile = MxfProfile'
  { fromMxfProfile ::
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

pattern MxfProfileD10 :: MxfProfile
pattern MxfProfileD10 = MxfProfile' "D_10"

pattern MxfProfileOP1A :: MxfProfile
pattern MxfProfileOP1A = MxfProfile' "OP1A"

pattern MxfProfileXDCAM :: MxfProfile
pattern MxfProfileXDCAM = MxfProfile' "XDCAM"

{-# COMPLETE
  MxfProfileD10,
  MxfProfileOP1A,
  MxfProfileXDCAM,
  MxfProfile'
  #-}

instance Prelude.FromText MxfProfile where
  parser = MxfProfile' Prelude.<$> Prelude.takeText

instance Prelude.ToText MxfProfile where
  toText (MxfProfile' x) = x

instance Prelude.Hashable MxfProfile

instance Prelude.NFData MxfProfile

instance Prelude.ToByteString MxfProfile

instance Prelude.ToQuery MxfProfile

instance Prelude.ToHeader MxfProfile

instance Prelude.ToJSON MxfProfile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MxfProfile where
  parseJSON = Prelude.parseJSONText "MxfProfile"
