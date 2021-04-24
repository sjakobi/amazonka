{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.CustomMetricType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CustomMetricType
  ( CustomMetricType
      ( ..,
        CMTIPAddressList,
        CMTNumber,
        CMTNumberList,
        CMTStringList
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CustomMetricType = CustomMetricType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CMTIPAddressList :: CustomMetricType
pattern CMTIPAddressList = CustomMetricType' "ip-address-list"

pattern CMTNumber :: CustomMetricType
pattern CMTNumber = CustomMetricType' "number"

pattern CMTNumberList :: CustomMetricType
pattern CMTNumberList = CustomMetricType' "number-list"

pattern CMTStringList :: CustomMetricType
pattern CMTStringList = CustomMetricType' "string-list"

{-# COMPLETE
  CMTIPAddressList,
  CMTNumber,
  CMTNumberList,
  CMTStringList,
  CustomMetricType'
  #-}

instance FromText CustomMetricType where
  parser = (CustomMetricType' . mk) <$> takeText

instance ToText CustomMetricType where
  toText (CustomMetricType' ci) = original ci

instance Hashable CustomMetricType

instance NFData CustomMetricType

instance ToByteString CustomMetricType

instance ToQuery CustomMetricType

instance ToHeader CustomMetricType

instance ToJSON CustomMetricType where
  toJSON = toJSONText

instance FromJSON CustomMetricType where
  parseJSON = parseJSONText "CustomMetricType"
