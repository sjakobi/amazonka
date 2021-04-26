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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.RiskLevelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.RiskLevelType
  ( RiskLevelType
      ( ..,
        RiskLevelTypeHigh,
        RiskLevelTypeLow,
        RiskLevelTypeMedium
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RiskLevelType = RiskLevelType'
  { fromRiskLevelType ::
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

pattern RiskLevelTypeHigh :: RiskLevelType
pattern RiskLevelTypeHigh = RiskLevelType' "High"

pattern RiskLevelTypeLow :: RiskLevelType
pattern RiskLevelTypeLow = RiskLevelType' "Low"

pattern RiskLevelTypeMedium :: RiskLevelType
pattern RiskLevelTypeMedium = RiskLevelType' "Medium"

{-# COMPLETE
  RiskLevelTypeHigh,
  RiskLevelTypeLow,
  RiskLevelTypeMedium,
  RiskLevelType'
  #-}

instance Prelude.FromText RiskLevelType where
  parser = RiskLevelType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RiskLevelType where
  toText (RiskLevelType' x) = x

instance Prelude.Hashable RiskLevelType

instance Prelude.NFData RiskLevelType

instance Prelude.ToByteString RiskLevelType

instance Prelude.ToQuery RiskLevelType

instance Prelude.ToHeader RiskLevelType

instance Prelude.FromJSON RiskLevelType where
  parseJSON = Prelude.parseJSONText "RiskLevelType"
