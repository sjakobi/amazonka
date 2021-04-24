{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.ReportFormatType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ReportFormatType
  ( ReportFormatType
      ( ..,
        TextCSV
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportFormatType = ReportFormatType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TextCSV :: ReportFormatType
pattern TextCSV = ReportFormatType' "text/csv"

{-# COMPLETE
  TextCSV,
  ReportFormatType'
  #-}

instance FromText ReportFormatType where
  parser = (ReportFormatType' . mk) <$> takeText

instance ToText ReportFormatType where
  toText (ReportFormatType' ci) = original ci

instance Hashable ReportFormatType

instance NFData ReportFormatType

instance ToByteString ReportFormatType

instance ToQuery ReportFormatType

instance ToHeader ReportFormatType

instance FromXML ReportFormatType where
  parseXML = parseXMLText "ReportFormatType"
