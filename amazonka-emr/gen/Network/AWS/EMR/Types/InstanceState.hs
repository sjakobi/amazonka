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
-- Module      : Network.AWS.EMR.Types.InstanceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceState
  ( InstanceState
      ( ..,
        InstanceStateAWAITINGFULFILLMENT,
        InstanceStateBOOTSTRAPPING,
        InstanceStatePROVISIONING,
        InstanceStateRUNNING,
        InstanceStateTERMINATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceState = InstanceState'
  { fromInstanceState ::
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

pattern InstanceStateAWAITINGFULFILLMENT :: InstanceState
pattern InstanceStateAWAITINGFULFILLMENT = InstanceState' "AWAITING_FULFILLMENT"

pattern InstanceStateBOOTSTRAPPING :: InstanceState
pattern InstanceStateBOOTSTRAPPING = InstanceState' "BOOTSTRAPPING"

pattern InstanceStatePROVISIONING :: InstanceState
pattern InstanceStatePROVISIONING = InstanceState' "PROVISIONING"

pattern InstanceStateRUNNING :: InstanceState
pattern InstanceStateRUNNING = InstanceState' "RUNNING"

pattern InstanceStateTERMINATED :: InstanceState
pattern InstanceStateTERMINATED = InstanceState' "TERMINATED"

{-# COMPLETE
  InstanceStateAWAITINGFULFILLMENT,
  InstanceStateBOOTSTRAPPING,
  InstanceStatePROVISIONING,
  InstanceStateRUNNING,
  InstanceStateTERMINATED,
  InstanceState'
  #-}

instance Prelude.FromText InstanceState where
  parser = InstanceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceState where
  toText (InstanceState' x) = x

instance Prelude.Hashable InstanceState

instance Prelude.NFData InstanceState

instance Prelude.ToByteString InstanceState

instance Prelude.ToQuery InstanceState

instance Prelude.ToHeader InstanceState

instance Prelude.ToJSON InstanceState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InstanceState where
  parseJSON = Prelude.parseJSONText "InstanceState"
