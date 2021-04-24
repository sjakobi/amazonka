{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mp4MoovPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mp4MoovPlacement
  ( Mp4MoovPlacement
      ( ..,
        MMPNormal,
        MMPProgressiveDownload
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.
data Mp4MoovPlacement = Mp4MoovPlacement' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MMPNormal :: Mp4MoovPlacement
pattern MMPNormal = Mp4MoovPlacement' "NORMAL"

pattern MMPProgressiveDownload :: Mp4MoovPlacement
pattern MMPProgressiveDownload = Mp4MoovPlacement' "PROGRESSIVE_DOWNLOAD"

{-# COMPLETE
  MMPNormal,
  MMPProgressiveDownload,
  Mp4MoovPlacement'
  #-}

instance FromText Mp4MoovPlacement where
  parser = (Mp4MoovPlacement' . mk) <$> takeText

instance ToText Mp4MoovPlacement where
  toText (Mp4MoovPlacement' ci) = original ci

instance Hashable Mp4MoovPlacement

instance NFData Mp4MoovPlacement

instance ToByteString Mp4MoovPlacement

instance ToQuery Mp4MoovPlacement

instance ToHeader Mp4MoovPlacement

instance ToJSON Mp4MoovPlacement where
  toJSON = toJSONText

instance FromJSON Mp4MoovPlacement where
  parseJSON = parseJSONText "Mp4MoovPlacement"
