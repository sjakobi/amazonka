{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DataQualityAppSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DataQualityAppSpecification where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the container that a data quality monitoring job runs.
--
--
--
-- /See:/ 'dataQualityAppSpecification' smart constructor.
data DataQualityAppSpecification = DataQualityAppSpecification'
  { _dqasContainerArguments ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _dqasContainerEntrypoint ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _dqasPostAnalyticsProcessorSourceURI ::
      !(Maybe Text),
    _dqasEnvironment ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _dqasRecordPreprocessorSourceURI ::
      !(Maybe Text),
    _dqasImageURI ::
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

-- | Creates a value of 'DataQualityAppSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqasContainerArguments' - The arguments to send to the container that the monitoring job runs.
--
-- * 'dqasContainerEntrypoint' - The entrypoint for a container used to run a monitoring job.
--
-- * 'dqasPostAnalyticsProcessorSourceURI' - An Amazon S3 URI to a script that is called after analysis has been performed. Applicable only for the built-in (first party) containers.
--
-- * 'dqasEnvironment' - Sets the environment variables in the container that the monitoring job runs.
--
-- * 'dqasRecordPreprocessorSourceURI' - An Amazon S3 URI to a script that is called per row prior to running analysis. It can base64 decode the payload and convert it into a flatted json so that the built-in container can use the converted data. Applicable only for the built-in (first party) containers.
--
-- * 'dqasImageURI' - The container image that the data quality monitoring job runs.
dataQualityAppSpecification ::
  -- | 'dqasImageURI'
  Text ->
  DataQualityAppSpecification
dataQualityAppSpecification pImageURI_ =
  DataQualityAppSpecification'
    { _dqasContainerArguments =
        Nothing,
      _dqasContainerEntrypoint = Nothing,
      _dqasPostAnalyticsProcessorSourceURI = Nothing,
      _dqasEnvironment = Nothing,
      _dqasRecordPreprocessorSourceURI = Nothing,
      _dqasImageURI = pImageURI_
    }

-- | The arguments to send to the container that the monitoring job runs.
dqasContainerArguments :: Lens' DataQualityAppSpecification (Maybe (NonEmpty Text))
dqasContainerArguments = lens _dqasContainerArguments (\s a -> s {_dqasContainerArguments = a}) . mapping _List1

-- | The entrypoint for a container used to run a monitoring job.
dqasContainerEntrypoint :: Lens' DataQualityAppSpecification (Maybe (NonEmpty Text))
dqasContainerEntrypoint = lens _dqasContainerEntrypoint (\s a -> s {_dqasContainerEntrypoint = a}) . mapping _List1

-- | An Amazon S3 URI to a script that is called after analysis has been performed. Applicable only for the built-in (first party) containers.
dqasPostAnalyticsProcessorSourceURI :: Lens' DataQualityAppSpecification (Maybe Text)
dqasPostAnalyticsProcessorSourceURI = lens _dqasPostAnalyticsProcessorSourceURI (\s a -> s {_dqasPostAnalyticsProcessorSourceURI = a})

-- | Sets the environment variables in the container that the monitoring job runs.
dqasEnvironment :: Lens' DataQualityAppSpecification (HashMap Text Text)
dqasEnvironment = lens _dqasEnvironment (\s a -> s {_dqasEnvironment = a}) . _Default . _Map

-- | An Amazon S3 URI to a script that is called per row prior to running analysis. It can base64 decode the payload and convert it into a flatted json so that the built-in container can use the converted data. Applicable only for the built-in (first party) containers.
dqasRecordPreprocessorSourceURI :: Lens' DataQualityAppSpecification (Maybe Text)
dqasRecordPreprocessorSourceURI = lens _dqasRecordPreprocessorSourceURI (\s a -> s {_dqasRecordPreprocessorSourceURI = a})

-- | The container image that the data quality monitoring job runs.
dqasImageURI :: Lens' DataQualityAppSpecification Text
dqasImageURI = lens _dqasImageURI (\s a -> s {_dqasImageURI = a})

instance FromJSON DataQualityAppSpecification where
  parseJSON =
    withObject
      "DataQualityAppSpecification"
      ( \x ->
          DataQualityAppSpecification'
            <$> (x .:? "ContainerArguments")
            <*> (x .:? "ContainerEntrypoint")
            <*> (x .:? "PostAnalyticsProcessorSourceUri")
            <*> (x .:? "Environment" .!= mempty)
            <*> (x .:? "RecordPreprocessorSourceUri")
            <*> (x .: "ImageUri")
      )

instance Hashable DataQualityAppSpecification

instance NFData DataQualityAppSpecification

instance ToJSON DataQualityAppSpecification where
  toJSON DataQualityAppSpecification' {..} =
    object
      ( catMaybes
          [ ("ContainerArguments" .=)
              <$> _dqasContainerArguments,
            ("ContainerEntrypoint" .=)
              <$> _dqasContainerEntrypoint,
            ("PostAnalyticsProcessorSourceUri" .=)
              <$> _dqasPostAnalyticsProcessorSourceURI,
            ("Environment" .=) <$> _dqasEnvironment,
            ("RecordPreprocessorSourceUri" .=)
              <$> _dqasRecordPreprocessorSourceURI,
            Just ("ImageUri" .= _dqasImageURI)
          ]
      )
