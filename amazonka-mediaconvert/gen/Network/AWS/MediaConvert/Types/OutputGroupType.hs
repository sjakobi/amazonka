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
-- Module      : Network.AWS.MediaConvert.Types.OutputGroupType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.OutputGroupType
  ( OutputGroupType
      ( ..,
        OutputGroupTypeCMAFGROUPSETTINGS,
        OutputGroupTypeDASHISOGROUPSETTINGS,
        OutputGroupTypeFILEGROUPSETTINGS,
        OutputGroupTypeHLSGROUPSETTINGS,
        OutputGroupTypeMSSMOOTHGROUPSETTINGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth
-- Streaming, CMAF)
newtype OutputGroupType = OutputGroupType'
  { fromOutputGroupType ::
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

pattern OutputGroupTypeCMAFGROUPSETTINGS :: OutputGroupType
pattern OutputGroupTypeCMAFGROUPSETTINGS = OutputGroupType' "CMAF_GROUP_SETTINGS"

pattern OutputGroupTypeDASHISOGROUPSETTINGS :: OutputGroupType
pattern OutputGroupTypeDASHISOGROUPSETTINGS = OutputGroupType' "DASH_ISO_GROUP_SETTINGS"

pattern OutputGroupTypeFILEGROUPSETTINGS :: OutputGroupType
pattern OutputGroupTypeFILEGROUPSETTINGS = OutputGroupType' "FILE_GROUP_SETTINGS"

pattern OutputGroupTypeHLSGROUPSETTINGS :: OutputGroupType
pattern OutputGroupTypeHLSGROUPSETTINGS = OutputGroupType' "HLS_GROUP_SETTINGS"

pattern OutputGroupTypeMSSMOOTHGROUPSETTINGS :: OutputGroupType
pattern OutputGroupTypeMSSMOOTHGROUPSETTINGS = OutputGroupType' "MS_SMOOTH_GROUP_SETTINGS"

{-# COMPLETE
  OutputGroupTypeCMAFGROUPSETTINGS,
  OutputGroupTypeDASHISOGROUPSETTINGS,
  OutputGroupTypeFILEGROUPSETTINGS,
  OutputGroupTypeHLSGROUPSETTINGS,
  OutputGroupTypeMSSMOOTHGROUPSETTINGS,
  OutputGroupType'
  #-}

instance Prelude.FromText OutputGroupType where
  parser = OutputGroupType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OutputGroupType where
  toText (OutputGroupType' x) = x

instance Prelude.Hashable OutputGroupType

instance Prelude.NFData OutputGroupType

instance Prelude.ToByteString OutputGroupType

instance Prelude.ToQuery OutputGroupType

instance Prelude.ToHeader OutputGroupType

instance Prelude.ToJSON OutputGroupType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OutputGroupType where
  parseJSON = Prelude.parseJSONText "OutputGroupType"
