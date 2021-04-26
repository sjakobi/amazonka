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
-- Module      : Network.AWS.Route53AutoNaming.Types.CustomHealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.CustomHealthStatus
  ( CustomHealthStatus
      ( ..,
        CustomHealthStatusHEALTHY,
        CustomHealthStatusUNHEALTHY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CustomHealthStatus = CustomHealthStatus'
  { fromCustomHealthStatus ::
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

pattern CustomHealthStatusHEALTHY :: CustomHealthStatus
pattern CustomHealthStatusHEALTHY = CustomHealthStatus' "HEALTHY"

pattern CustomHealthStatusUNHEALTHY :: CustomHealthStatus
pattern CustomHealthStatusUNHEALTHY = CustomHealthStatus' "UNHEALTHY"

{-# COMPLETE
  CustomHealthStatusHEALTHY,
  CustomHealthStatusUNHEALTHY,
  CustomHealthStatus'
  #-}

instance Prelude.FromText CustomHealthStatus where
  parser = CustomHealthStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CustomHealthStatus where
  toText (CustomHealthStatus' x) = x

instance Prelude.Hashable CustomHealthStatus

instance Prelude.NFData CustomHealthStatus

instance Prelude.ToByteString CustomHealthStatus

instance Prelude.ToQuery CustomHealthStatus

instance Prelude.ToHeader CustomHealthStatus

instance Prelude.ToJSON CustomHealthStatus where
  toJSON = Prelude.toJSONText
