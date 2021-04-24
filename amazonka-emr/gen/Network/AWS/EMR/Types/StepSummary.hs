{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.StepSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.StepSummary where

import Network.AWS.EMR.Types.ActionOnFailure
import Network.AWS.EMR.Types.HadoopStepConfig
import Network.AWS.EMR.Types.StepStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The summary of the cluster step.
--
--
--
-- /See:/ 'stepSummary' smart constructor.
data StepSummary = StepSummary'
  { _ssStatus ::
      !(Maybe StepStatus),
    _ssId :: !(Maybe Text),
    _ssConfig :: !(Maybe HadoopStepConfig),
    _ssActionOnFailure :: !(Maybe ActionOnFailure),
    _ssName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StepSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssStatus' - The current execution status details of the cluster step.
--
-- * 'ssId' - The identifier of the cluster step.
--
-- * 'ssConfig' - The Hadoop job configuration of the cluster step.
--
-- * 'ssActionOnFailure' - The action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE. TERMINATE_JOB_FLOW is available for backward compatibility. We recommend using TERMINATE_CLUSTER instead.
--
-- * 'ssName' - The name of the cluster step.
stepSummary ::
  StepSummary
stepSummary =
  StepSummary'
    { _ssStatus = Nothing,
      _ssId = Nothing,
      _ssConfig = Nothing,
      _ssActionOnFailure = Nothing,
      _ssName = Nothing
    }

-- | The current execution status details of the cluster step.
ssStatus :: Lens' StepSummary (Maybe StepStatus)
ssStatus = lens _ssStatus (\s a -> s {_ssStatus = a})

-- | The identifier of the cluster step.
ssId :: Lens' StepSummary (Maybe Text)
ssId = lens _ssId (\s a -> s {_ssId = a})

-- | The Hadoop job configuration of the cluster step.
ssConfig :: Lens' StepSummary (Maybe HadoopStepConfig)
ssConfig = lens _ssConfig (\s a -> s {_ssConfig = a})

-- | The action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE. TERMINATE_JOB_FLOW is available for backward compatibility. We recommend using TERMINATE_CLUSTER instead.
ssActionOnFailure :: Lens' StepSummary (Maybe ActionOnFailure)
ssActionOnFailure = lens _ssActionOnFailure (\s a -> s {_ssActionOnFailure = a})

-- | The name of the cluster step.
ssName :: Lens' StepSummary (Maybe Text)
ssName = lens _ssName (\s a -> s {_ssName = a})

instance FromJSON StepSummary where
  parseJSON =
    withObject
      "StepSummary"
      ( \x ->
          StepSummary'
            <$> (x .:? "Status")
            <*> (x .:? "Id")
            <*> (x .:? "Config")
            <*> (x .:? "ActionOnFailure")
            <*> (x .:? "Name")
      )

instance Hashable StepSummary

instance NFData StepSummary
