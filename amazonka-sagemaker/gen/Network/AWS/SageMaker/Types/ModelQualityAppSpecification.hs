{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelQualityAppSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelQualityAppSpecification where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MonitoringProblemType

-- | Container image configuration object for the monitoring job.
--
--
--
-- /See:/ 'modelQualityAppSpecification' smart constructor.
data ModelQualityAppSpecification = ModelQualityAppSpecification'
  { _mqasContainerArguments ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _mqasContainerEntrypoint ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _mqasPostAnalyticsProcessorSourceURI ::
      !(Maybe Text),
    _mqasEnvironment ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _mqasRecordPreprocessorSourceURI ::
      !(Maybe Text),
    _mqasProblemType ::
      !( Maybe
           MonitoringProblemType
       ),
    _mqasImageURI ::
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

-- | Creates a value of 'ModelQualityAppSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mqasContainerArguments' - An array of arguments for the container used to run the monitoring job.
--
-- * 'mqasContainerEntrypoint' - Specifies the entrypoint for a container that the monitoring job runs.
--
-- * 'mqasPostAnalyticsProcessorSourceURI' - An Amazon S3 URI to a script that is called after analysis has been performed. Applicable only for the built-in (first party) containers.
--
-- * 'mqasEnvironment' - Sets the environment variables in the container that the monitoring job runs.
--
-- * 'mqasRecordPreprocessorSourceURI' - An Amazon S3 URI to a script that is called per row prior to running analysis. It can base64 decode the payload and convert it into a flatted json so that the built-in container can use the converted data. Applicable only for the built-in (first party) containers.
--
-- * 'mqasProblemType' - The machine learning problem type of the model that the monitoring job monitors.
--
-- * 'mqasImageURI' - The address of the container image that the monitoring job runs.
modelQualityAppSpecification ::
  -- | 'mqasImageURI'
  Text ->
  ModelQualityAppSpecification
modelQualityAppSpecification pImageURI_ =
  ModelQualityAppSpecification'
    { _mqasContainerArguments =
        Nothing,
      _mqasContainerEntrypoint = Nothing,
      _mqasPostAnalyticsProcessorSourceURI =
        Nothing,
      _mqasEnvironment = Nothing,
      _mqasRecordPreprocessorSourceURI = Nothing,
      _mqasProblemType = Nothing,
      _mqasImageURI = pImageURI_
    }

-- | An array of arguments for the container used to run the monitoring job.
mqasContainerArguments :: Lens' ModelQualityAppSpecification (Maybe (NonEmpty Text))
mqasContainerArguments = lens _mqasContainerArguments (\s a -> s {_mqasContainerArguments = a}) . mapping _List1

-- | Specifies the entrypoint for a container that the monitoring job runs.
mqasContainerEntrypoint :: Lens' ModelQualityAppSpecification (Maybe (NonEmpty Text))
mqasContainerEntrypoint = lens _mqasContainerEntrypoint (\s a -> s {_mqasContainerEntrypoint = a}) . mapping _List1

-- | An Amazon S3 URI to a script that is called after analysis has been performed. Applicable only for the built-in (first party) containers.
mqasPostAnalyticsProcessorSourceURI :: Lens' ModelQualityAppSpecification (Maybe Text)
mqasPostAnalyticsProcessorSourceURI = lens _mqasPostAnalyticsProcessorSourceURI (\s a -> s {_mqasPostAnalyticsProcessorSourceURI = a})

-- | Sets the environment variables in the container that the monitoring job runs.
mqasEnvironment :: Lens' ModelQualityAppSpecification (HashMap Text Text)
mqasEnvironment = lens _mqasEnvironment (\s a -> s {_mqasEnvironment = a}) . _Default . _Map

-- | An Amazon S3 URI to a script that is called per row prior to running analysis. It can base64 decode the payload and convert it into a flatted json so that the built-in container can use the converted data. Applicable only for the built-in (first party) containers.
mqasRecordPreprocessorSourceURI :: Lens' ModelQualityAppSpecification (Maybe Text)
mqasRecordPreprocessorSourceURI = lens _mqasRecordPreprocessorSourceURI (\s a -> s {_mqasRecordPreprocessorSourceURI = a})

-- | The machine learning problem type of the model that the monitoring job monitors.
mqasProblemType :: Lens' ModelQualityAppSpecification (Maybe MonitoringProblemType)
mqasProblemType = lens _mqasProblemType (\s a -> s {_mqasProblemType = a})

-- | The address of the container image that the monitoring job runs.
mqasImageURI :: Lens' ModelQualityAppSpecification Text
mqasImageURI = lens _mqasImageURI (\s a -> s {_mqasImageURI = a})

instance FromJSON ModelQualityAppSpecification where
  parseJSON =
    withObject
      "ModelQualityAppSpecification"
      ( \x ->
          ModelQualityAppSpecification'
            <$> (x .:? "ContainerArguments")
            <*> (x .:? "ContainerEntrypoint")
            <*> (x .:? "PostAnalyticsProcessorSourceUri")
            <*> (x .:? "Environment" .!= mempty)
            <*> (x .:? "RecordPreprocessorSourceUri")
            <*> (x .:? "ProblemType")
            <*> (x .: "ImageUri")
      )

instance Hashable ModelQualityAppSpecification

instance NFData ModelQualityAppSpecification

instance ToJSON ModelQualityAppSpecification where
  toJSON ModelQualityAppSpecification' {..} =
    object
      ( catMaybes
          [ ("ContainerArguments" .=)
              <$> _mqasContainerArguments,
            ("ContainerEntrypoint" .=)
              <$> _mqasContainerEntrypoint,
            ("PostAnalyticsProcessorSourceUri" .=)
              <$> _mqasPostAnalyticsProcessorSourceURI,
            ("Environment" .=) <$> _mqasEnvironment,
            ("RecordPreprocessorSourceUri" .=)
              <$> _mqasRecordPreprocessorSourceURI,
            ("ProblemType" .=) <$> _mqasProblemType,
            Just ("ImageUri" .= _mqasImageURI)
          ]
      )
