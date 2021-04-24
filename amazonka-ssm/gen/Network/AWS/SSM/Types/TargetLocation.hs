{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.TargetLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.TargetLocation where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The combination of AWS Regions and accounts targeted by the current Automation execution.
--
--
--
-- /See:/ 'targetLocation' smart constructor.
data TargetLocation = TargetLocation'
  { _tlExecutionRoleName ::
      !(Maybe Text),
    _tlAccounts :: !(Maybe (List1 Text)),
    _tlRegions :: !(Maybe (List1 Text)),
    _tlTargetLocationMaxErrors ::
      !(Maybe Text),
    _tlTargetLocationMaxConcurrency ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TargetLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlExecutionRoleName' - The Automation execution role used by the currently running Automation. If not specified, the default value is @AWS-SystemsManager-AutomationExecutionRole@ .
--
-- * 'tlAccounts' - The AWS accounts targeted by the current Automation execution.
--
-- * 'tlRegions' - The AWS Regions targeted by the current Automation execution.
--
-- * 'tlTargetLocationMaxErrors' - The maximum number of errors allowed before the system stops queueing additional Automation executions for the currently running Automation.
--
-- * 'tlTargetLocationMaxConcurrency' - The maximum number of AWS accounts and AWS regions allowed to run the Automation concurrently.
targetLocation ::
  TargetLocation
targetLocation =
  TargetLocation'
    { _tlExecutionRoleName = Nothing,
      _tlAccounts = Nothing,
      _tlRegions = Nothing,
      _tlTargetLocationMaxErrors = Nothing,
      _tlTargetLocationMaxConcurrency = Nothing
    }

-- | The Automation execution role used by the currently running Automation. If not specified, the default value is @AWS-SystemsManager-AutomationExecutionRole@ .
tlExecutionRoleName :: Lens' TargetLocation (Maybe Text)
tlExecutionRoleName = lens _tlExecutionRoleName (\s a -> s {_tlExecutionRoleName = a})

-- | The AWS accounts targeted by the current Automation execution.
tlAccounts :: Lens' TargetLocation (Maybe (NonEmpty Text))
tlAccounts = lens _tlAccounts (\s a -> s {_tlAccounts = a}) . mapping _List1

-- | The AWS Regions targeted by the current Automation execution.
tlRegions :: Lens' TargetLocation (Maybe (NonEmpty Text))
tlRegions = lens _tlRegions (\s a -> s {_tlRegions = a}) . mapping _List1

-- | The maximum number of errors allowed before the system stops queueing additional Automation executions for the currently running Automation.
tlTargetLocationMaxErrors :: Lens' TargetLocation (Maybe Text)
tlTargetLocationMaxErrors = lens _tlTargetLocationMaxErrors (\s a -> s {_tlTargetLocationMaxErrors = a})

-- | The maximum number of AWS accounts and AWS regions allowed to run the Automation concurrently.
tlTargetLocationMaxConcurrency :: Lens' TargetLocation (Maybe Text)
tlTargetLocationMaxConcurrency = lens _tlTargetLocationMaxConcurrency (\s a -> s {_tlTargetLocationMaxConcurrency = a})

instance FromJSON TargetLocation where
  parseJSON =
    withObject
      "TargetLocation"
      ( \x ->
          TargetLocation'
            <$> (x .:? "ExecutionRoleName")
            <*> (x .:? "Accounts")
            <*> (x .:? "Regions")
            <*> (x .:? "TargetLocationMaxErrors")
            <*> (x .:? "TargetLocationMaxConcurrency")
      )

instance Hashable TargetLocation

instance NFData TargetLocation

instance ToJSON TargetLocation where
  toJSON TargetLocation' {..} =
    object
      ( catMaybes
          [ ("ExecutionRoleName" .=) <$> _tlExecutionRoleName,
            ("Accounts" .=) <$> _tlAccounts,
            ("Regions" .=) <$> _tlRegions,
            ("TargetLocationMaxErrors" .=)
              <$> _tlTargetLocationMaxErrors,
            ("TargetLocationMaxConcurrency" .=)
              <$> _tlTargetLocationMaxConcurrency
          ]
      )
