{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.StepStateChangeReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.StepStateChangeReason where

import Network.AWS.EMR.Types.StepStateChangeReasonCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The details of the step state change reason.
--
--
--
-- /See:/ 'stepStateChangeReason' smart constructor.
data StepStateChangeReason = StepStateChangeReason'
  { _sscrMessage ::
      !(Maybe Text),
    _sscrCode ::
      !( Maybe
           StepStateChangeReasonCode
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

-- | Creates a value of 'StepStateChangeReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscrMessage' - The descriptive message for the state change reason.
--
-- * 'sscrCode' - The programmable code for the state change reason. Note: Currently, the service provides no code for the state change.
stepStateChangeReason ::
  StepStateChangeReason
stepStateChangeReason =
  StepStateChangeReason'
    { _sscrMessage = Nothing,
      _sscrCode = Nothing
    }

-- | The descriptive message for the state change reason.
sscrMessage :: Lens' StepStateChangeReason (Maybe Text)
sscrMessage = lens _sscrMessage (\s a -> s {_sscrMessage = a})

-- | The programmable code for the state change reason. Note: Currently, the service provides no code for the state change.
sscrCode :: Lens' StepStateChangeReason (Maybe StepStateChangeReasonCode)
sscrCode = lens _sscrCode (\s a -> s {_sscrCode = a})

instance FromJSON StepStateChangeReason where
  parseJSON =
    withObject
      "StepStateChangeReason"
      ( \x ->
          StepStateChangeReason'
            <$> (x .:? "Message") <*> (x .:? "Code")
      )

instance Hashable StepStateChangeReason

instance NFData StepStateChangeReason
