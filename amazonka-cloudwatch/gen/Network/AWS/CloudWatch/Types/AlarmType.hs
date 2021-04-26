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
-- Module      : Network.AWS.CloudWatch.Types.AlarmType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.AlarmType
  ( AlarmType
      ( ..,
        AlarmTypeCompositeAlarm,
        AlarmTypeMetricAlarm
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AlarmType = AlarmType'
  { fromAlarmType ::
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

pattern AlarmTypeCompositeAlarm :: AlarmType
pattern AlarmTypeCompositeAlarm = AlarmType' "CompositeAlarm"

pattern AlarmTypeMetricAlarm :: AlarmType
pattern AlarmTypeMetricAlarm = AlarmType' "MetricAlarm"

{-# COMPLETE
  AlarmTypeCompositeAlarm,
  AlarmTypeMetricAlarm,
  AlarmType'
  #-}

instance Prelude.FromText AlarmType where
  parser = AlarmType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AlarmType where
  toText (AlarmType' x) = x

instance Prelude.Hashable AlarmType

instance Prelude.NFData AlarmType

instance Prelude.ToByteString AlarmType

instance Prelude.ToQuery AlarmType

instance Prelude.ToHeader AlarmType

instance Prelude.FromXML AlarmType where
  parseXML = Prelude.parseXMLText "AlarmType"
