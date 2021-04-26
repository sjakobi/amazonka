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
-- Module      : Network.AWS.Glue.Types.TriggerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TriggerState
  ( TriggerState
      ( ..,
        TriggerStateACTIVATED,
        TriggerStateACTIVATING,
        TriggerStateCREATED,
        TriggerStateCREATING,
        TriggerStateDEACTIVATED,
        TriggerStateDEACTIVATING,
        TriggerStateDELETING,
        TriggerStateUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TriggerState = TriggerState'
  { fromTriggerState ::
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

pattern TriggerStateACTIVATED :: TriggerState
pattern TriggerStateACTIVATED = TriggerState' "ACTIVATED"

pattern TriggerStateACTIVATING :: TriggerState
pattern TriggerStateACTIVATING = TriggerState' "ACTIVATING"

pattern TriggerStateCREATED :: TriggerState
pattern TriggerStateCREATED = TriggerState' "CREATED"

pattern TriggerStateCREATING :: TriggerState
pattern TriggerStateCREATING = TriggerState' "CREATING"

pattern TriggerStateDEACTIVATED :: TriggerState
pattern TriggerStateDEACTIVATED = TriggerState' "DEACTIVATED"

pattern TriggerStateDEACTIVATING :: TriggerState
pattern TriggerStateDEACTIVATING = TriggerState' "DEACTIVATING"

pattern TriggerStateDELETING :: TriggerState
pattern TriggerStateDELETING = TriggerState' "DELETING"

pattern TriggerStateUPDATING :: TriggerState
pattern TriggerStateUPDATING = TriggerState' "UPDATING"

{-# COMPLETE
  TriggerStateACTIVATED,
  TriggerStateACTIVATING,
  TriggerStateCREATED,
  TriggerStateCREATING,
  TriggerStateDEACTIVATED,
  TriggerStateDEACTIVATING,
  TriggerStateDELETING,
  TriggerStateUPDATING,
  TriggerState'
  #-}

instance Prelude.FromText TriggerState where
  parser = TriggerState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TriggerState where
  toText (TriggerState' x) = x

instance Prelude.Hashable TriggerState

instance Prelude.NFData TriggerState

instance Prelude.ToByteString TriggerState

instance Prelude.ToQuery TriggerState

instance Prelude.ToHeader TriggerState

instance Prelude.FromJSON TriggerState where
  parseJSON = Prelude.parseJSONText "TriggerState"
