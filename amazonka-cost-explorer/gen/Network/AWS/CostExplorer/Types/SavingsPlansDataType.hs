{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.SavingsPlansDataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SavingsPlansDataType
  ( SavingsPlansDataType
      ( ..,
        AmortizedCommitment,
        Attributes,
        Savings,
        Utilization
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SavingsPlansDataType
  = SavingsPlansDataType'
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

pattern AmortizedCommitment :: SavingsPlansDataType
pattern AmortizedCommitment = SavingsPlansDataType' "AMORTIZED_COMMITMENT"

pattern Attributes :: SavingsPlansDataType
pattern Attributes = SavingsPlansDataType' "ATTRIBUTES"

pattern Savings :: SavingsPlansDataType
pattern Savings = SavingsPlansDataType' "SAVINGS"

pattern Utilization :: SavingsPlansDataType
pattern Utilization = SavingsPlansDataType' "UTILIZATION"

{-# COMPLETE
  AmortizedCommitment,
  Attributes,
  Savings,
  Utilization,
  SavingsPlansDataType'
  #-}

instance FromText SavingsPlansDataType where
  parser = (SavingsPlansDataType' . mk) <$> takeText

instance ToText SavingsPlansDataType where
  toText (SavingsPlansDataType' ci) = original ci

instance Hashable SavingsPlansDataType

instance NFData SavingsPlansDataType

instance ToByteString SavingsPlansDataType

instance ToQuery SavingsPlansDataType

instance ToHeader SavingsPlansDataType

instance ToJSON SavingsPlansDataType where
  toJSON = toJSONText
