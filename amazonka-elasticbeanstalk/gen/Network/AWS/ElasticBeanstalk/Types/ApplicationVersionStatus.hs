{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.ApplicationVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ApplicationVersionStatus
  ( ApplicationVersionStatus
      ( ..,
        AVSBuilding,
        AVSFailed,
        AVSProcessed,
        AVSProcessing,
        AVSUnprocessed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ApplicationVersionStatus
  = ApplicationVersionStatus'
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

pattern AVSBuilding :: ApplicationVersionStatus
pattern AVSBuilding = ApplicationVersionStatus' "Building"

pattern AVSFailed :: ApplicationVersionStatus
pattern AVSFailed = ApplicationVersionStatus' "Failed"

pattern AVSProcessed :: ApplicationVersionStatus
pattern AVSProcessed = ApplicationVersionStatus' "Processed"

pattern AVSProcessing :: ApplicationVersionStatus
pattern AVSProcessing = ApplicationVersionStatus' "Processing"

pattern AVSUnprocessed :: ApplicationVersionStatus
pattern AVSUnprocessed = ApplicationVersionStatus' "Unprocessed"

{-# COMPLETE
  AVSBuilding,
  AVSFailed,
  AVSProcessed,
  AVSProcessing,
  AVSUnprocessed,
  ApplicationVersionStatus'
  #-}

instance FromText ApplicationVersionStatus where
  parser = (ApplicationVersionStatus' . mk) <$> takeText

instance ToText ApplicationVersionStatus where
  toText (ApplicationVersionStatus' ci) = original ci

instance Hashable ApplicationVersionStatus

instance NFData ApplicationVersionStatus

instance ToByteString ApplicationVersionStatus

instance ToQuery ApplicationVersionStatus

instance ToHeader ApplicationVersionStatus

instance FromXML ApplicationVersionStatus where
  parseXML = parseXMLText "ApplicationVersionStatus"
