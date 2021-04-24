{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringJobDefinition where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MonitoringAppSpecification
import Network.AWS.SageMaker.Types.MonitoringBaselineConfig
import Network.AWS.SageMaker.Types.MonitoringInput
import Network.AWS.SageMaker.Types.MonitoringOutputConfig
import Network.AWS.SageMaker.Types.MonitoringResources
import Network.AWS.SageMaker.Types.MonitoringStoppingCondition
import Network.AWS.SageMaker.Types.NetworkConfig

-- | Defines the monitoring job.
--
--
--
-- /See:/ 'monitoringJobDefinition' smart constructor.
data MonitoringJobDefinition = MonitoringJobDefinition'
  { _mjdNetworkConfig ::
      !(Maybe NetworkConfig),
    _mjdEnvironment ::
      !( Maybe
           (Map Text Text)
       ),
    _mjdBaselineConfig ::
      !( Maybe
           MonitoringBaselineConfig
       ),
    _mjdStoppingCondition ::
      !( Maybe
           MonitoringStoppingCondition
       ),
    _mjdMonitoringInputs ::
      !( List1
           MonitoringInput
       ),
    _mjdMonitoringOutputConfig ::
      !MonitoringOutputConfig,
    _mjdMonitoringResources ::
      !MonitoringResources,
    _mjdMonitoringAppSpecification ::
      !MonitoringAppSpecification,
    _mjdRoleARN :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MonitoringJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mjdNetworkConfig' - Specifies networking options for an monitoring job.
--
-- * 'mjdEnvironment' - Sets the environment variables in the Docker container.
--
-- * 'mjdBaselineConfig' - Baseline configuration used to validate that the data conforms to the specified constraints and statistics
--
-- * 'mjdStoppingCondition' - Specifies a time limit for how long the monitoring job is allowed to run.
--
-- * 'mjdMonitoringInputs' - The array of inputs for the monitoring job. Currently we support monitoring an Amazon SageMaker Endpoint.
--
-- * 'mjdMonitoringOutputConfig' - The array of outputs from the monitoring job to be uploaded to Amazon Simple Storage Service (Amazon S3).
--
-- * 'mjdMonitoringResources' - Identifies the resources, ML compute instances, and ML storage volumes to deploy for a monitoring job. In distributed processing, you specify more than one instance.
--
-- * 'mjdMonitoringAppSpecification' - Configures the monitoring job to run a specified Docker container image.
--
-- * 'mjdRoleARN' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
monitoringJobDefinition ::
  -- | 'mjdMonitoringInputs'
  NonEmpty MonitoringInput ->
  -- | 'mjdMonitoringOutputConfig'
  MonitoringOutputConfig ->
  -- | 'mjdMonitoringResources'
  MonitoringResources ->
  -- | 'mjdMonitoringAppSpecification'
  MonitoringAppSpecification ->
  -- | 'mjdRoleARN'
  Text ->
  MonitoringJobDefinition
monitoringJobDefinition
  pMonitoringInputs_
  pMonitoringOutputConfig_
  pMonitoringResources_
  pMonitoringAppSpecification_
  pRoleARN_ =
    MonitoringJobDefinition'
      { _mjdNetworkConfig =
          Nothing,
        _mjdEnvironment = Nothing,
        _mjdBaselineConfig = Nothing,
        _mjdStoppingCondition = Nothing,
        _mjdMonitoringInputs = _List1 # pMonitoringInputs_,
        _mjdMonitoringOutputConfig =
          pMonitoringOutputConfig_,
        _mjdMonitoringResources = pMonitoringResources_,
        _mjdMonitoringAppSpecification =
          pMonitoringAppSpecification_,
        _mjdRoleARN = pRoleARN_
      }

-- | Specifies networking options for an monitoring job.
mjdNetworkConfig :: Lens' MonitoringJobDefinition (Maybe NetworkConfig)
mjdNetworkConfig = lens _mjdNetworkConfig (\s a -> s {_mjdNetworkConfig = a})

-- | Sets the environment variables in the Docker container.
mjdEnvironment :: Lens' MonitoringJobDefinition (HashMap Text Text)
mjdEnvironment = lens _mjdEnvironment (\s a -> s {_mjdEnvironment = a}) . _Default . _Map

-- | Baseline configuration used to validate that the data conforms to the specified constraints and statistics
mjdBaselineConfig :: Lens' MonitoringJobDefinition (Maybe MonitoringBaselineConfig)
mjdBaselineConfig = lens _mjdBaselineConfig (\s a -> s {_mjdBaselineConfig = a})

-- | Specifies a time limit for how long the monitoring job is allowed to run.
mjdStoppingCondition :: Lens' MonitoringJobDefinition (Maybe MonitoringStoppingCondition)
mjdStoppingCondition = lens _mjdStoppingCondition (\s a -> s {_mjdStoppingCondition = a})

-- | The array of inputs for the monitoring job. Currently we support monitoring an Amazon SageMaker Endpoint.
mjdMonitoringInputs :: Lens' MonitoringJobDefinition (NonEmpty MonitoringInput)
mjdMonitoringInputs = lens _mjdMonitoringInputs (\s a -> s {_mjdMonitoringInputs = a}) . _List1

-- | The array of outputs from the monitoring job to be uploaded to Amazon Simple Storage Service (Amazon S3).
mjdMonitoringOutputConfig :: Lens' MonitoringJobDefinition MonitoringOutputConfig
mjdMonitoringOutputConfig = lens _mjdMonitoringOutputConfig (\s a -> s {_mjdMonitoringOutputConfig = a})

-- | Identifies the resources, ML compute instances, and ML storage volumes to deploy for a monitoring job. In distributed processing, you specify more than one instance.
mjdMonitoringResources :: Lens' MonitoringJobDefinition MonitoringResources
mjdMonitoringResources = lens _mjdMonitoringResources (\s a -> s {_mjdMonitoringResources = a})

-- | Configures the monitoring job to run a specified Docker container image.
mjdMonitoringAppSpecification :: Lens' MonitoringJobDefinition MonitoringAppSpecification
mjdMonitoringAppSpecification = lens _mjdMonitoringAppSpecification (\s a -> s {_mjdMonitoringAppSpecification = a})

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
mjdRoleARN :: Lens' MonitoringJobDefinition Text
mjdRoleARN = lens _mjdRoleARN (\s a -> s {_mjdRoleARN = a})

instance FromJSON MonitoringJobDefinition where
  parseJSON =
    withObject
      "MonitoringJobDefinition"
      ( \x ->
          MonitoringJobDefinition'
            <$> (x .:? "NetworkConfig")
            <*> (x .:? "Environment" .!= mempty)
            <*> (x .:? "BaselineConfig")
            <*> (x .:? "StoppingCondition")
            <*> (x .: "MonitoringInputs")
            <*> (x .: "MonitoringOutputConfig")
            <*> (x .: "MonitoringResources")
            <*> (x .: "MonitoringAppSpecification")
            <*> (x .: "RoleArn")
      )

instance Hashable MonitoringJobDefinition

instance NFData MonitoringJobDefinition

instance ToJSON MonitoringJobDefinition where
  toJSON MonitoringJobDefinition' {..} =
    object
      ( catMaybes
          [ ("NetworkConfig" .=) <$> _mjdNetworkConfig,
            ("Environment" .=) <$> _mjdEnvironment,
            ("BaselineConfig" .=) <$> _mjdBaselineConfig,
            ("StoppingCondition" .=) <$> _mjdStoppingCondition,
            Just ("MonitoringInputs" .= _mjdMonitoringInputs),
            Just
              ( "MonitoringOutputConfig"
                  .= _mjdMonitoringOutputConfig
              ),
            Just
              ("MonitoringResources" .= _mjdMonitoringResources),
            Just
              ( "MonitoringAppSpecification"
                  .= _mjdMonitoringAppSpecification
              ),
            Just ("RoleArn" .= _mjdRoleARN)
          ]
      )
