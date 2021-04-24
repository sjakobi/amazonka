{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ReportStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportStatusType
  ( ReportStatusType
      ( ..,
        RSTDeleting,
        RSTFailed,
        RSTGenerating,
        RSTIncomplete,
        RSTSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportStatusType = ReportStatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RSTDeleting :: ReportStatusType
pattern RSTDeleting = ReportStatusType' "DELETING"

pattern RSTFailed :: ReportStatusType
pattern RSTFailed = ReportStatusType' "FAILED"

pattern RSTGenerating :: ReportStatusType
pattern RSTGenerating = ReportStatusType' "GENERATING"

pattern RSTIncomplete :: ReportStatusType
pattern RSTIncomplete = ReportStatusType' "INCOMPLETE"

pattern RSTSucceeded :: ReportStatusType
pattern RSTSucceeded = ReportStatusType' "SUCCEEDED"

{-# COMPLETE
  RSTDeleting,
  RSTFailed,
  RSTGenerating,
  RSTIncomplete,
  RSTSucceeded,
  ReportStatusType'
  #-}

instance FromText ReportStatusType where
  parser = (ReportStatusType' . mk) <$> takeText

instance ToText ReportStatusType where
  toText (ReportStatusType' ci) = original ci

instance Hashable ReportStatusType

instance NFData ReportStatusType

instance ToByteString ReportStatusType

instance ToQuery ReportStatusType

instance ToHeader ReportStatusType

instance ToJSON ReportStatusType where
  toJSON = toJSONText

instance FromJSON ReportStatusType where
  parseJSON = parseJSONText "ReportStatusType"
