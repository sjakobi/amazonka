{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ReportGroupStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportGroupStatusType
  ( ReportGroupStatusType
      ( ..,
        Active,
        Deleting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportGroupStatusType
  = ReportGroupStatusType'
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

pattern Active :: ReportGroupStatusType
pattern Active = ReportGroupStatusType' "ACTIVE"

pattern Deleting :: ReportGroupStatusType
pattern Deleting = ReportGroupStatusType' "DELETING"

{-# COMPLETE
  Active,
  Deleting,
  ReportGroupStatusType'
  #-}

instance FromText ReportGroupStatusType where
  parser = (ReportGroupStatusType' . mk) <$> takeText

instance ToText ReportGroupStatusType where
  toText (ReportGroupStatusType' ci) = original ci

instance Hashable ReportGroupStatusType

instance NFData ReportGroupStatusType

instance ToByteString ReportGroupStatusType

instance ToQuery ReportGroupStatusType

instance ToHeader ReportGroupStatusType

instance FromJSON ReportGroupStatusType where
  parseJSON = parseJSONText "ReportGroupStatusType"
