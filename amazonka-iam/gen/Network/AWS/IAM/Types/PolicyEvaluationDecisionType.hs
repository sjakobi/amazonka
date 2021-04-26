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
-- Module      : Network.AWS.IAM.Types.PolicyEvaluationDecisionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyEvaluationDecisionType
  ( PolicyEvaluationDecisionType
      ( ..,
        PolicyEvaluationDecisionTypeAllowed,
        PolicyEvaluationDecisionTypeExplicitDeny,
        PolicyEvaluationDecisionTypeImplicitDeny
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicyEvaluationDecisionType = PolicyEvaluationDecisionType'
  { fromPolicyEvaluationDecisionType ::
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

pattern PolicyEvaluationDecisionTypeAllowed :: PolicyEvaluationDecisionType
pattern PolicyEvaluationDecisionTypeAllowed = PolicyEvaluationDecisionType' "allowed"

pattern PolicyEvaluationDecisionTypeExplicitDeny :: PolicyEvaluationDecisionType
pattern PolicyEvaluationDecisionTypeExplicitDeny = PolicyEvaluationDecisionType' "explicitDeny"

pattern PolicyEvaluationDecisionTypeImplicitDeny :: PolicyEvaluationDecisionType
pattern PolicyEvaluationDecisionTypeImplicitDeny = PolicyEvaluationDecisionType' "implicitDeny"

{-# COMPLETE
  PolicyEvaluationDecisionTypeAllowed,
  PolicyEvaluationDecisionTypeExplicitDeny,
  PolicyEvaluationDecisionTypeImplicitDeny,
  PolicyEvaluationDecisionType'
  #-}

instance Prelude.FromText PolicyEvaluationDecisionType where
  parser = PolicyEvaluationDecisionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicyEvaluationDecisionType where
  toText (PolicyEvaluationDecisionType' x) = x

instance Prelude.Hashable PolicyEvaluationDecisionType

instance Prelude.NFData PolicyEvaluationDecisionType

instance Prelude.ToByteString PolicyEvaluationDecisionType

instance Prelude.ToQuery PolicyEvaluationDecisionType

instance Prelude.ToHeader PolicyEvaluationDecisionType

instance Prelude.FromXML PolicyEvaluationDecisionType where
  parseXML = Prelude.parseXMLText "PolicyEvaluationDecisionType"
