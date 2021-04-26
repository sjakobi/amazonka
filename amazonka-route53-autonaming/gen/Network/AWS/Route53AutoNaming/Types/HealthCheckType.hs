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
-- Module      : Network.AWS.Route53AutoNaming.Types.HealthCheckType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.HealthCheckType
  ( HealthCheckType
      ( ..,
        HealthCheckTypeHTTP,
        HealthCheckTypeHTTPS,
        HealthCheckTypeTCP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HealthCheckType = HealthCheckType'
  { fromHealthCheckType ::
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

pattern HealthCheckTypeHTTP :: HealthCheckType
pattern HealthCheckTypeHTTP = HealthCheckType' "HTTP"

pattern HealthCheckTypeHTTPS :: HealthCheckType
pattern HealthCheckTypeHTTPS = HealthCheckType' "HTTPS"

pattern HealthCheckTypeTCP :: HealthCheckType
pattern HealthCheckTypeTCP = HealthCheckType' "TCP"

{-# COMPLETE
  HealthCheckTypeHTTP,
  HealthCheckTypeHTTPS,
  HealthCheckTypeTCP,
  HealthCheckType'
  #-}

instance Prelude.FromText HealthCheckType where
  parser = HealthCheckType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HealthCheckType where
  toText (HealthCheckType' x) = x

instance Prelude.Hashable HealthCheckType

instance Prelude.NFData HealthCheckType

instance Prelude.ToByteString HealthCheckType

instance Prelude.ToQuery HealthCheckType

instance Prelude.ToHeader HealthCheckType

instance Prelude.ToJSON HealthCheckType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HealthCheckType where
  parseJSON = Prelude.parseJSONText "HealthCheckType"
