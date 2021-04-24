{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.RemediationExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RemediationExecutionStatus where

import Network.AWS.Config.Types.RemediationExecutionState
import Network.AWS.Config.Types.RemediationExecutionStep
import Network.AWS.Config.Types.ResourceKey
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides details of the current status of the invoked remediation action for that resource.
--
--
--
-- /See:/ 'remediationExecutionStatus' smart constructor.
data RemediationExecutionStatus = RemediationExecutionStatus'
  { _resInvocationTime ::
      !(Maybe POSIX),
    _resResourceKey ::
      !( Maybe
           ResourceKey
       ),
    _resState ::
      !( Maybe
           RemediationExecutionState
       ),
    _resStepDetails ::
      !( Maybe
           [RemediationExecutionStep]
       ),
    _resLastUpdatedTime ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RemediationExecutionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'resInvocationTime' - Start time when the remediation was executed.
--
-- * 'resResourceKey' - Undocumented member.
--
-- * 'resState' - ENUM of the values.
--
-- * 'resStepDetails' - Details of every step.
--
-- * 'resLastUpdatedTime' - The time when the remediation execution was last updated.
remediationExecutionStatus ::
  RemediationExecutionStatus
remediationExecutionStatus =
  RemediationExecutionStatus'
    { _resInvocationTime =
        Nothing,
      _resResourceKey = Nothing,
      _resState = Nothing,
      _resStepDetails = Nothing,
      _resLastUpdatedTime = Nothing
    }

-- | Start time when the remediation was executed.
resInvocationTime :: Lens' RemediationExecutionStatus (Maybe UTCTime)
resInvocationTime = lens _resInvocationTime (\s a -> s {_resInvocationTime = a}) . mapping _Time

-- | Undocumented member.
resResourceKey :: Lens' RemediationExecutionStatus (Maybe ResourceKey)
resResourceKey = lens _resResourceKey (\s a -> s {_resResourceKey = a})

-- | ENUM of the values.
resState :: Lens' RemediationExecutionStatus (Maybe RemediationExecutionState)
resState = lens _resState (\s a -> s {_resState = a})

-- | Details of every step.
resStepDetails :: Lens' RemediationExecutionStatus [RemediationExecutionStep]
resStepDetails = lens _resStepDetails (\s a -> s {_resStepDetails = a}) . _Default . _Coerce

-- | The time when the remediation execution was last updated.
resLastUpdatedTime :: Lens' RemediationExecutionStatus (Maybe UTCTime)
resLastUpdatedTime = lens _resLastUpdatedTime (\s a -> s {_resLastUpdatedTime = a}) . mapping _Time

instance FromJSON RemediationExecutionStatus where
  parseJSON =
    withObject
      "RemediationExecutionStatus"
      ( \x ->
          RemediationExecutionStatus'
            <$> (x .:? "InvocationTime")
            <*> (x .:? "ResourceKey")
            <*> (x .:? "State")
            <*> (x .:? "StepDetails" .!= mempty)
            <*> (x .:? "LastUpdatedTime")
      )

instance Hashable RemediationExecutionStatus

instance NFData RemediationExecutionStatus
