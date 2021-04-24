{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmafWriteDASHManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafWriteDASHManifest
  ( CmafWriteDASHManifest
      ( ..,
        CWDASHMDisabled,
        CWDASHMEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to ENABLED, a DASH MPD manifest will be generated for this output.
data CmafWriteDASHManifest
  = CmafWriteDASHManifest'
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

pattern CWDASHMDisabled :: CmafWriteDASHManifest
pattern CWDASHMDisabled = CmafWriteDASHManifest' "DISABLED"

pattern CWDASHMEnabled :: CmafWriteDASHManifest
pattern CWDASHMEnabled = CmafWriteDASHManifest' "ENABLED"

{-# COMPLETE
  CWDASHMDisabled,
  CWDASHMEnabled,
  CmafWriteDASHManifest'
  #-}

instance FromText CmafWriteDASHManifest where
  parser = (CmafWriteDASHManifest' . mk) <$> takeText

instance ToText CmafWriteDASHManifest where
  toText (CmafWriteDASHManifest' ci) = original ci

instance Hashable CmafWriteDASHManifest

instance NFData CmafWriteDASHManifest

instance ToByteString CmafWriteDASHManifest

instance ToQuery CmafWriteDASHManifest

instance ToHeader CmafWriteDASHManifest

instance ToJSON CmafWriteDASHManifest where
  toJSON = toJSONText

instance FromJSON CmafWriteDASHManifest where
  parseJSON = parseJSONText "CmafWriteDASHManifest"
