{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BatchScheduleActionCreateResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BatchScheduleActionCreateResult where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.ScheduleAction
import Network.AWS.Prelude

-- | List of actions that have been created in the schedule.
--
-- /See:/ 'batchScheduleActionCreateResult' smart constructor.
newtype BatchScheduleActionCreateResult = BatchScheduleActionCreateResult'
  { _bsacrScheduleActions ::
      [ScheduleAction]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchScheduleActionCreateResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsacrScheduleActions' - List of actions that have been created in the schedule.
batchScheduleActionCreateResult ::
  BatchScheduleActionCreateResult
batchScheduleActionCreateResult =
  BatchScheduleActionCreateResult'
    { _bsacrScheduleActions =
        mempty
    }

-- | List of actions that have been created in the schedule.
bsacrScheduleActions :: Lens' BatchScheduleActionCreateResult [ScheduleAction]
bsacrScheduleActions = lens _bsacrScheduleActions (\s a -> s {_bsacrScheduleActions = a}) . _Coerce

instance FromJSON BatchScheduleActionCreateResult where
  parseJSON =
    withObject
      "BatchScheduleActionCreateResult"
      ( \x ->
          BatchScheduleActionCreateResult'
            <$> (x .:? "scheduleActions" .!= mempty)
      )

instance Hashable BatchScheduleActionCreateResult

instance NFData BatchScheduleActionCreateResult
