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
-- Module      : Network.AWS.EMR.Types.InstanceGroupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceGroupState
  ( InstanceGroupState
      ( ..,
        InstanceGroupStateARRESTED,
        InstanceGroupStateBOOTSTRAPPING,
        InstanceGroupStateENDED,
        InstanceGroupStatePROVISIONING,
        InstanceGroupStateRECONFIGURING,
        InstanceGroupStateRESIZING,
        InstanceGroupStateRUNNING,
        InstanceGroupStateSHUTTINGDOWN,
        InstanceGroupStateSUSPENDED,
        InstanceGroupStateTERMINATED,
        InstanceGroupStateTERMINATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceGroupState = InstanceGroupState'
  { fromInstanceGroupState ::
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

pattern InstanceGroupStateARRESTED :: InstanceGroupState
pattern InstanceGroupStateARRESTED = InstanceGroupState' "ARRESTED"

pattern InstanceGroupStateBOOTSTRAPPING :: InstanceGroupState
pattern InstanceGroupStateBOOTSTRAPPING = InstanceGroupState' "BOOTSTRAPPING"

pattern InstanceGroupStateENDED :: InstanceGroupState
pattern InstanceGroupStateENDED = InstanceGroupState' "ENDED"

pattern InstanceGroupStatePROVISIONING :: InstanceGroupState
pattern InstanceGroupStatePROVISIONING = InstanceGroupState' "PROVISIONING"

pattern InstanceGroupStateRECONFIGURING :: InstanceGroupState
pattern InstanceGroupStateRECONFIGURING = InstanceGroupState' "RECONFIGURING"

pattern InstanceGroupStateRESIZING :: InstanceGroupState
pattern InstanceGroupStateRESIZING = InstanceGroupState' "RESIZING"

pattern InstanceGroupStateRUNNING :: InstanceGroupState
pattern InstanceGroupStateRUNNING = InstanceGroupState' "RUNNING"

pattern InstanceGroupStateSHUTTINGDOWN :: InstanceGroupState
pattern InstanceGroupStateSHUTTINGDOWN = InstanceGroupState' "SHUTTING_DOWN"

pattern InstanceGroupStateSUSPENDED :: InstanceGroupState
pattern InstanceGroupStateSUSPENDED = InstanceGroupState' "SUSPENDED"

pattern InstanceGroupStateTERMINATED :: InstanceGroupState
pattern InstanceGroupStateTERMINATED = InstanceGroupState' "TERMINATED"

pattern InstanceGroupStateTERMINATING :: InstanceGroupState
pattern InstanceGroupStateTERMINATING = InstanceGroupState' "TERMINATING"

{-# COMPLETE
  InstanceGroupStateARRESTED,
  InstanceGroupStateBOOTSTRAPPING,
  InstanceGroupStateENDED,
  InstanceGroupStatePROVISIONING,
  InstanceGroupStateRECONFIGURING,
  InstanceGroupStateRESIZING,
  InstanceGroupStateRUNNING,
  InstanceGroupStateSHUTTINGDOWN,
  InstanceGroupStateSUSPENDED,
  InstanceGroupStateTERMINATED,
  InstanceGroupStateTERMINATING,
  InstanceGroupState'
  #-}

instance Prelude.FromText InstanceGroupState where
  parser = InstanceGroupState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceGroupState where
  toText (InstanceGroupState' x) = x

instance Prelude.Hashable InstanceGroupState

instance Prelude.NFData InstanceGroupState

instance Prelude.ToByteString InstanceGroupState

instance Prelude.ToQuery InstanceGroupState

instance Prelude.ToHeader InstanceGroupState

instance Prelude.FromJSON InstanceGroupState where
  parseJSON = Prelude.parseJSONText "InstanceGroupState"
