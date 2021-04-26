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
-- Module      : Network.AWS.MediaConvert.Types.CmafStreamInfResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafStreamInfResolution
  ( CmafStreamInfResolution
      ( ..,
        CmafStreamInfResolutionEXCLUDE,
        CmafStreamInfResolutionINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF
-- tag of variant manifest.
newtype CmafStreamInfResolution = CmafStreamInfResolution'
  { fromCmafStreamInfResolution ::
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

pattern CmafStreamInfResolutionEXCLUDE :: CmafStreamInfResolution
pattern CmafStreamInfResolutionEXCLUDE = CmafStreamInfResolution' "EXCLUDE"

pattern CmafStreamInfResolutionINCLUDE :: CmafStreamInfResolution
pattern CmafStreamInfResolutionINCLUDE = CmafStreamInfResolution' "INCLUDE"

{-# COMPLETE
  CmafStreamInfResolutionEXCLUDE,
  CmafStreamInfResolutionINCLUDE,
  CmafStreamInfResolution'
  #-}

instance Prelude.FromText CmafStreamInfResolution where
  parser = CmafStreamInfResolution' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafStreamInfResolution where
  toText (CmafStreamInfResolution' x) = x

instance Prelude.Hashable CmafStreamInfResolution

instance Prelude.NFData CmafStreamInfResolution

instance Prelude.ToByteString CmafStreamInfResolution

instance Prelude.ToQuery CmafStreamInfResolution

instance Prelude.ToHeader CmafStreamInfResolution

instance Prelude.ToJSON CmafStreamInfResolution where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafStreamInfResolution where
  parseJSON = Prelude.parseJSONText "CmafStreamInfResolution"
