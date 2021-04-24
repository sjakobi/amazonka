{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProfilerRuleEvaluationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProfilerRuleEvaluationStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.RuleEvaluationStatus

-- | Information about the status of the rule evaluation.
--
--
--
-- /See:/ 'profilerRuleEvaluationStatus' smart constructor.
data ProfilerRuleEvaluationStatus = ProfilerRuleEvaluationStatus'
  { _presRuleConfigurationName ::
      !(Maybe Text),
    _presStatusDetails ::
      !(Maybe Text),
    _presRuleEvaluationStatus ::
      !( Maybe
           RuleEvaluationStatus
       ),
    _presLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _presRuleEvaluationJobARN ::
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

-- | Creates a value of 'ProfilerRuleEvaluationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'presRuleConfigurationName' - The name of the rule configuration.
--
-- * 'presStatusDetails' - Details from the rule evaluation.
--
-- * 'presRuleEvaluationStatus' - Status of the rule evaluation.
--
-- * 'presLastModifiedTime' - Timestamp when the rule evaluation status was last modified.
--
-- * 'presRuleEvaluationJobARN' - The Amazon Resource Name (ARN) of the rule evaluation job.
profilerRuleEvaluationStatus ::
  ProfilerRuleEvaluationStatus
profilerRuleEvaluationStatus =
  ProfilerRuleEvaluationStatus'
    { _presRuleConfigurationName =
        Nothing,
      _presStatusDetails = Nothing,
      _presRuleEvaluationStatus = Nothing,
      _presLastModifiedTime = Nothing,
      _presRuleEvaluationJobARN = Nothing
    }

-- | The name of the rule configuration.
presRuleConfigurationName :: Lens' ProfilerRuleEvaluationStatus (Maybe Text)
presRuleConfigurationName = lens _presRuleConfigurationName (\s a -> s {_presRuleConfigurationName = a})

-- | Details from the rule evaluation.
presStatusDetails :: Lens' ProfilerRuleEvaluationStatus (Maybe Text)
presStatusDetails = lens _presStatusDetails (\s a -> s {_presStatusDetails = a})

-- | Status of the rule evaluation.
presRuleEvaluationStatus :: Lens' ProfilerRuleEvaluationStatus (Maybe RuleEvaluationStatus)
presRuleEvaluationStatus = lens _presRuleEvaluationStatus (\s a -> s {_presRuleEvaluationStatus = a})

-- | Timestamp when the rule evaluation status was last modified.
presLastModifiedTime :: Lens' ProfilerRuleEvaluationStatus (Maybe UTCTime)
presLastModifiedTime = lens _presLastModifiedTime (\s a -> s {_presLastModifiedTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the rule evaluation job.
presRuleEvaluationJobARN :: Lens' ProfilerRuleEvaluationStatus (Maybe Text)
presRuleEvaluationJobARN = lens _presRuleEvaluationJobARN (\s a -> s {_presRuleEvaluationJobARN = a})

instance FromJSON ProfilerRuleEvaluationStatus where
  parseJSON =
    withObject
      "ProfilerRuleEvaluationStatus"
      ( \x ->
          ProfilerRuleEvaluationStatus'
            <$> (x .:? "RuleConfigurationName")
            <*> (x .:? "StatusDetails")
            <*> (x .:? "RuleEvaluationStatus")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "RuleEvaluationJobArn")
      )

instance Hashable ProfilerRuleEvaluationStatus

instance NFData ProfilerRuleEvaluationStatus
