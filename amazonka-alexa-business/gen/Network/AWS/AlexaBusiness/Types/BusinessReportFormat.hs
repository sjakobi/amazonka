{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.BusinessReportFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.BusinessReportFormat
  ( BusinessReportFormat
      ( ..,
        CSV,
        CSVZip
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BusinessReportFormat
  = BusinessReportFormat'
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

pattern CSV :: BusinessReportFormat
pattern CSV = BusinessReportFormat' "CSV"

pattern CSVZip :: BusinessReportFormat
pattern CSVZip = BusinessReportFormat' "CSV_ZIP"

{-# COMPLETE
  CSV,
  CSVZip,
  BusinessReportFormat'
  #-}

instance FromText BusinessReportFormat where
  parser = (BusinessReportFormat' . mk) <$> takeText

instance ToText BusinessReportFormat where
  toText (BusinessReportFormat' ci) = original ci

instance Hashable BusinessReportFormat

instance NFData BusinessReportFormat

instance ToByteString BusinessReportFormat

instance ToQuery BusinessReportFormat

instance ToHeader BusinessReportFormat

instance ToJSON BusinessReportFormat where
  toJSON = toJSONText

instance FromJSON BusinessReportFormat where
  parseJSON = parseJSONText "BusinessReportFormat"
