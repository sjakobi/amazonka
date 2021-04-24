{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.FindMatchesTaskRunProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.FindMatchesTaskRunProperties where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies configuration properties for a Find Matches task run.
--
--
--
-- /See:/ 'findMatchesTaskRunProperties' smart constructor.
data FindMatchesTaskRunProperties = FindMatchesTaskRunProperties'
  { _fmtrpJobRunId ::
      !(Maybe Text),
    _fmtrpJobName ::
      !(Maybe Text),
    _fmtrpJobId ::
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

-- | Creates a value of 'FindMatchesTaskRunProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmtrpJobRunId' - The job run ID for the Find Matches task run.
--
-- * 'fmtrpJobName' - The name assigned to the job for the Find Matches task run.
--
-- * 'fmtrpJobId' - The job ID for the Find Matches task run.
findMatchesTaskRunProperties ::
  FindMatchesTaskRunProperties
findMatchesTaskRunProperties =
  FindMatchesTaskRunProperties'
    { _fmtrpJobRunId =
        Nothing,
      _fmtrpJobName = Nothing,
      _fmtrpJobId = Nothing
    }

-- | The job run ID for the Find Matches task run.
fmtrpJobRunId :: Lens' FindMatchesTaskRunProperties (Maybe Text)
fmtrpJobRunId = lens _fmtrpJobRunId (\s a -> s {_fmtrpJobRunId = a})

-- | The name assigned to the job for the Find Matches task run.
fmtrpJobName :: Lens' FindMatchesTaskRunProperties (Maybe Text)
fmtrpJobName = lens _fmtrpJobName (\s a -> s {_fmtrpJobName = a})

-- | The job ID for the Find Matches task run.
fmtrpJobId :: Lens' FindMatchesTaskRunProperties (Maybe Text)
fmtrpJobId = lens _fmtrpJobId (\s a -> s {_fmtrpJobId = a})

instance FromJSON FindMatchesTaskRunProperties where
  parseJSON =
    withObject
      "FindMatchesTaskRunProperties"
      ( \x ->
          FindMatchesTaskRunProperties'
            <$> (x .:? "JobRunId")
            <*> (x .:? "JobName")
            <*> (x .:? "JobId")
      )

instance Hashable FindMatchesTaskRunProperties

instance NFData FindMatchesTaskRunProperties
