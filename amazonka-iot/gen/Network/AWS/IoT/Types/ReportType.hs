{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ReportType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ReportType
  ( ReportType
      ( ..,
        Errors,
        Results
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportType = ReportType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Errors :: ReportType
pattern Errors = ReportType' "ERRORS"

pattern Results :: ReportType
pattern Results = ReportType' "RESULTS"

{-# COMPLETE
  Errors,
  Results,
  ReportType'
  #-}

instance FromText ReportType where
  parser = (ReportType' . mk) <$> takeText

instance ToText ReportType where
  toText (ReportType' ci) = original ci

instance Hashable ReportType

instance NFData ReportType

instance ToByteString ReportType

instance ToQuery ReportType

instance ToHeader ReportType

instance ToJSON ReportType where
  toJSON = toJSONText

instance FromJSON ReportType where
  parseJSON = parseJSONText "ReportType"
