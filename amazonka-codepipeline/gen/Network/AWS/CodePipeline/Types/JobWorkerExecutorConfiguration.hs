{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.JobWorkerExecutorConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.JobWorkerExecutorConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about the polling configuration for the @JobWorker@ action engine, or executor.
--
--
--
-- /See:/ 'jobWorkerExecutorConfiguration' smart constructor.
data JobWorkerExecutorConfiguration = JobWorkerExecutorConfiguration'
  { _jwecPollingAccounts ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _jwecPollingServicePrincipals ::
      !( Maybe
           ( List1
               Text
           )
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

-- | Creates a value of 'JobWorkerExecutorConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jwecPollingAccounts' - The accounts in which the job worker is configured and might poll for jobs as part of the action execution.
--
-- * 'jwecPollingServicePrincipals' - The service Principals in which the job worker is configured and might poll for jobs as part of the action execution.
jobWorkerExecutorConfiguration ::
  JobWorkerExecutorConfiguration
jobWorkerExecutorConfiguration =
  JobWorkerExecutorConfiguration'
    { _jwecPollingAccounts =
        Nothing,
      _jwecPollingServicePrincipals = Nothing
    }

-- | The accounts in which the job worker is configured and might poll for jobs as part of the action execution.
jwecPollingAccounts :: Lens' JobWorkerExecutorConfiguration (Maybe (NonEmpty Text))
jwecPollingAccounts = lens _jwecPollingAccounts (\s a -> s {_jwecPollingAccounts = a}) . mapping _List1

-- | The service Principals in which the job worker is configured and might poll for jobs as part of the action execution.
jwecPollingServicePrincipals :: Lens' JobWorkerExecutorConfiguration (Maybe (NonEmpty Text))
jwecPollingServicePrincipals = lens _jwecPollingServicePrincipals (\s a -> s {_jwecPollingServicePrincipals = a}) . mapping _List1

instance FromJSON JobWorkerExecutorConfiguration where
  parseJSON =
    withObject
      "JobWorkerExecutorConfiguration"
      ( \x ->
          JobWorkerExecutorConfiguration'
            <$> (x .:? "pollingAccounts")
            <*> (x .:? "pollingServicePrincipals")
      )

instance Hashable JobWorkerExecutorConfiguration

instance NFData JobWorkerExecutorConfiguration

instance ToJSON JobWorkerExecutorConfiguration where
  toJSON JobWorkerExecutorConfiguration' {..} =
    object
      ( catMaybes
          [ ("pollingAccounts" .=) <$> _jwecPollingAccounts,
            ("pollingServicePrincipals" .=)
              <$> _jwecPollingServicePrincipals
          ]
      )
