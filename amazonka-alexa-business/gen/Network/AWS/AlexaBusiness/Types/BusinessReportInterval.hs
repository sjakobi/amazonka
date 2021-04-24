{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.BusinessReportInterval
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.BusinessReportInterval
  ( BusinessReportInterval
      ( ..,
        OneDay,
        OneWeek,
        ThirtyDays
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BusinessReportInterval
  = BusinessReportInterval'
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

pattern OneDay :: BusinessReportInterval
pattern OneDay = BusinessReportInterval' "ONE_DAY"

pattern OneWeek :: BusinessReportInterval
pattern OneWeek = BusinessReportInterval' "ONE_WEEK"

pattern ThirtyDays :: BusinessReportInterval
pattern ThirtyDays = BusinessReportInterval' "THIRTY_DAYS"

{-# COMPLETE
  OneDay,
  OneWeek,
  ThirtyDays,
  BusinessReportInterval'
  #-}

instance FromText BusinessReportInterval where
  parser = (BusinessReportInterval' . mk) <$> takeText

instance ToText BusinessReportInterval where
  toText (BusinessReportInterval' ci) = original ci

instance Hashable BusinessReportInterval

instance NFData BusinessReportInterval

instance ToByteString BusinessReportInterval

instance ToQuery BusinessReportInterval

instance ToHeader BusinessReportInterval

instance ToJSON BusinessReportInterval where
  toJSON = toJSONText

instance FromJSON BusinessReportInterval where
  parseJSON = parseJSONText "BusinessReportInterval"
