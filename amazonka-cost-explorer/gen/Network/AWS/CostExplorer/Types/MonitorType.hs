{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.MonitorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.MonitorType
  ( MonitorType
      ( ..,
        Custom,
        Dimensional
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MonitorType = MonitorType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Custom :: MonitorType
pattern Custom = MonitorType' "CUSTOM"

pattern Dimensional :: MonitorType
pattern Dimensional = MonitorType' "DIMENSIONAL"

{-# COMPLETE
  Custom,
  Dimensional,
  MonitorType'
  #-}

instance FromText MonitorType where
  parser = (MonitorType' . mk) <$> takeText

instance ToText MonitorType where
  toText (MonitorType' ci) = original ci

instance Hashable MonitorType

instance NFData MonitorType

instance ToByteString MonitorType

instance ToQuery MonitorType

instance ToHeader MonitorType

instance ToJSON MonitorType where
  toJSON = toJSONText

instance FromJSON MonitorType where
  parseJSON = parseJSONText "MonitorType"
