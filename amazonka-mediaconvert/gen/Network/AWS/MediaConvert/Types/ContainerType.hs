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
-- Module      : Network.AWS.MediaConvert.Types.ContainerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ContainerType
  ( ContainerType
      ( ..,
        ContainerTypeCMFC,
        ContainerTypeF4V,
        ContainerTypeISMV,
        ContainerTypeM2TS,
        ContainerTypeM3U8,
        ContainerTypeMOV,
        ContainerTypeMP4,
        ContainerTypeMPD,
        ContainerTypeMXF,
        ContainerTypeRAW,
        ContainerTypeWEBM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Container for this output. Some containers require a container settings
-- object. If not specified, the default object will be created.
newtype ContainerType = ContainerType'
  { fromContainerType ::
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

pattern ContainerTypeCMFC :: ContainerType
pattern ContainerTypeCMFC = ContainerType' "CMFC"

pattern ContainerTypeF4V :: ContainerType
pattern ContainerTypeF4V = ContainerType' "F4V"

pattern ContainerTypeISMV :: ContainerType
pattern ContainerTypeISMV = ContainerType' "ISMV"

pattern ContainerTypeM2TS :: ContainerType
pattern ContainerTypeM2TS = ContainerType' "M2TS"

pattern ContainerTypeM3U8 :: ContainerType
pattern ContainerTypeM3U8 = ContainerType' "M3U8"

pattern ContainerTypeMOV :: ContainerType
pattern ContainerTypeMOV = ContainerType' "MOV"

pattern ContainerTypeMP4 :: ContainerType
pattern ContainerTypeMP4 = ContainerType' "MP4"

pattern ContainerTypeMPD :: ContainerType
pattern ContainerTypeMPD = ContainerType' "MPD"

pattern ContainerTypeMXF :: ContainerType
pattern ContainerTypeMXF = ContainerType' "MXF"

pattern ContainerTypeRAW :: ContainerType
pattern ContainerTypeRAW = ContainerType' "RAW"

pattern ContainerTypeWEBM :: ContainerType
pattern ContainerTypeWEBM = ContainerType' "WEBM"

{-# COMPLETE
  ContainerTypeCMFC,
  ContainerTypeF4V,
  ContainerTypeISMV,
  ContainerTypeM2TS,
  ContainerTypeM3U8,
  ContainerTypeMOV,
  ContainerTypeMP4,
  ContainerTypeMPD,
  ContainerTypeMXF,
  ContainerTypeRAW,
  ContainerTypeWEBM,
  ContainerType'
  #-}

instance Prelude.FromText ContainerType where
  parser = ContainerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerType where
  toText (ContainerType' x) = x

instance Prelude.Hashable ContainerType

instance Prelude.NFData ContainerType

instance Prelude.ToByteString ContainerType

instance Prelude.ToQuery ContainerType

instance Prelude.ToHeader ContainerType

instance Prelude.ToJSON ContainerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContainerType where
  parseJSON = Prelude.parseJSONText "ContainerType"
