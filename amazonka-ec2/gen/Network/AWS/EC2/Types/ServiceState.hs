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
-- Module      : Network.AWS.EC2.Types.ServiceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ServiceState
  ( ServiceState
      ( ..,
        ServiceStateAvailable,
        ServiceStateDeleted,
        ServiceStateDeleting,
        ServiceStateFailed,
        ServiceStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ServiceState = ServiceState'
  { fromServiceState ::
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

pattern ServiceStateAvailable :: ServiceState
pattern ServiceStateAvailable = ServiceState' "Available"

pattern ServiceStateDeleted :: ServiceState
pattern ServiceStateDeleted = ServiceState' "Deleted"

pattern ServiceStateDeleting :: ServiceState
pattern ServiceStateDeleting = ServiceState' "Deleting"

pattern ServiceStateFailed :: ServiceState
pattern ServiceStateFailed = ServiceState' "Failed"

pattern ServiceStatePending :: ServiceState
pattern ServiceStatePending = ServiceState' "Pending"

{-# COMPLETE
  ServiceStateAvailable,
  ServiceStateDeleted,
  ServiceStateDeleting,
  ServiceStateFailed,
  ServiceStatePending,
  ServiceState'
  #-}

instance Prelude.FromText ServiceState where
  parser = ServiceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceState where
  toText (ServiceState' x) = x

instance Prelude.Hashable ServiceState

instance Prelude.NFData ServiceState

instance Prelude.ToByteString ServiceState

instance Prelude.ToQuery ServiceState

instance Prelude.ToHeader ServiceState

instance Prelude.FromXML ServiceState where
  parseXML = Prelude.parseXMLText "ServiceState"
