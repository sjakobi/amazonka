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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.RiskDecisionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.RiskDecisionType
  ( RiskDecisionType
      ( ..,
        RiskDecisionTypeAccountTakeover,
        RiskDecisionTypeBlock,
        RiskDecisionTypeNoRisk
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RiskDecisionType = RiskDecisionType'
  { fromRiskDecisionType ::
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

pattern RiskDecisionTypeAccountTakeover :: RiskDecisionType
pattern RiskDecisionTypeAccountTakeover = RiskDecisionType' "AccountTakeover"

pattern RiskDecisionTypeBlock :: RiskDecisionType
pattern RiskDecisionTypeBlock = RiskDecisionType' "Block"

pattern RiskDecisionTypeNoRisk :: RiskDecisionType
pattern RiskDecisionTypeNoRisk = RiskDecisionType' "NoRisk"

{-# COMPLETE
  RiskDecisionTypeAccountTakeover,
  RiskDecisionTypeBlock,
  RiskDecisionTypeNoRisk,
  RiskDecisionType'
  #-}

instance Prelude.FromText RiskDecisionType where
  parser = RiskDecisionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RiskDecisionType where
  toText (RiskDecisionType' x) = x

instance Prelude.Hashable RiskDecisionType

instance Prelude.NFData RiskDecisionType

instance Prelude.ToByteString RiskDecisionType

instance Prelude.ToQuery RiskDecisionType

instance Prelude.ToHeader RiskDecisionType

instance Prelude.FromJSON RiskDecisionType where
  parseJSON = Prelude.parseJSONText "RiskDecisionType"
