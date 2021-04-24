{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.ActivityTimedOutEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.ActivityTimedOutEventDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about an activity timeout that occurred during an execution.
--
--
--
-- /See:/ 'activityTimedOutEventDetails' smart constructor.
data ActivityTimedOutEventDetails = ActivityTimedOutEventDetails'
  { _atoedCause ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _atoedError ::
      !( Maybe
           ( Sensitive
               Text
           )
       )
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ActivityTimedOutEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atoedCause' - A more detailed explanation of the cause of the timeout.
--
-- * 'atoedError' - The error code of the failure.
activityTimedOutEventDetails ::
  ActivityTimedOutEventDetails
activityTimedOutEventDetails =
  ActivityTimedOutEventDetails'
    { _atoedCause =
        Nothing,
      _atoedError = Nothing
    }

-- | A more detailed explanation of the cause of the timeout.
atoedCause :: Lens' ActivityTimedOutEventDetails (Maybe Text)
atoedCause = lens _atoedCause (\s a -> s {_atoedCause = a}) . mapping _Sensitive

-- | The error code of the failure.
atoedError :: Lens' ActivityTimedOutEventDetails (Maybe Text)
atoedError = lens _atoedError (\s a -> s {_atoedError = a}) . mapping _Sensitive

instance FromJSON ActivityTimedOutEventDetails where
  parseJSON =
    withObject
      "ActivityTimedOutEventDetails"
      ( \x ->
          ActivityTimedOutEventDetails'
            <$> (x .:? "cause") <*> (x .:? "error")
      )

instance Hashable ActivityTimedOutEventDetails

instance NFData ActivityTimedOutEventDetails
