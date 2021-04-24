{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.HistoryItemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.HistoryItemType
  ( HistoryItemType
      ( ..,
        Action,
        ConfigurationUpdate,
        StateUpdate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HistoryItemType = HistoryItemType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Action :: HistoryItemType
pattern Action = HistoryItemType' "Action"

pattern ConfigurationUpdate :: HistoryItemType
pattern ConfigurationUpdate = HistoryItemType' "ConfigurationUpdate"

pattern StateUpdate :: HistoryItemType
pattern StateUpdate = HistoryItemType' "StateUpdate"

{-# COMPLETE
  Action,
  ConfigurationUpdate,
  StateUpdate,
  HistoryItemType'
  #-}

instance FromText HistoryItemType where
  parser = (HistoryItemType' . mk) <$> takeText

instance ToText HistoryItemType where
  toText (HistoryItemType' ci) = original ci

instance Hashable HistoryItemType

instance NFData HistoryItemType

instance ToByteString HistoryItemType

instance ToQuery HistoryItemType

instance ToHeader HistoryItemType

instance FromXML HistoryItemType where
  parseXML = parseXMLText "HistoryItemType"
