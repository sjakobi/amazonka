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
-- Module      : Network.AWS.MediaLive.Types.H264QualityLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264QualityLevel
  ( H264QualityLevel
      ( ..,
        H264QualityLevelENHANCEDQUALITY,
        H264QualityLevelSTANDARDQUALITY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Quality Level
newtype H264QualityLevel = H264QualityLevel'
  { fromH264QualityLevel ::
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

pattern H264QualityLevelENHANCEDQUALITY :: H264QualityLevel
pattern H264QualityLevelENHANCEDQUALITY = H264QualityLevel' "ENHANCED_QUALITY"

pattern H264QualityLevelSTANDARDQUALITY :: H264QualityLevel
pattern H264QualityLevelSTANDARDQUALITY = H264QualityLevel' "STANDARD_QUALITY"

{-# COMPLETE
  H264QualityLevelENHANCEDQUALITY,
  H264QualityLevelSTANDARDQUALITY,
  H264QualityLevel'
  #-}

instance Prelude.FromText H264QualityLevel where
  parser = H264QualityLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264QualityLevel where
  toText (H264QualityLevel' x) = x

instance Prelude.Hashable H264QualityLevel

instance Prelude.NFData H264QualityLevel

instance Prelude.ToByteString H264QualityLevel

instance Prelude.ToQuery H264QualityLevel

instance Prelude.ToHeader H264QualityLevel

instance Prelude.ToJSON H264QualityLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264QualityLevel where
  parseJSON = Prelude.parseJSONText "H264QualityLevel"
