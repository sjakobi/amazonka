{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.UploadStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.UploadStatus
  ( UploadStatus
      ( ..,
        USFailed,
        USInitialized,
        USProcessing,
        USSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UploadStatus = UploadStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern USFailed :: UploadStatus
pattern USFailed = UploadStatus' "FAILED"

pattern USInitialized :: UploadStatus
pattern USInitialized = UploadStatus' "INITIALIZED"

pattern USProcessing :: UploadStatus
pattern USProcessing = UploadStatus' "PROCESSING"

pattern USSucceeded :: UploadStatus
pattern USSucceeded = UploadStatus' "SUCCEEDED"

{-# COMPLETE
  USFailed,
  USInitialized,
  USProcessing,
  USSucceeded,
  UploadStatus'
  #-}

instance FromText UploadStatus where
  parser = (UploadStatus' . mk) <$> takeText

instance ToText UploadStatus where
  toText (UploadStatus' ci) = original ci

instance Hashable UploadStatus

instance NFData UploadStatus

instance ToByteString UploadStatus

instance ToQuery UploadStatus

instance ToHeader UploadStatus

instance FromJSON UploadStatus where
  parseJSON = parseJSONText "UploadStatus"
