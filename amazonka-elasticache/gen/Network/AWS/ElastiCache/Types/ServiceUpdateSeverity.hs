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
-- Module      : Network.AWS.ElastiCache.Types.ServiceUpdateSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.ServiceUpdateSeverity
  ( ServiceUpdateSeverity
      ( ..,
        ServiceUpdateSeverityCritical,
        ServiceUpdateSeverityImportant,
        ServiceUpdateSeverityLow,
        ServiceUpdateSeverityMedium
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceUpdateSeverity = ServiceUpdateSeverity'
  { fromServiceUpdateSeverity ::
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

pattern ServiceUpdateSeverityCritical :: ServiceUpdateSeverity
pattern ServiceUpdateSeverityCritical = ServiceUpdateSeverity' "critical"

pattern ServiceUpdateSeverityImportant :: ServiceUpdateSeverity
pattern ServiceUpdateSeverityImportant = ServiceUpdateSeverity' "important"

pattern ServiceUpdateSeverityLow :: ServiceUpdateSeverity
pattern ServiceUpdateSeverityLow = ServiceUpdateSeverity' "low"

pattern ServiceUpdateSeverityMedium :: ServiceUpdateSeverity
pattern ServiceUpdateSeverityMedium = ServiceUpdateSeverity' "medium"

{-# COMPLETE
  ServiceUpdateSeverityCritical,
  ServiceUpdateSeverityImportant,
  ServiceUpdateSeverityLow,
  ServiceUpdateSeverityMedium,
  ServiceUpdateSeverity'
  #-}

instance Prelude.FromText ServiceUpdateSeverity where
  parser = ServiceUpdateSeverity' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceUpdateSeverity where
  toText (ServiceUpdateSeverity' x) = x

instance Prelude.Hashable ServiceUpdateSeverity

instance Prelude.NFData ServiceUpdateSeverity

instance Prelude.ToByteString ServiceUpdateSeverity

instance Prelude.ToQuery ServiceUpdateSeverity

instance Prelude.ToHeader ServiceUpdateSeverity

instance Prelude.FromXML ServiceUpdateSeverity where
  parseXML = Prelude.parseXMLText "ServiceUpdateSeverity"
