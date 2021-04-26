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
-- Module      : Network.AWS.MediaConvert.Types.DashIsoHbbtvCompliance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoHbbtvCompliance
  ( DashIsoHbbtvCompliance
      ( ..,
        DashIsoHbbtvComplianceHBBTV15,
        DashIsoHbbtvComplianceNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Supports HbbTV specification as indicated
newtype DashIsoHbbtvCompliance = DashIsoHbbtvCompliance'
  { fromDashIsoHbbtvCompliance ::
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

pattern DashIsoHbbtvComplianceHBBTV15 :: DashIsoHbbtvCompliance
pattern DashIsoHbbtvComplianceHBBTV15 = DashIsoHbbtvCompliance' "HBBTV_1_5"

pattern DashIsoHbbtvComplianceNONE :: DashIsoHbbtvCompliance
pattern DashIsoHbbtvComplianceNONE = DashIsoHbbtvCompliance' "NONE"

{-# COMPLETE
  DashIsoHbbtvComplianceHBBTV15,
  DashIsoHbbtvComplianceNONE,
  DashIsoHbbtvCompliance'
  #-}

instance Prelude.FromText DashIsoHbbtvCompliance where
  parser = DashIsoHbbtvCompliance' Prelude.<$> Prelude.takeText

instance Prelude.ToText DashIsoHbbtvCompliance where
  toText (DashIsoHbbtvCompliance' x) = x

instance Prelude.Hashable DashIsoHbbtvCompliance

instance Prelude.NFData DashIsoHbbtvCompliance

instance Prelude.ToByteString DashIsoHbbtvCompliance

instance Prelude.ToQuery DashIsoHbbtvCompliance

instance Prelude.ToHeader DashIsoHbbtvCompliance

instance Prelude.ToJSON DashIsoHbbtvCompliance where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DashIsoHbbtvCompliance where
  parseJSON = Prelude.parseJSONText "DashIsoHbbtvCompliance"
