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
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.ServiceType
  ( ServiceType
      ( ..,
        ServiceTypeDNS,
        ServiceTypeDNSHTTP,
        ServiceTypeHTTP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceType = ServiceType'
  { fromServiceType ::
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

pattern ServiceTypeDNS :: ServiceType
pattern ServiceTypeDNS = ServiceType' "DNS"

pattern ServiceTypeDNSHTTP :: ServiceType
pattern ServiceTypeDNSHTTP = ServiceType' "DNS_HTTP"

pattern ServiceTypeHTTP :: ServiceType
pattern ServiceTypeHTTP = ServiceType' "HTTP"

{-# COMPLETE
  ServiceTypeDNS,
  ServiceTypeDNSHTTP,
  ServiceTypeHTTP,
  ServiceType'
  #-}

instance Prelude.FromText ServiceType where
  parser = ServiceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceType where
  toText (ServiceType' x) = x

instance Prelude.Hashable ServiceType

instance Prelude.NFData ServiceType

instance Prelude.ToByteString ServiceType

instance Prelude.ToQuery ServiceType

instance Prelude.ToHeader ServiceType

instance Prelude.FromJSON ServiceType where
  parseJSON = Prelude.parseJSONText "ServiceType"
