{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ResourceComplianceSummaryItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ResourceComplianceSummaryItem where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.ComplianceExecutionSummary
import Network.AWS.SSM.Types.ComplianceSeverity
import Network.AWS.SSM.Types.ComplianceStatus
import Network.AWS.SSM.Types.CompliantSummary
import Network.AWS.SSM.Types.NonCompliantSummary

-- | Compliance summary information for a specific resource.
--
--
--
-- /See:/ 'resourceComplianceSummaryItem' smart constructor.
data ResourceComplianceSummaryItem = ResourceComplianceSummaryItem'
  { _rcsiResourceId ::
      !( Maybe
           Text
       ),
    _rcsiStatus ::
      !( Maybe
           ComplianceStatus
       ),
    _rcsiOverallSeverity ::
      !( Maybe
           ComplianceSeverity
       ),
    _rcsiCompliantSummary ::
      !( Maybe
           CompliantSummary
       ),
    _rcsiComplianceType ::
      !( Maybe
           Text
       ),
    _rcsiResourceType ::
      !( Maybe
           Text
       ),
    _rcsiNonCompliantSummary ::
      !( Maybe
           NonCompliantSummary
       ),
    _rcsiExecutionSummary ::
      !( Maybe
           ComplianceExecutionSummary
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ResourceComplianceSummaryItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcsiResourceId' - The resource ID.
--
-- * 'rcsiStatus' - The compliance status for the resource.
--
-- * 'rcsiOverallSeverity' - The highest severity item found for the resource. The resource is compliant for this item.
--
-- * 'rcsiCompliantSummary' - A list of items that are compliant for the resource.
--
-- * 'rcsiComplianceType' - The compliance type.
--
-- * 'rcsiResourceType' - The resource type.
--
-- * 'rcsiNonCompliantSummary' - A list of items that aren't compliant for the resource.
--
-- * 'rcsiExecutionSummary' - Information about the execution.
resourceComplianceSummaryItem ::
  ResourceComplianceSummaryItem
resourceComplianceSummaryItem =
  ResourceComplianceSummaryItem'
    { _rcsiResourceId =
        Nothing,
      _rcsiStatus = Nothing,
      _rcsiOverallSeverity = Nothing,
      _rcsiCompliantSummary = Nothing,
      _rcsiComplianceType = Nothing,
      _rcsiResourceType = Nothing,
      _rcsiNonCompliantSummary = Nothing,
      _rcsiExecutionSummary = Nothing
    }

-- | The resource ID.
rcsiResourceId :: Lens' ResourceComplianceSummaryItem (Maybe Text)
rcsiResourceId = lens _rcsiResourceId (\s a -> s {_rcsiResourceId = a})

-- | The compliance status for the resource.
rcsiStatus :: Lens' ResourceComplianceSummaryItem (Maybe ComplianceStatus)
rcsiStatus = lens _rcsiStatus (\s a -> s {_rcsiStatus = a})

-- | The highest severity item found for the resource. The resource is compliant for this item.
rcsiOverallSeverity :: Lens' ResourceComplianceSummaryItem (Maybe ComplianceSeverity)
rcsiOverallSeverity = lens _rcsiOverallSeverity (\s a -> s {_rcsiOverallSeverity = a})

-- | A list of items that are compliant for the resource.
rcsiCompliantSummary :: Lens' ResourceComplianceSummaryItem (Maybe CompliantSummary)
rcsiCompliantSummary = lens _rcsiCompliantSummary (\s a -> s {_rcsiCompliantSummary = a})

-- | The compliance type.
rcsiComplianceType :: Lens' ResourceComplianceSummaryItem (Maybe Text)
rcsiComplianceType = lens _rcsiComplianceType (\s a -> s {_rcsiComplianceType = a})

-- | The resource type.
rcsiResourceType :: Lens' ResourceComplianceSummaryItem (Maybe Text)
rcsiResourceType = lens _rcsiResourceType (\s a -> s {_rcsiResourceType = a})

-- | A list of items that aren't compliant for the resource.
rcsiNonCompliantSummary :: Lens' ResourceComplianceSummaryItem (Maybe NonCompliantSummary)
rcsiNonCompliantSummary = lens _rcsiNonCompliantSummary (\s a -> s {_rcsiNonCompliantSummary = a})

-- | Information about the execution.
rcsiExecutionSummary :: Lens' ResourceComplianceSummaryItem (Maybe ComplianceExecutionSummary)
rcsiExecutionSummary = lens _rcsiExecutionSummary (\s a -> s {_rcsiExecutionSummary = a})

instance FromJSON ResourceComplianceSummaryItem where
  parseJSON =
    withObject
      "ResourceComplianceSummaryItem"
      ( \x ->
          ResourceComplianceSummaryItem'
            <$> (x .:? "ResourceId")
            <*> (x .:? "Status")
            <*> (x .:? "OverallSeverity")
            <*> (x .:? "CompliantSummary")
            <*> (x .:? "ComplianceType")
            <*> (x .:? "ResourceType")
            <*> (x .:? "NonCompliantSummary")
            <*> (x .:? "ExecutionSummary")
      )

instance Hashable ResourceComplianceSummaryItem

instance NFData ResourceComplianceSummaryItem
