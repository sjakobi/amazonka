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
-- Module      : Network.AWS.Lambda.Types.EventSourcePosition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.EventSourcePosition
  ( EventSourcePosition
      ( ..,
        EventSourcePositionATTIMESTAMP,
        EventSourcePositionLATEST,
        EventSourcePositionTRIMHORIZON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventSourcePosition = EventSourcePosition'
  { fromEventSourcePosition ::
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

pattern EventSourcePositionATTIMESTAMP :: EventSourcePosition
pattern EventSourcePositionATTIMESTAMP = EventSourcePosition' "AT_TIMESTAMP"

pattern EventSourcePositionLATEST :: EventSourcePosition
pattern EventSourcePositionLATEST = EventSourcePosition' "LATEST"

pattern EventSourcePositionTRIMHORIZON :: EventSourcePosition
pattern EventSourcePositionTRIMHORIZON = EventSourcePosition' "TRIM_HORIZON"

{-# COMPLETE
  EventSourcePositionATTIMESTAMP,
  EventSourcePositionLATEST,
  EventSourcePositionTRIMHORIZON,
  EventSourcePosition'
  #-}

instance Prelude.FromText EventSourcePosition where
  parser = EventSourcePosition' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventSourcePosition where
  toText (EventSourcePosition' x) = x

instance Prelude.Hashable EventSourcePosition

instance Prelude.NFData EventSourcePosition

instance Prelude.ToByteString EventSourcePosition

instance Prelude.ToQuery EventSourcePosition

instance Prelude.ToHeader EventSourcePosition

instance Prelude.ToJSON EventSourcePosition where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EventSourcePosition where
  parseJSON = Prelude.parseJSONText "EventSourcePosition"
