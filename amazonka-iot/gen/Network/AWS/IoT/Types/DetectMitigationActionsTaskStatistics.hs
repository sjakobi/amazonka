{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DetectMitigationActionsTaskStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DetectMitigationActionsTaskStatistics where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The statistics of a mitigation action task.
--
--
--
-- /See:/ 'detectMitigationActionsTaskStatistics' smart constructor.
data DetectMitigationActionsTaskStatistics = DetectMitigationActionsTaskStatistics'
  { _dmatsActionsFailed ::
      !( Maybe
           Integer
       ),
    _dmatsActionsSkipped ::
      !( Maybe
           Integer
       ),
    _dmatsActionsExecuted ::
      !( Maybe
           Integer
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

-- | Creates a value of 'DetectMitigationActionsTaskStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmatsActionsFailed' - The actions that failed.
--
-- * 'dmatsActionsSkipped' - The actions that were skipped.
--
-- * 'dmatsActionsExecuted' - The actions that were performed.
detectMitigationActionsTaskStatistics ::
  DetectMitigationActionsTaskStatistics
detectMitigationActionsTaskStatistics =
  DetectMitigationActionsTaskStatistics'
    { _dmatsActionsFailed =
        Nothing,
      _dmatsActionsSkipped = Nothing,
      _dmatsActionsExecuted = Nothing
    }

-- | The actions that failed.
dmatsActionsFailed :: Lens' DetectMitigationActionsTaskStatistics (Maybe Integer)
dmatsActionsFailed = lens _dmatsActionsFailed (\s a -> s {_dmatsActionsFailed = a})

-- | The actions that were skipped.
dmatsActionsSkipped :: Lens' DetectMitigationActionsTaskStatistics (Maybe Integer)
dmatsActionsSkipped = lens _dmatsActionsSkipped (\s a -> s {_dmatsActionsSkipped = a})

-- | The actions that were performed.
dmatsActionsExecuted :: Lens' DetectMitigationActionsTaskStatistics (Maybe Integer)
dmatsActionsExecuted = lens _dmatsActionsExecuted (\s a -> s {_dmatsActionsExecuted = a})

instance
  FromJSON
    DetectMitigationActionsTaskStatistics
  where
  parseJSON =
    withObject
      "DetectMitigationActionsTaskStatistics"
      ( \x ->
          DetectMitigationActionsTaskStatistics'
            <$> (x .:? "actionsFailed")
            <*> (x .:? "actionsSkipped")
            <*> (x .:? "actionsExecuted")
      )

instance
  Hashable
    DetectMitigationActionsTaskStatistics

instance NFData DetectMitigationActionsTaskStatistics
