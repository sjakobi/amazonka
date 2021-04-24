{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BatchScheduleActionCreateRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BatchScheduleActionCreateRequest where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.ScheduleAction
import Network.AWS.Prelude

-- | A list of schedule actions to create (in a request) or that have been created (in a response).
--
-- /See:/ 'batchScheduleActionCreateRequest' smart constructor.
newtype BatchScheduleActionCreateRequest = BatchScheduleActionCreateRequest'
  { _bScheduleActions ::
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

-- | Creates a value of 'BatchScheduleActionCreateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bScheduleActions' - A list of schedule actions to create.
batchScheduleActionCreateRequest ::
  BatchScheduleActionCreateRequest
batchScheduleActionCreateRequest =
  BatchScheduleActionCreateRequest'
    { _bScheduleActions =
        mempty
    }

-- | A list of schedule actions to create.
bScheduleActions :: Lens' BatchScheduleActionCreateRequest [ScheduleAction]
bScheduleActions = lens _bScheduleActions (\s a -> s {_bScheduleActions = a}) . _Coerce

instance Hashable BatchScheduleActionCreateRequest

instance NFData BatchScheduleActionCreateRequest

instance ToJSON BatchScheduleActionCreateRequest where
  toJSON BatchScheduleActionCreateRequest' {..} =
    object
      ( catMaybes
          [Just ("scheduleActions" .= _bScheduleActions)]
      )
