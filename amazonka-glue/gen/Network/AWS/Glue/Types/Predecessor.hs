{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Predecessor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Predecessor where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A job run that was used in the predicate of a conditional trigger that triggered this job run.
--
--
--
-- /See:/ 'predecessor' smart constructor.
data Predecessor = Predecessor'
  { _pRunId ::
      !(Maybe Text),
    _pJobName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Predecessor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pRunId' - The job-run ID of the predecessor job run.
--
-- * 'pJobName' - The name of the job definition used by the predecessor job run.
predecessor ::
  Predecessor
predecessor =
  Predecessor'
    { _pRunId = Nothing,
      _pJobName = Nothing
    }

-- | The job-run ID of the predecessor job run.
pRunId :: Lens' Predecessor (Maybe Text)
pRunId = lens _pRunId (\s a -> s {_pRunId = a})

-- | The name of the job definition used by the predecessor job run.
pJobName :: Lens' Predecessor (Maybe Text)
pJobName = lens _pJobName (\s a -> s {_pJobName = a})

instance FromJSON Predecessor where
  parseJSON =
    withObject
      "Predecessor"
      ( \x ->
          Predecessor'
            <$> (x .:? "RunId") <*> (x .:? "JobName")
      )

instance Hashable Predecessor

instance NFData Predecessor
