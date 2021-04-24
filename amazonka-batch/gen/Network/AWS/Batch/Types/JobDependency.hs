{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.JobDependency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JobDependency where

import Network.AWS.Batch.Types.ArrayJobDependency
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an AWS Batch job dependency.
--
--
--
-- /See:/ 'jobDependency' smart constructor.
data JobDependency = JobDependency'
  { _jobType ::
      !(Maybe ArrayJobDependency),
    _jobJobId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobDependency' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jobType' - The type of the job dependency.
--
-- * 'jobJobId' - The job ID of the AWS Batch job associated with this dependency.
jobDependency ::
  JobDependency
jobDependency =
  JobDependency'
    { _jobType = Nothing,
      _jobJobId = Nothing
    }

-- | The type of the job dependency.
jobType :: Lens' JobDependency (Maybe ArrayJobDependency)
jobType = lens _jobType (\s a -> s {_jobType = a})

-- | The job ID of the AWS Batch job associated with this dependency.
jobJobId :: Lens' JobDependency (Maybe Text)
jobJobId = lens _jobJobId (\s a -> s {_jobJobId = a})

instance FromJSON JobDependency where
  parseJSON =
    withObject
      "JobDependency"
      ( \x ->
          JobDependency'
            <$> (x .:? "type") <*> (x .:? "jobId")
      )

instance Hashable JobDependency

instance NFData JobDependency

instance ToJSON JobDependency where
  toJSON JobDependency' {..} =
    object
      ( catMaybes
          [ ("type" .=) <$> _jobType,
            ("jobId" .=) <$> _jobJobId
          ]
      )
