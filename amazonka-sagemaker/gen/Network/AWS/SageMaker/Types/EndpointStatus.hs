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
-- Module      : Network.AWS.SageMaker.Types.EndpointStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EndpointStatus
  ( EndpointStatus
      ( ..,
        EndpointStatusCreating,
        EndpointStatusDeleting,
        EndpointStatusFailed,
        EndpointStatusInService,
        EndpointStatusOutOfService,
        EndpointStatusRollingBack,
        EndpointStatusSystemUpdating,
        EndpointStatusUpdating
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EndpointStatus = EndpointStatus'
  { fromEndpointStatus ::
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

pattern EndpointStatusCreating :: EndpointStatus
pattern EndpointStatusCreating = EndpointStatus' "Creating"

pattern EndpointStatusDeleting :: EndpointStatus
pattern EndpointStatusDeleting = EndpointStatus' "Deleting"

pattern EndpointStatusFailed :: EndpointStatus
pattern EndpointStatusFailed = EndpointStatus' "Failed"

pattern EndpointStatusInService :: EndpointStatus
pattern EndpointStatusInService = EndpointStatus' "InService"

pattern EndpointStatusOutOfService :: EndpointStatus
pattern EndpointStatusOutOfService = EndpointStatus' "OutOfService"

pattern EndpointStatusRollingBack :: EndpointStatus
pattern EndpointStatusRollingBack = EndpointStatus' "RollingBack"

pattern EndpointStatusSystemUpdating :: EndpointStatus
pattern EndpointStatusSystemUpdating = EndpointStatus' "SystemUpdating"

pattern EndpointStatusUpdating :: EndpointStatus
pattern EndpointStatusUpdating = EndpointStatus' "Updating"

{-# COMPLETE
  EndpointStatusCreating,
  EndpointStatusDeleting,
  EndpointStatusFailed,
  EndpointStatusInService,
  EndpointStatusOutOfService,
  EndpointStatusRollingBack,
  EndpointStatusSystemUpdating,
  EndpointStatusUpdating,
  EndpointStatus'
  #-}

instance Prelude.FromText EndpointStatus where
  parser = EndpointStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EndpointStatus where
  toText (EndpointStatus' x) = x

instance Prelude.Hashable EndpointStatus

instance Prelude.NFData EndpointStatus

instance Prelude.ToByteString EndpointStatus

instance Prelude.ToQuery EndpointStatus

instance Prelude.ToHeader EndpointStatus

instance Prelude.ToJSON EndpointStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EndpointStatus where
  parseJSON = Prelude.parseJSONText "EndpointStatus"
