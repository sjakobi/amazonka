{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.AlarmType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.AlarmType
  ( AlarmType
      ( ..,
        CompositeAlarm,
        MetricAlarm
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AlarmType = AlarmType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CompositeAlarm :: AlarmType
pattern CompositeAlarm = AlarmType' "CompositeAlarm"

pattern MetricAlarm :: AlarmType
pattern MetricAlarm = AlarmType' "MetricAlarm"

{-# COMPLETE
  CompositeAlarm,
  MetricAlarm,
  AlarmType'
  #-}

instance FromText AlarmType where
  parser = (AlarmType' . mk) <$> takeText

instance ToText AlarmType where
  toText (AlarmType' ci) = original ci

instance Hashable AlarmType

instance NFData AlarmType

instance ToByteString AlarmType

instance ToQuery AlarmType

instance ToHeader AlarmType

instance FromXML AlarmType where
  parseXML = parseXMLText "AlarmType"
