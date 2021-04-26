{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        CustomMetricTypeIpAddressList,
        CustomMetricTypeNumber,
        CustomMetricTypeNumberList,
        CustomMetricTypeStringList
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CustomMetricType = CustomMetricType'
  { fromCustomMetricType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CustomMetricTypeIpAddressList :: CustomMetricType
pattern CustomMetricTypeIpAddressList = CustomMetricType' "ip-address-list"

pattern CustomMetricTypeNumber :: CustomMetricType
pattern CustomMetricTypeNumber = CustomMetricType' "number"

pattern CustomMetricTypeNumberList :: CustomMetricType
pattern CustomMetricTypeNumberList = CustomMetricType' "number-list"

pattern CustomMetricTypeStringList :: CustomMetricType
pattern CustomMetricTypeStringList = CustomMetricType' "string-list"

{-# COMPLETE
  CustomMetricTypeIpAddressList,
  CustomMetricTypeNumber,
  CustomMetricTypeNumberList,
  CustomMetricTypeStringList,
  CustomMetricType'
  #-}

instance Prelude.FromText CustomMetricType where
  parser = CustomMetricType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CustomMetricType where
  toText (CustomMetricType' x) = x

instance Prelude.Hashable CustomMetricType

instance Prelude.NFData CustomMetricType

instance Prelude.ToByteString CustomMetricType

instance Prelude.ToQuery CustomMetricType

instance Prelude.ToHeader CustomMetricType

instance Prelude.ToJSON CustomMetricType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CustomMetricType where
  parseJSON = Prelude.parseJSONText "CustomMetricType"
