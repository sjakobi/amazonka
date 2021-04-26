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
-- Module      : Network.AWS.FMS.Types.PolicyComplianceStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.PolicyComplianceStatusType
  ( PolicyComplianceStatusType
      ( ..,
        PolicyComplianceStatusTypeCOMPLIANT,
        PolicyComplianceStatusTypeNONCOMPLIANT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicyComplianceStatusType = PolicyComplianceStatusType'
  { fromPolicyComplianceStatusType ::
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

pattern PolicyComplianceStatusTypeCOMPLIANT :: PolicyComplianceStatusType
pattern PolicyComplianceStatusTypeCOMPLIANT = PolicyComplianceStatusType' "COMPLIANT"

pattern PolicyComplianceStatusTypeNONCOMPLIANT :: PolicyComplianceStatusType
pattern PolicyComplianceStatusTypeNONCOMPLIANT = PolicyComplianceStatusType' "NON_COMPLIANT"

{-# COMPLETE
  PolicyComplianceStatusTypeCOMPLIANT,
  PolicyComplianceStatusTypeNONCOMPLIANT,
  PolicyComplianceStatusType'
  #-}

instance Prelude.FromText PolicyComplianceStatusType where
  parser = PolicyComplianceStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicyComplianceStatusType where
  toText (PolicyComplianceStatusType' x) = x

instance Prelude.Hashable PolicyComplianceStatusType

instance Prelude.NFData PolicyComplianceStatusType

instance Prelude.ToByteString PolicyComplianceStatusType

instance Prelude.ToQuery PolicyComplianceStatusType

instance Prelude.ToHeader PolicyComplianceStatusType

instance Prelude.FromJSON PolicyComplianceStatusType where
  parseJSON = Prelude.parseJSONText "PolicyComplianceStatusType"
