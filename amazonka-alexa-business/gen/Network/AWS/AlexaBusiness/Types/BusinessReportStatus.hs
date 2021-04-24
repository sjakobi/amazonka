{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.BusinessReportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.BusinessReportStatus
  ( BusinessReportStatus
      ( ..,
        Failed,
        Running,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BusinessReportStatus
  = BusinessReportStatus'
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

pattern Failed :: BusinessReportStatus
pattern Failed = BusinessReportStatus' "FAILED"

pattern Running :: BusinessReportStatus
pattern Running = BusinessReportStatus' "RUNNING"

pattern Succeeded :: BusinessReportStatus
pattern Succeeded = BusinessReportStatus' "SUCCEEDED"

{-# COMPLETE
  Failed,
  Running,
  Succeeded,
  BusinessReportStatus'
  #-}

instance FromText BusinessReportStatus where
  parser = (BusinessReportStatus' . mk) <$> takeText

instance ToText BusinessReportStatus where
  toText (BusinessReportStatus' ci) = original ci

instance Hashable BusinessReportStatus

instance NFData BusinessReportStatus

instance ToByteString BusinessReportStatus

instance ToQuery BusinessReportStatus

instance ToHeader BusinessReportStatus

instance FromJSON BusinessReportStatus where
  parseJSON = parseJSONText "BusinessReportStatus"
