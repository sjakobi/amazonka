{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Allowed,
        ExplicitDeny,
        ImplicitDeny
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PolicyEvaluationDecisionType
  = PolicyEvaluationDecisionType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Allowed :: PolicyEvaluationDecisionType
pattern Allowed = PolicyEvaluationDecisionType' "allowed"

pattern ExplicitDeny :: PolicyEvaluationDecisionType
pattern ExplicitDeny = PolicyEvaluationDecisionType' "explicitDeny"

pattern ImplicitDeny :: PolicyEvaluationDecisionType
pattern ImplicitDeny = PolicyEvaluationDecisionType' "implicitDeny"

{-# COMPLETE
  Allowed,
  ExplicitDeny,
  ImplicitDeny,
  PolicyEvaluationDecisionType'
  #-}

instance FromText PolicyEvaluationDecisionType where
  parser = (PolicyEvaluationDecisionType' . mk) <$> takeText

instance ToText PolicyEvaluationDecisionType where
  toText (PolicyEvaluationDecisionType' ci) = original ci

instance Hashable PolicyEvaluationDecisionType

instance NFData PolicyEvaluationDecisionType

instance ToByteString PolicyEvaluationDecisionType

instance ToQuery PolicyEvaluationDecisionType

instance ToHeader PolicyEvaluationDecisionType

instance FromXML PolicyEvaluationDecisionType where
  parseXML = parseXMLText "PolicyEvaluationDecisionType"
