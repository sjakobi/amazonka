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
-- Module      : Network.AWS.MachineLearning.Types.RealtimeEndpointStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.RealtimeEndpointStatus
  ( RealtimeEndpointStatus
      ( ..,
        RealtimeEndpointStatusFAILED,
        RealtimeEndpointStatusNONE,
        RealtimeEndpointStatusREADY,
        RealtimeEndpointStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RealtimeEndpointStatus = RealtimeEndpointStatus'
  { fromRealtimeEndpointStatus ::
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

pattern RealtimeEndpointStatusFAILED :: RealtimeEndpointStatus
pattern RealtimeEndpointStatusFAILED = RealtimeEndpointStatus' "FAILED"

pattern RealtimeEndpointStatusNONE :: RealtimeEndpointStatus
pattern RealtimeEndpointStatusNONE = RealtimeEndpointStatus' "NONE"

pattern RealtimeEndpointStatusREADY :: RealtimeEndpointStatus
pattern RealtimeEndpointStatusREADY = RealtimeEndpointStatus' "READY"

pattern RealtimeEndpointStatusUPDATING :: RealtimeEndpointStatus
pattern RealtimeEndpointStatusUPDATING = RealtimeEndpointStatus' "UPDATING"

{-# COMPLETE
  RealtimeEndpointStatusFAILED,
  RealtimeEndpointStatusNONE,
  RealtimeEndpointStatusREADY,
  RealtimeEndpointStatusUPDATING,
  RealtimeEndpointStatus'
  #-}

instance Prelude.FromText RealtimeEndpointStatus where
  parser = RealtimeEndpointStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RealtimeEndpointStatus where
  toText (RealtimeEndpointStatus' x) = x

instance Prelude.Hashable RealtimeEndpointStatus

instance Prelude.NFData RealtimeEndpointStatus

instance Prelude.ToByteString RealtimeEndpointStatus

instance Prelude.ToQuery RealtimeEndpointStatus

instance Prelude.ToHeader RealtimeEndpointStatus

instance Prelude.FromJSON RealtimeEndpointStatus where
  parseJSON = Prelude.parseJSONText "RealtimeEndpointStatus"
