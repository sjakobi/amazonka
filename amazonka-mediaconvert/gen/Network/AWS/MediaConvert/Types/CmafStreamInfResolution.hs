{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CSIRExclude,
        CSIRInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
data CmafStreamInfResolution
  = CmafStreamInfResolution'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSIRExclude :: CmafStreamInfResolution
pattern CSIRExclude = CmafStreamInfResolution' "EXCLUDE"

pattern CSIRInclude :: CmafStreamInfResolution
pattern CSIRInclude = CmafStreamInfResolution' "INCLUDE"

{-# COMPLETE
  CSIRExclude,
  CSIRInclude,
  CmafStreamInfResolution'
  #-}

instance FromText CmafStreamInfResolution where
  parser = (CmafStreamInfResolution' . mk) <$> takeText

instance ToText CmafStreamInfResolution where
  toText (CmafStreamInfResolution' ci) = original ci

instance Hashable CmafStreamInfResolution

instance NFData CmafStreamInfResolution

instance ToByteString CmafStreamInfResolution

instance ToQuery CmafStreamInfResolution

instance ToHeader CmafStreamInfResolution

instance ToJSON CmafStreamInfResolution where
  toJSON = toJSONText

instance FromJSON CmafStreamInfResolution where
  parseJSON = parseJSONText "CmafStreamInfResolution"
