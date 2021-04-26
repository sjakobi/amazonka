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
-- Module      : Network.AWS.Config.Types.ConfigRuleComplianceSummaryGroupKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigRuleComplianceSummaryGroupKey
  ( ConfigRuleComplianceSummaryGroupKey
      ( ..,
        ConfigRuleComplianceSummaryGroupKeyACCOUNTID,
        ConfigRuleComplianceSummaryGroupKeyAWSREGION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConfigRuleComplianceSummaryGroupKey = ConfigRuleComplianceSummaryGroupKey'
  { fromConfigRuleComplianceSummaryGroupKey ::
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

pattern ConfigRuleComplianceSummaryGroupKeyACCOUNTID :: ConfigRuleComplianceSummaryGroupKey
pattern ConfigRuleComplianceSummaryGroupKeyACCOUNTID = ConfigRuleComplianceSummaryGroupKey' "ACCOUNT_ID"

pattern ConfigRuleComplianceSummaryGroupKeyAWSREGION :: ConfigRuleComplianceSummaryGroupKey
pattern ConfigRuleComplianceSummaryGroupKeyAWSREGION = ConfigRuleComplianceSummaryGroupKey' "AWS_REGION"

{-# COMPLETE
  ConfigRuleComplianceSummaryGroupKeyACCOUNTID,
  ConfigRuleComplianceSummaryGroupKeyAWSREGION,
  ConfigRuleComplianceSummaryGroupKey'
  #-}

instance Prelude.FromText ConfigRuleComplianceSummaryGroupKey where
  parser = ConfigRuleComplianceSummaryGroupKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConfigRuleComplianceSummaryGroupKey where
  toText (ConfigRuleComplianceSummaryGroupKey' x) = x

instance Prelude.Hashable ConfigRuleComplianceSummaryGroupKey

instance Prelude.NFData ConfigRuleComplianceSummaryGroupKey

instance Prelude.ToByteString ConfigRuleComplianceSummaryGroupKey

instance Prelude.ToQuery ConfigRuleComplianceSummaryGroupKey

instance Prelude.ToHeader ConfigRuleComplianceSummaryGroupKey

instance Prelude.ToJSON ConfigRuleComplianceSummaryGroupKey where
  toJSON = Prelude.toJSONText
