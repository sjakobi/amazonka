{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.UpgradeStepItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.UpgradeStepItem where

import Network.AWS.ElasticSearch.Types.UpgradeStatus
import Network.AWS.ElasticSearch.Types.UpgradeStep
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a single step of the Upgrade or Upgrade Eligibility Check workflow.
--
--
--
-- /See:/ 'upgradeStepItem' smart constructor.
data UpgradeStepItem = UpgradeStepItem'
  { _usiUpgradeStepStatus ::
      !(Maybe UpgradeStatus),
    _usiProgressPercent :: !(Maybe Double),
    _usiUpgradeStep :: !(Maybe UpgradeStep),
    _usiIssues :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpgradeStepItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usiUpgradeStepStatus' - The status of a particular step during an upgrade. The status can take one of the following values:     * In Progress    * Succeeded    * Succeeded with Issues    * Failed
--
-- * 'usiProgressPercent' - The Floating point value representing progress percentage of a particular step.
--
-- * 'usiUpgradeStep' - Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:     * PreUpgradeCheck    * Snapshot    * Upgrade
--
-- * 'usiIssues' - A list of strings containing detailed information about the errors encountered in a particular step.
upgradeStepItem ::
  UpgradeStepItem
upgradeStepItem =
  UpgradeStepItem'
    { _usiUpgradeStepStatus = Nothing,
      _usiProgressPercent = Nothing,
      _usiUpgradeStep = Nothing,
      _usiIssues = Nothing
    }

-- | The status of a particular step during an upgrade. The status can take one of the following values:     * In Progress    * Succeeded    * Succeeded with Issues    * Failed
usiUpgradeStepStatus :: Lens' UpgradeStepItem (Maybe UpgradeStatus)
usiUpgradeStepStatus = lens _usiUpgradeStepStatus (\s a -> s {_usiUpgradeStepStatus = a})

-- | The Floating point value representing progress percentage of a particular step.
usiProgressPercent :: Lens' UpgradeStepItem (Maybe Double)
usiProgressPercent = lens _usiProgressPercent (\s a -> s {_usiProgressPercent = a})

-- | Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:     * PreUpgradeCheck    * Snapshot    * Upgrade
usiUpgradeStep :: Lens' UpgradeStepItem (Maybe UpgradeStep)
usiUpgradeStep = lens _usiUpgradeStep (\s a -> s {_usiUpgradeStep = a})

-- | A list of strings containing detailed information about the errors encountered in a particular step.
usiIssues :: Lens' UpgradeStepItem [Text]
usiIssues = lens _usiIssues (\s a -> s {_usiIssues = a}) . _Default . _Coerce

instance FromJSON UpgradeStepItem where
  parseJSON =
    withObject
      "UpgradeStepItem"
      ( \x ->
          UpgradeStepItem'
            <$> (x .:? "UpgradeStepStatus")
            <*> (x .:? "ProgressPercent")
            <*> (x .:? "UpgradeStep")
            <*> (x .:? "Issues" .!= mempty)
      )

instance Hashable UpgradeStepItem

instance NFData UpgradeStepItem
