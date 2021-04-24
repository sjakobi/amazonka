{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.JobDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.JobDetails where

import Network.AWS.CodePipeline.Types.JobData
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents information about the details of a job.
--
--
--
-- /See:/ 'jobDetails' smart constructor.
data JobDetails = JobDetails'
  { _jdAccountId ::
      !(Maybe Text),
    _jdData :: !(Maybe JobData),
    _jdId :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jdAccountId' - The AWS account ID associated with the job.
--
-- * 'jdData' - Represents other information about a job required for a job worker to complete the job.
--
-- * 'jdId' - The unique system-generated ID of the job.
jobDetails ::
  JobDetails
jobDetails =
  JobDetails'
    { _jdAccountId = Nothing,
      _jdData = Nothing,
      _jdId = Nothing
    }

-- | The AWS account ID associated with the job.
jdAccountId :: Lens' JobDetails (Maybe Text)
jdAccountId = lens _jdAccountId (\s a -> s {_jdAccountId = a})

-- | Represents other information about a job required for a job worker to complete the job.
jdData :: Lens' JobDetails (Maybe JobData)
jdData = lens _jdData (\s a -> s {_jdData = a})

-- | The unique system-generated ID of the job.
jdId :: Lens' JobDetails (Maybe Text)
jdId = lens _jdId (\s a -> s {_jdId = a})

instance FromJSON JobDetails where
  parseJSON =
    withObject
      "JobDetails"
      ( \x ->
          JobDetails'
            <$> (x .:? "accountId")
            <*> (x .:? "data")
            <*> (x .:? "id")
      )

instance Hashable JobDetails

instance NFData JobDetails
