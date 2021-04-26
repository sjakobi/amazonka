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
-- Module      : Network.AWS.Route53AutoNaming.Types.HealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.HealthStatus
  ( HealthStatus
      ( ..,
        HealthStatusHEALTHY,
        HealthStatusUNHEALTHY,
        HealthStatusUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HealthStatus = HealthStatus'
  { fromHealthStatus ::
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

pattern HealthStatusHEALTHY :: HealthStatus
pattern HealthStatusHEALTHY = HealthStatus' "HEALTHY"

pattern HealthStatusUNHEALTHY :: HealthStatus
pattern HealthStatusUNHEALTHY = HealthStatus' "UNHEALTHY"

pattern HealthStatusUNKNOWN :: HealthStatus
pattern HealthStatusUNKNOWN = HealthStatus' "UNKNOWN"

{-# COMPLETE
  HealthStatusHEALTHY,
  HealthStatusUNHEALTHY,
  HealthStatusUNKNOWN,
  HealthStatus'
  #-}

instance Prelude.FromText HealthStatus where
  parser = HealthStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText HealthStatus where
  toText (HealthStatus' x) = x

instance Prelude.Hashable HealthStatus

instance Prelude.NFData HealthStatus

instance Prelude.ToByteString HealthStatus

instance Prelude.ToQuery HealthStatus

instance Prelude.ToHeader HealthStatus

instance Prelude.FromJSON HealthStatus where
  parseJSON = Prelude.parseJSONText "HealthStatus"
