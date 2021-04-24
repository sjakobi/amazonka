{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ReportExportConfigType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportExportConfigType
  ( ReportExportConfigType
      ( ..,
        RECTNoExport,
        RECTS3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportExportConfigType
  = ReportExportConfigType'
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

pattern RECTNoExport :: ReportExportConfigType
pattern RECTNoExport = ReportExportConfigType' "NO_EXPORT"

pattern RECTS3 :: ReportExportConfigType
pattern RECTS3 = ReportExportConfigType' "S3"

{-# COMPLETE
  RECTNoExport,
  RECTS3,
  ReportExportConfigType'
  #-}

instance FromText ReportExportConfigType where
  parser = (ReportExportConfigType' . mk) <$> takeText

instance ToText ReportExportConfigType where
  toText (ReportExportConfigType' ci) = original ci

instance Hashable ReportExportConfigType

instance NFData ReportExportConfigType

instance ToByteString ReportExportConfigType

instance ToQuery ReportExportConfigType

instance ToHeader ReportExportConfigType

instance ToJSON ReportExportConfigType where
  toJSON = toJSONText

instance FromJSON ReportExportConfigType where
  parseJSON = parseJSONText "ReportExportConfigType"
