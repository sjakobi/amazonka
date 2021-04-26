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
-- Module      : Network.AWS.MQ.Types.BrokerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.BrokerState
  ( BrokerState
      ( ..,
        BrokerStateCREATIONFAILED,
        BrokerStateCREATIONINPROGRESS,
        BrokerStateDELETIONINPROGRESS,
        BrokerStateREBOOTINPROGRESS,
        BrokerStateRUNNING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The status of the broker.
newtype BrokerState = BrokerState'
  { fromBrokerState ::
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

pattern BrokerStateCREATIONFAILED :: BrokerState
pattern BrokerStateCREATIONFAILED = BrokerState' "CREATION_FAILED"

pattern BrokerStateCREATIONINPROGRESS :: BrokerState
pattern BrokerStateCREATIONINPROGRESS = BrokerState' "CREATION_IN_PROGRESS"

pattern BrokerStateDELETIONINPROGRESS :: BrokerState
pattern BrokerStateDELETIONINPROGRESS = BrokerState' "DELETION_IN_PROGRESS"

pattern BrokerStateREBOOTINPROGRESS :: BrokerState
pattern BrokerStateREBOOTINPROGRESS = BrokerState' "REBOOT_IN_PROGRESS"

pattern BrokerStateRUNNING :: BrokerState
pattern BrokerStateRUNNING = BrokerState' "RUNNING"

{-# COMPLETE
  BrokerStateCREATIONFAILED,
  BrokerStateCREATIONINPROGRESS,
  BrokerStateDELETIONINPROGRESS,
  BrokerStateREBOOTINPROGRESS,
  BrokerStateRUNNING,
  BrokerState'
  #-}

instance Prelude.FromText BrokerState where
  parser = BrokerState' Prelude.<$> Prelude.takeText

instance Prelude.ToText BrokerState where
  toText (BrokerState' x) = x

instance Prelude.Hashable BrokerState

instance Prelude.NFData BrokerState

instance Prelude.ToByteString BrokerState

instance Prelude.ToQuery BrokerState

instance Prelude.ToHeader BrokerState

instance Prelude.FromJSON BrokerState where
  parseJSON = Prelude.parseJSONText "BrokerState"
