{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.MonitorDimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.MonitorDimension
  ( MonitorDimension
      ( ..,
        Service
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MonitorDimension = MonitorDimension' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Service :: MonitorDimension
pattern Service = MonitorDimension' "SERVICE"

{-# COMPLETE
  Service,
  MonitorDimension'
  #-}

instance FromText MonitorDimension where
  parser = (MonitorDimension' . mk) <$> takeText

instance ToText MonitorDimension where
  toText (MonitorDimension' ci) = original ci

instance Hashable MonitorDimension

instance NFData MonitorDimension

instance ToByteString MonitorDimension

instance ToQuery MonitorDimension

instance ToHeader MonitorDimension

instance ToJSON MonitorDimension where
  toJSON = toJSONText

instance FromJSON MonitorDimension where
  parseJSON = parseJSONText "MonitorDimension"
