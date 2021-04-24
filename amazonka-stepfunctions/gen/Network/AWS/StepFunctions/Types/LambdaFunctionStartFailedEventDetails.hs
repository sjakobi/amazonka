{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.LambdaFunctionStartFailedEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.LambdaFunctionStartFailedEventDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about a lambda function that failed to start during an execution.
--
--
--
-- /See:/ 'lambdaFunctionStartFailedEventDetails' smart constructor.
data LambdaFunctionStartFailedEventDetails = LambdaFunctionStartFailedEventDetails'
  { _lCause ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _lError ::
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

-- | Creates a value of 'LambdaFunctionStartFailedEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lCause' - A more detailed explanation of the cause of the failure.
--
-- * 'lError' - The error code of the failure.
lambdaFunctionStartFailedEventDetails ::
  LambdaFunctionStartFailedEventDetails
lambdaFunctionStartFailedEventDetails =
  LambdaFunctionStartFailedEventDetails'
    { _lCause =
        Nothing,
      _lError = Nothing
    }

-- | A more detailed explanation of the cause of the failure.
lCause :: Lens' LambdaFunctionStartFailedEventDetails (Maybe Text)
lCause = lens _lCause (\s a -> s {_lCause = a}) . mapping _Sensitive

-- | The error code of the failure.
lError :: Lens' LambdaFunctionStartFailedEventDetails (Maybe Text)
lError = lens _lError (\s a -> s {_lError = a}) . mapping _Sensitive

instance
  FromJSON
    LambdaFunctionStartFailedEventDetails
  where
  parseJSON =
    withObject
      "LambdaFunctionStartFailedEventDetails"
      ( \x ->
          LambdaFunctionStartFailedEventDetails'
            <$> (x .:? "cause") <*> (x .:? "error")
      )

instance
  Hashable
    LambdaFunctionStartFailedEventDetails

instance NFData LambdaFunctionStartFailedEventDetails
