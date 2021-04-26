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
-- Module      : Network.AWS.Lightsail.Types.ContainerServiceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServiceState
  ( ContainerServiceState
      ( ..,
        ContainerServiceStateDELETING,
        ContainerServiceStateDISABLED,
        ContainerServiceStatePENDING,
        ContainerServiceStateREADY,
        ContainerServiceStateRUNNING,
        ContainerServiceStateUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerServiceState = ContainerServiceState'
  { fromContainerServiceState ::
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

pattern ContainerServiceStateDELETING :: ContainerServiceState
pattern ContainerServiceStateDELETING = ContainerServiceState' "DELETING"

pattern ContainerServiceStateDISABLED :: ContainerServiceState
pattern ContainerServiceStateDISABLED = ContainerServiceState' "DISABLED"

pattern ContainerServiceStatePENDING :: ContainerServiceState
pattern ContainerServiceStatePENDING = ContainerServiceState' "PENDING"

pattern ContainerServiceStateREADY :: ContainerServiceState
pattern ContainerServiceStateREADY = ContainerServiceState' "READY"

pattern ContainerServiceStateRUNNING :: ContainerServiceState
pattern ContainerServiceStateRUNNING = ContainerServiceState' "RUNNING"

pattern ContainerServiceStateUPDATING :: ContainerServiceState
pattern ContainerServiceStateUPDATING = ContainerServiceState' "UPDATING"

{-# COMPLETE
  ContainerServiceStateDELETING,
  ContainerServiceStateDISABLED,
  ContainerServiceStatePENDING,
  ContainerServiceStateREADY,
  ContainerServiceStateRUNNING,
  ContainerServiceStateUPDATING,
  ContainerServiceState'
  #-}

instance Prelude.FromText ContainerServiceState where
  parser = ContainerServiceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerServiceState where
  toText (ContainerServiceState' x) = x

instance Prelude.Hashable ContainerServiceState

instance Prelude.NFData ContainerServiceState

instance Prelude.ToByteString ContainerServiceState

instance Prelude.ToQuery ContainerServiceState

instance Prelude.ToHeader ContainerServiceState

instance Prelude.FromJSON ContainerServiceState where
  parseJSON = Prelude.parseJSONText "ContainerServiceState"
