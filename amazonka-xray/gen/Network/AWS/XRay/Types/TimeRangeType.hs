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
-- Module      : Network.AWS.XRay.Types.TimeRangeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.TimeRangeType
  ( TimeRangeType
      ( ..,
        TimeRangeTypeEvent,
        TimeRangeTypeTraceId
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TimeRangeType = TimeRangeType'
  { fromTimeRangeType ::
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

pattern TimeRangeTypeEvent :: TimeRangeType
pattern TimeRangeTypeEvent = TimeRangeType' "Event"

pattern TimeRangeTypeTraceId :: TimeRangeType
pattern TimeRangeTypeTraceId = TimeRangeType' "TraceId"

{-# COMPLETE
  TimeRangeTypeEvent,
  TimeRangeTypeTraceId,
  TimeRangeType'
  #-}

instance Prelude.FromText TimeRangeType where
  parser = TimeRangeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimeRangeType where
  toText (TimeRangeType' x) = x

instance Prelude.Hashable TimeRangeType

instance Prelude.NFData TimeRangeType

instance Prelude.ToByteString TimeRangeType

instance Prelude.ToQuery TimeRangeType

instance Prelude.ToHeader TimeRangeType

instance Prelude.ToJSON TimeRangeType where
  toJSON = Prelude.toJSONText
