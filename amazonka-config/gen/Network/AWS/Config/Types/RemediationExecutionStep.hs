{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.RemediationExecutionStep
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RemediationExecutionStep where

import Network.AWS.Config.Types.RemediationExecutionStepState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Name of the step from the SSM document.
--
--
--
-- /See:/ 'remediationExecutionStep' smart constructor.
data RemediationExecutionStep = RemediationExecutionStep'
  { _rStartTime ::
      !(Maybe POSIX),
    _rStopTime ::
      !(Maybe POSIX),
    _rState ::
      !( Maybe
           RemediationExecutionStepState
       ),
    _rName ::
      !(Maybe Text),
    _rErrorMessage ::
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

-- | Creates a value of 'RemediationExecutionStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStartTime' - The time when the step started.
--
-- * 'rStopTime' - The time when the step stopped.
--
-- * 'rState' - The valid status of the step.
--
-- * 'rName' - The details of the step.
--
-- * 'rErrorMessage' - An error message if the step was interrupted during execution.
remediationExecutionStep ::
  RemediationExecutionStep
remediationExecutionStep =
  RemediationExecutionStep'
    { _rStartTime = Nothing,
      _rStopTime = Nothing,
      _rState = Nothing,
      _rName = Nothing,
      _rErrorMessage = Nothing
    }

-- | The time when the step started.
rStartTime :: Lens' RemediationExecutionStep (Maybe UTCTime)
rStartTime = lens _rStartTime (\s a -> s {_rStartTime = a}) . mapping _Time

-- | The time when the step stopped.
rStopTime :: Lens' RemediationExecutionStep (Maybe UTCTime)
rStopTime = lens _rStopTime (\s a -> s {_rStopTime = a}) . mapping _Time

-- | The valid status of the step.
rState :: Lens' RemediationExecutionStep (Maybe RemediationExecutionStepState)
rState = lens _rState (\s a -> s {_rState = a})

-- | The details of the step.
rName :: Lens' RemediationExecutionStep (Maybe Text)
rName = lens _rName (\s a -> s {_rName = a})

-- | An error message if the step was interrupted during execution.
rErrorMessage :: Lens' RemediationExecutionStep (Maybe Text)
rErrorMessage = lens _rErrorMessage (\s a -> s {_rErrorMessage = a})

instance FromJSON RemediationExecutionStep where
  parseJSON =
    withObject
      "RemediationExecutionStep"
      ( \x ->
          RemediationExecutionStep'
            <$> (x .:? "StartTime")
            <*> (x .:? "StopTime")
            <*> (x .:? "State")
            <*> (x .:? "Name")
            <*> (x .:? "ErrorMessage")
      )

instance Hashable RemediationExecutionStep

instance NFData RemediationExecutionStep
