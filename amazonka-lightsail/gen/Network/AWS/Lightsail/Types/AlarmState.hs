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
-- Module      : Network.AWS.Lightsail.Types.AlarmState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.AlarmState
  ( AlarmState
      ( ..,
        AlarmStateALARM,
        AlarmStateINSUFFICIENTDATA,
        AlarmStateOK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AlarmState = AlarmState'
  { fromAlarmState ::
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

pattern AlarmStateALARM :: AlarmState
pattern AlarmStateALARM = AlarmState' "ALARM"

pattern AlarmStateINSUFFICIENTDATA :: AlarmState
pattern AlarmStateINSUFFICIENTDATA = AlarmState' "INSUFFICIENT_DATA"

pattern AlarmStateOK :: AlarmState
pattern AlarmStateOK = AlarmState' "OK"

{-# COMPLETE
  AlarmStateALARM,
  AlarmStateINSUFFICIENTDATA,
  AlarmStateOK,
  AlarmState'
  #-}

instance Prelude.FromText AlarmState where
  parser = AlarmState' Prelude.<$> Prelude.takeText

instance Prelude.ToText AlarmState where
  toText (AlarmState' x) = x

instance Prelude.Hashable AlarmState

instance Prelude.NFData AlarmState

instance Prelude.ToByteString AlarmState

instance Prelude.ToQuery AlarmState

instance Prelude.ToHeader AlarmState

instance Prelude.ToJSON AlarmState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AlarmState where
  parseJSON = Prelude.parseJSONText "AlarmState"
