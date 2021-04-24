{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProfilerRuleConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProfilerRuleConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ProcessingInstanceType

-- | Configuration information for profiling rules.
--
--
--
-- /See:/ 'profilerRuleConfiguration' smart constructor.
data ProfilerRuleConfiguration = ProfilerRuleConfiguration'
  { _prcRuleParameters ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _prcInstanceType ::
      !( Maybe
           ProcessingInstanceType
       ),
    _prcS3OutputPath ::
      !(Maybe Text),
    _prcVolumeSizeInGB ::
      !(Maybe Nat),
    _prcLocalPath ::
      !(Maybe Text),
    _prcRuleConfigurationName ::
      !Text,
    _prcRuleEvaluatorImage ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProfilerRuleConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcRuleParameters' - Runtime configuration for rule container.
--
-- * 'prcInstanceType' - The instance type to deploy a Debugger custom rule for profiling a training job.
--
-- * 'prcS3OutputPath' - Path to Amazon S3 storage location for rules.
--
-- * 'prcVolumeSizeInGB' - The size, in GB, of the ML storage volume attached to the processing instance.
--
-- * 'prcLocalPath' - Path to local storage location for output of rules. Defaults to @/opt/ml/processing/output/rule/@ .
--
-- * 'prcRuleConfigurationName' - The name of the rule configuration. It must be unique relative to other rule configuration names.
--
-- * 'prcRuleEvaluatorImage' - The Amazon Elastic Container (ECR) Image for the managed rule evaluation.
profilerRuleConfiguration ::
  -- | 'prcRuleConfigurationName'
  Text ->
  -- | 'prcRuleEvaluatorImage'
  Text ->
  ProfilerRuleConfiguration
profilerRuleConfiguration
  pRuleConfigurationName_
  pRuleEvaluatorImage_ =
    ProfilerRuleConfiguration'
      { _prcRuleParameters =
          Nothing,
        _prcInstanceType = Nothing,
        _prcS3OutputPath = Nothing,
        _prcVolumeSizeInGB = Nothing,
        _prcLocalPath = Nothing,
        _prcRuleConfigurationName =
          pRuleConfigurationName_,
        _prcRuleEvaluatorImage = pRuleEvaluatorImage_
      }

-- | Runtime configuration for rule container.
prcRuleParameters :: Lens' ProfilerRuleConfiguration (HashMap Text Text)
prcRuleParameters = lens _prcRuleParameters (\s a -> s {_prcRuleParameters = a}) . _Default . _Map

-- | The instance type to deploy a Debugger custom rule for profiling a training job.
prcInstanceType :: Lens' ProfilerRuleConfiguration (Maybe ProcessingInstanceType)
prcInstanceType = lens _prcInstanceType (\s a -> s {_prcInstanceType = a})

-- | Path to Amazon S3 storage location for rules.
prcS3OutputPath :: Lens' ProfilerRuleConfiguration (Maybe Text)
prcS3OutputPath = lens _prcS3OutputPath (\s a -> s {_prcS3OutputPath = a})

-- | The size, in GB, of the ML storage volume attached to the processing instance.
prcVolumeSizeInGB :: Lens' ProfilerRuleConfiguration (Maybe Natural)
prcVolumeSizeInGB = lens _prcVolumeSizeInGB (\s a -> s {_prcVolumeSizeInGB = a}) . mapping _Nat

-- | Path to local storage location for output of rules. Defaults to @/opt/ml/processing/output/rule/@ .
prcLocalPath :: Lens' ProfilerRuleConfiguration (Maybe Text)
prcLocalPath = lens _prcLocalPath (\s a -> s {_prcLocalPath = a})

-- | The name of the rule configuration. It must be unique relative to other rule configuration names.
prcRuleConfigurationName :: Lens' ProfilerRuleConfiguration Text
prcRuleConfigurationName = lens _prcRuleConfigurationName (\s a -> s {_prcRuleConfigurationName = a})

-- | The Amazon Elastic Container (ECR) Image for the managed rule evaluation.
prcRuleEvaluatorImage :: Lens' ProfilerRuleConfiguration Text
prcRuleEvaluatorImage = lens _prcRuleEvaluatorImage (\s a -> s {_prcRuleEvaluatorImage = a})

instance FromJSON ProfilerRuleConfiguration where
  parseJSON =
    withObject
      "ProfilerRuleConfiguration"
      ( \x ->
          ProfilerRuleConfiguration'
            <$> (x .:? "RuleParameters" .!= mempty)
            <*> (x .:? "InstanceType")
            <*> (x .:? "S3OutputPath")
            <*> (x .:? "VolumeSizeInGB")
            <*> (x .:? "LocalPath")
            <*> (x .: "RuleConfigurationName")
            <*> (x .: "RuleEvaluatorImage")
      )

instance Hashable ProfilerRuleConfiguration

instance NFData ProfilerRuleConfiguration

instance ToJSON ProfilerRuleConfiguration where
  toJSON ProfilerRuleConfiguration' {..} =
    object
      ( catMaybes
          [ ("RuleParameters" .=) <$> _prcRuleParameters,
            ("InstanceType" .=) <$> _prcInstanceType,
            ("S3OutputPath" .=) <$> _prcS3OutputPath,
            ("VolumeSizeInGB" .=) <$> _prcVolumeSizeInGB,
            ("LocalPath" .=) <$> _prcLocalPath,
            Just
              ( "RuleConfigurationName"
                  .= _prcRuleConfigurationName
              ),
            Just
              ("RuleEvaluatorImage" .= _prcRuleEvaluatorImage)
          ]
      )
