{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EndpointInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EndpointInput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ProcessingS3DataDistributionType
import Network.AWS.SageMaker.Types.ProcessingS3InputMode

-- | Input object for the endpoint
--
--
--
-- /See:/ 'endpointInput' smart constructor.
data EndpointInput = EndpointInput'
  { _eiEndTimeOffset ::
      !(Maybe Text),
    _eiInferenceAttribute :: !(Maybe Text),
    _eiS3InputMode ::
      !(Maybe ProcessingS3InputMode),
    _eiS3DataDistributionType ::
      !(Maybe ProcessingS3DataDistributionType),
    _eiProbabilityAttribute :: !(Maybe Text),
    _eiProbabilityThresholdAttribute ::
      !(Maybe Double),
    _eiFeaturesAttribute :: !(Maybe Text),
    _eiStartTimeOffset :: !(Maybe Text),
    _eiEndpointName :: !Text,
    _eiLocalPath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiEndTimeOffset' - If specified, monitoring jobs substract this time from the end time. For information about using offsets for scheduling monitoring jobs, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-model-quality-schedule.html Schedule Model Quality Monitoring Jobs> .
--
-- * 'eiInferenceAttribute' - The attribute of the input data that represents the ground truth label.
--
-- * 'eiS3InputMode' - Whether the @Pipe@ or @File@ is used as the input mode for transfering data for the monitoring job. @Pipe@ mode is recommended for large datasets. @File@ mode is useful for small files that fit in memory. Defaults to @File@ .
--
-- * 'eiS3DataDistributionType' - Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defauts to @FullyReplicated@
--
-- * 'eiProbabilityAttribute' - In a classification problem, the attribute that represents the class probability.
--
-- * 'eiProbabilityThresholdAttribute' - The threshold for the class probability to be evaluated as a positive result.
--
-- * 'eiFeaturesAttribute' - The attributes of the input data that are the input features.
--
-- * 'eiStartTimeOffset' - If specified, monitoring jobs substract this time from the start time. For information about using offsets for scheduling monitoring jobs, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-model-quality-schedule.html Schedule Model Quality Monitoring Jobs> .
--
-- * 'eiEndpointName' - An endpoint in customer's account which has enabled @DataCaptureConfig@ enabled.
--
-- * 'eiLocalPath' - Path to the filesystem where the endpoint data is available to the container.
endpointInput ::
  -- | 'eiEndpointName'
  Text ->
  -- | 'eiLocalPath'
  Text ->
  EndpointInput
endpointInput pEndpointName_ pLocalPath_ =
  EndpointInput'
    { _eiEndTimeOffset = Nothing,
      _eiInferenceAttribute = Nothing,
      _eiS3InputMode = Nothing,
      _eiS3DataDistributionType = Nothing,
      _eiProbabilityAttribute = Nothing,
      _eiProbabilityThresholdAttribute = Nothing,
      _eiFeaturesAttribute = Nothing,
      _eiStartTimeOffset = Nothing,
      _eiEndpointName = pEndpointName_,
      _eiLocalPath = pLocalPath_
    }

-- | If specified, monitoring jobs substract this time from the end time. For information about using offsets for scheduling monitoring jobs, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-model-quality-schedule.html Schedule Model Quality Monitoring Jobs> .
eiEndTimeOffset :: Lens' EndpointInput (Maybe Text)
eiEndTimeOffset = lens _eiEndTimeOffset (\s a -> s {_eiEndTimeOffset = a})

-- | The attribute of the input data that represents the ground truth label.
eiInferenceAttribute :: Lens' EndpointInput (Maybe Text)
eiInferenceAttribute = lens _eiInferenceAttribute (\s a -> s {_eiInferenceAttribute = a})

-- | Whether the @Pipe@ or @File@ is used as the input mode for transfering data for the monitoring job. @Pipe@ mode is recommended for large datasets. @File@ mode is useful for small files that fit in memory. Defaults to @File@ .
eiS3InputMode :: Lens' EndpointInput (Maybe ProcessingS3InputMode)
eiS3InputMode = lens _eiS3InputMode (\s a -> s {_eiS3InputMode = a})

-- | Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defauts to @FullyReplicated@
eiS3DataDistributionType :: Lens' EndpointInput (Maybe ProcessingS3DataDistributionType)
eiS3DataDistributionType = lens _eiS3DataDistributionType (\s a -> s {_eiS3DataDistributionType = a})

-- | In a classification problem, the attribute that represents the class probability.
eiProbabilityAttribute :: Lens' EndpointInput (Maybe Text)
eiProbabilityAttribute = lens _eiProbabilityAttribute (\s a -> s {_eiProbabilityAttribute = a})

-- | The threshold for the class probability to be evaluated as a positive result.
eiProbabilityThresholdAttribute :: Lens' EndpointInput (Maybe Double)
eiProbabilityThresholdAttribute = lens _eiProbabilityThresholdAttribute (\s a -> s {_eiProbabilityThresholdAttribute = a})

-- | The attributes of the input data that are the input features.
eiFeaturesAttribute :: Lens' EndpointInput (Maybe Text)
eiFeaturesAttribute = lens _eiFeaturesAttribute (\s a -> s {_eiFeaturesAttribute = a})

-- | If specified, monitoring jobs substract this time from the start time. For information about using offsets for scheduling monitoring jobs, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-model-quality-schedule.html Schedule Model Quality Monitoring Jobs> .
eiStartTimeOffset :: Lens' EndpointInput (Maybe Text)
eiStartTimeOffset = lens _eiStartTimeOffset (\s a -> s {_eiStartTimeOffset = a})

-- | An endpoint in customer's account which has enabled @DataCaptureConfig@ enabled.
eiEndpointName :: Lens' EndpointInput Text
eiEndpointName = lens _eiEndpointName (\s a -> s {_eiEndpointName = a})

-- | Path to the filesystem where the endpoint data is available to the container.
eiLocalPath :: Lens' EndpointInput Text
eiLocalPath = lens _eiLocalPath (\s a -> s {_eiLocalPath = a})

instance FromJSON EndpointInput where
  parseJSON =
    withObject
      "EndpointInput"
      ( \x ->
          EndpointInput'
            <$> (x .:? "EndTimeOffset")
            <*> (x .:? "InferenceAttribute")
            <*> (x .:? "S3InputMode")
            <*> (x .:? "S3DataDistributionType")
            <*> (x .:? "ProbabilityAttribute")
            <*> (x .:? "ProbabilityThresholdAttribute")
            <*> (x .:? "FeaturesAttribute")
            <*> (x .:? "StartTimeOffset")
            <*> (x .: "EndpointName")
            <*> (x .: "LocalPath")
      )

instance Hashable EndpointInput

instance NFData EndpointInput

instance ToJSON EndpointInput where
  toJSON EndpointInput' {..} =
    object
      ( catMaybes
          [ ("EndTimeOffset" .=) <$> _eiEndTimeOffset,
            ("InferenceAttribute" .=) <$> _eiInferenceAttribute,
            ("S3InputMode" .=) <$> _eiS3InputMode,
            ("S3DataDistributionType" .=)
              <$> _eiS3DataDistributionType,
            ("ProbabilityAttribute" .=)
              <$> _eiProbabilityAttribute,
            ("ProbabilityThresholdAttribute" .=)
              <$> _eiProbabilityThresholdAttribute,
            ("FeaturesAttribute" .=) <$> _eiFeaturesAttribute,
            ("StartTimeOffset" .=) <$> _eiStartTimeOffset,
            Just ("EndpointName" .= _eiEndpointName),
            Just ("LocalPath" .= _eiLocalPath)
          ]
      )
