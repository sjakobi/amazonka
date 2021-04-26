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
-- Module      : Network.AWS.Route53.Types.HealthCheckType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.HealthCheckType
  ( HealthCheckType
      ( ..,
        HealthCheckTypeCALCULATED,
        HealthCheckTypeCLOUDWATCHMETRIC,
        HealthCheckTypeHTTP,
        HealthCheckTypeHTTPS,
        HealthCheckTypeHTTPSSTRMATCH,
        HealthCheckTypeHTTPSTRMATCH,
        HealthCheckTypeTCP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

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

pattern HealthCheckTypeCALCULATED :: HealthCheckType
pattern HealthCheckTypeCALCULATED = HealthCheckType' "CALCULATED"

pattern HealthCheckTypeCLOUDWATCHMETRIC :: HealthCheckType
pattern HealthCheckTypeCLOUDWATCHMETRIC = HealthCheckType' "CLOUDWATCH_METRIC"

pattern HealthCheckTypeHTTP :: HealthCheckType
pattern HealthCheckTypeHTTP = HealthCheckType' "HTTP"

pattern HealthCheckTypeHTTPS :: HealthCheckType
pattern HealthCheckTypeHTTPS = HealthCheckType' "HTTPS"

pattern HealthCheckTypeHTTPSSTRMATCH :: HealthCheckType
pattern HealthCheckTypeHTTPSSTRMATCH = HealthCheckType' "HTTPS_STR_MATCH"

pattern HealthCheckTypeHTTPSTRMATCH :: HealthCheckType
pattern HealthCheckTypeHTTPSTRMATCH = HealthCheckType' "HTTP_STR_MATCH"

pattern HealthCheckTypeTCP :: HealthCheckType
pattern HealthCheckTypeTCP = HealthCheckType' "TCP"

{-# COMPLETE
  HealthCheckTypeCALCULATED,
  HealthCheckTypeCLOUDWATCHMETRIC,
  HealthCheckTypeHTTP,
  HealthCheckTypeHTTPS,
  HealthCheckTypeHTTPSSTRMATCH,
  HealthCheckTypeHTTPSTRMATCH,
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

instance Prelude.FromXML HealthCheckType where
  parseXML = Prelude.parseXMLText "HealthCheckType"

instance Prelude.ToXML HealthCheckType where
  toXML = Prelude.toXMLText
