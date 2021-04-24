{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.AggregateComplianceCount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.AggregateComplianceCount where

import Network.AWS.Config.Types.ComplianceSummary
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
--
--
--
-- /See:/ 'aggregateComplianceCount' smart constructor.
data AggregateComplianceCount = AggregateComplianceCount'
  { _accComplianceSummary ::
      !( Maybe
           ComplianceSummary
       ),
    _accGroupName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AggregateComplianceCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accComplianceSummary' - The number of compliant and noncompliant AWS Config rules.
--
-- * 'accGroupName' - The 12-digit account ID or region based on the GroupByKey value.
aggregateComplianceCount ::
  AggregateComplianceCount
aggregateComplianceCount =
  AggregateComplianceCount'
    { _accComplianceSummary =
        Nothing,
      _accGroupName = Nothing
    }

-- | The number of compliant and noncompliant AWS Config rules.
accComplianceSummary :: Lens' AggregateComplianceCount (Maybe ComplianceSummary)
accComplianceSummary = lens _accComplianceSummary (\s a -> s {_accComplianceSummary = a})

-- | The 12-digit account ID or region based on the GroupByKey value.
accGroupName :: Lens' AggregateComplianceCount (Maybe Text)
accGroupName = lens _accGroupName (\s a -> s {_accGroupName = a})

instance FromJSON AggregateComplianceCount where
  parseJSON =
    withObject
      "AggregateComplianceCount"
      ( \x ->
          AggregateComplianceCount'
            <$> (x .:? "ComplianceSummary") <*> (x .:? "GroupName")
      )

instance Hashable AggregateComplianceCount

instance NFData AggregateComplianceCount
