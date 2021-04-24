{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmafSegmentControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafSegmentControl
  ( CmafSegmentControl
      ( ..,
        CSCSegmentedFiles,
        CSCSingleFile
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
data CmafSegmentControl
  = CmafSegmentControl'
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

pattern CSCSegmentedFiles :: CmafSegmentControl
pattern CSCSegmentedFiles = CmafSegmentControl' "SEGMENTED_FILES"

pattern CSCSingleFile :: CmafSegmentControl
pattern CSCSingleFile = CmafSegmentControl' "SINGLE_FILE"

{-# COMPLETE
  CSCSegmentedFiles,
  CSCSingleFile,
  CmafSegmentControl'
  #-}

instance FromText CmafSegmentControl where
  parser = (CmafSegmentControl' . mk) <$> takeText

instance ToText CmafSegmentControl where
  toText (CmafSegmentControl' ci) = original ci

instance Hashable CmafSegmentControl

instance NFData CmafSegmentControl

instance ToByteString CmafSegmentControl

instance ToQuery CmafSegmentControl

instance ToHeader CmafSegmentControl

instance ToJSON CmafSegmentControl where
  toJSON = toJSONText

instance FromJSON CmafSegmentControl where
  parseJSON = parseJSONText "CmafSegmentControl"
