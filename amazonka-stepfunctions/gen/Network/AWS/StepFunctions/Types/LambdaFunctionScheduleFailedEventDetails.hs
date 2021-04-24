{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.LambdaFunctionScheduleFailedEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.LambdaFunctionScheduleFailedEventDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about a failed lambda function schedule event that occurred during an execution.
--
--
--
-- /See:/ 'lambdaFunctionScheduleFailedEventDetails' smart constructor.
data LambdaFunctionScheduleFailedEventDetails = LambdaFunctionScheduleFailedEventDetails'
  { _lfsfedCause ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _lfsfedError ::
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

-- | Creates a value of 'LambdaFunctionScheduleFailedEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfsfedCause' - A more detailed explanation of the cause of the failure.
--
-- * 'lfsfedError' - The error code of the failure.
lambdaFunctionScheduleFailedEventDetails ::
  LambdaFunctionScheduleFailedEventDetails
lambdaFunctionScheduleFailedEventDetails =
  LambdaFunctionScheduleFailedEventDetails'
    { _lfsfedCause =
        Nothing,
      _lfsfedError = Nothing
    }

-- | A more detailed explanation of the cause of the failure.
lfsfedCause :: Lens' LambdaFunctionScheduleFailedEventDetails (Maybe Text)
lfsfedCause = lens _lfsfedCause (\s a -> s {_lfsfedCause = a}) . mapping _Sensitive

-- | The error code of the failure.
lfsfedError :: Lens' LambdaFunctionScheduleFailedEventDetails (Maybe Text)
lfsfedError = lens _lfsfedError (\s a -> s {_lfsfedError = a}) . mapping _Sensitive

instance
  FromJSON
    LambdaFunctionScheduleFailedEventDetails
  where
  parseJSON =
    withObject
      "LambdaFunctionScheduleFailedEventDetails"
      ( \x ->
          LambdaFunctionScheduleFailedEventDetails'
            <$> (x .:? "cause") <*> (x .:? "error")
      )

instance
  Hashable
    LambdaFunctionScheduleFailedEventDetails

instance
  NFData
    LambdaFunctionScheduleFailedEventDetails
