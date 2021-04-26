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
-- Module      : Network.AWS.Config.Types.ComplianceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ComplianceType
  ( ComplianceType
      ( ..,
        ComplianceTypeCOMPLIANT,
        ComplianceTypeINSUFFICIENTDATA,
        ComplianceTypeNONCOMPLIANT,
        ComplianceTypeNOTAPPLICABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ComplianceType = ComplianceType'
  { fromComplianceType ::
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

pattern ComplianceTypeCOMPLIANT :: ComplianceType
pattern ComplianceTypeCOMPLIANT = ComplianceType' "COMPLIANT"

pattern ComplianceTypeINSUFFICIENTDATA :: ComplianceType
pattern ComplianceTypeINSUFFICIENTDATA = ComplianceType' "INSUFFICIENT_DATA"

pattern ComplianceTypeNONCOMPLIANT :: ComplianceType
pattern ComplianceTypeNONCOMPLIANT = ComplianceType' "NON_COMPLIANT"

pattern ComplianceTypeNOTAPPLICABLE :: ComplianceType
pattern ComplianceTypeNOTAPPLICABLE = ComplianceType' "NOT_APPLICABLE"

{-# COMPLETE
  ComplianceTypeCOMPLIANT,
  ComplianceTypeINSUFFICIENTDATA,
  ComplianceTypeNONCOMPLIANT,
  ComplianceTypeNOTAPPLICABLE,
  ComplianceType'
  #-}

instance Prelude.FromText ComplianceType where
  parser = ComplianceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComplianceType where
  toText (ComplianceType' x) = x

instance Prelude.Hashable ComplianceType

instance Prelude.NFData ComplianceType

instance Prelude.ToByteString ComplianceType

instance Prelude.ToQuery ComplianceType

instance Prelude.ToHeader ComplianceType

instance Prelude.ToJSON ComplianceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ComplianceType where
  parseJSON = Prelude.parseJSONText "ComplianceType"
