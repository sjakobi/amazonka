{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DashIsoSegmentControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoSegmentControl
  ( DashIsoSegmentControl
      ( ..,
        DISCSegmentedFiles,
        DISCSingleFile
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
data DashIsoSegmentControl
  = DashIsoSegmentControl'
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

pattern DISCSegmentedFiles :: DashIsoSegmentControl
pattern DISCSegmentedFiles = DashIsoSegmentControl' "SEGMENTED_FILES"

pattern DISCSingleFile :: DashIsoSegmentControl
pattern DISCSingleFile = DashIsoSegmentControl' "SINGLE_FILE"

{-# COMPLETE
  DISCSegmentedFiles,
  DISCSingleFile,
  DashIsoSegmentControl'
  #-}

instance FromText DashIsoSegmentControl where
  parser = (DashIsoSegmentControl' . mk) <$> takeText

instance ToText DashIsoSegmentControl where
  toText (DashIsoSegmentControl' ci) = original ci

instance Hashable DashIsoSegmentControl

instance NFData DashIsoSegmentControl

instance ToByteString DashIsoSegmentControl

instance ToQuery DashIsoSegmentControl

instance ToHeader DashIsoSegmentControl

instance ToJSON DashIsoSegmentControl where
  toJSON = toJSONText

instance FromJSON DashIsoSegmentControl where
  parseJSON = parseJSONText "DashIsoSegmentControl"
