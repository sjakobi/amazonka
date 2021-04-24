{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.ReportStateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ReportStateType
  ( ReportStateType
      ( ..,
        RSTComplete,
        RSTInprogress,
        RSTStarted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportStateType = ReportStateType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RSTComplete :: ReportStateType
pattern RSTComplete = ReportStateType' "COMPLETE"

pattern RSTInprogress :: ReportStateType
pattern RSTInprogress = ReportStateType' "INPROGRESS"

pattern RSTStarted :: ReportStateType
pattern RSTStarted = ReportStateType' "STARTED"

{-# COMPLETE
  RSTComplete,
  RSTInprogress,
  RSTStarted,
  ReportStateType'
  #-}

instance FromText ReportStateType where
  parser = (ReportStateType' . mk) <$> takeText

instance ToText ReportStateType where
  toText (ReportStateType' ci) = original ci

instance Hashable ReportStateType

instance NFData ReportStateType

instance ToByteString ReportStateType

instance ToQuery ReportStateType

instance ToHeader ReportStateType

instance FromXML ReportStateType where
  parseXML = parseXMLText "ReportStateType"
