{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringAppSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringAppSpecification where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Container image configuration object for the monitoring job.
--
--
--
-- /See:/ 'monitoringAppSpecification' smart constructor.
data MonitoringAppSpecification = MonitoringAppSpecification'
  { _masContainerArguments ::
      !( Maybe
           (List1 Text)
       ),
    _masContainerEntrypoint ::
      !( Maybe
           (List1 Text)
       ),
    _masPostAnalyticsProcessorSourceURI ::
      !(Maybe Text),
    _masRecordPreprocessorSourceURI ::
      !(Maybe Text),
    _masImageURI ::
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

-- | Creates a value of 'MonitoringAppSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'masContainerArguments' - An array of arguments for the container used to run the monitoring job.
--
-- * 'masContainerEntrypoint' - Specifies the entrypoint for a container used to run the monitoring job.
--
-- * 'masPostAnalyticsProcessorSourceURI' - An Amazon S3 URI to a script that is called after analysis has been performed. Applicable only for the built-in (first party) containers.
--
-- * 'masRecordPreprocessorSourceURI' - An Amazon S3 URI to a script that is called per row prior to running analysis. It can base64 decode the payload and convert it into a flatted json so that the built-in container can use the converted data. Applicable only for the built-in (first party) containers.
--
-- * 'masImageURI' - The container image to be run by the monitoring job.
monitoringAppSpecification ::
  -- | 'masImageURI'
  Text ->
  MonitoringAppSpecification
monitoringAppSpecification pImageURI_ =
  MonitoringAppSpecification'
    { _masContainerArguments =
        Nothing,
      _masContainerEntrypoint = Nothing,
      _masPostAnalyticsProcessorSourceURI = Nothing,
      _masRecordPreprocessorSourceURI = Nothing,
      _masImageURI = pImageURI_
    }

-- | An array of arguments for the container used to run the monitoring job.
masContainerArguments :: Lens' MonitoringAppSpecification (Maybe (NonEmpty Text))
masContainerArguments = lens _masContainerArguments (\s a -> s {_masContainerArguments = a}) . mapping _List1

-- | Specifies the entrypoint for a container used to run the monitoring job.
masContainerEntrypoint :: Lens' MonitoringAppSpecification (Maybe (NonEmpty Text))
masContainerEntrypoint = lens _masContainerEntrypoint (\s a -> s {_masContainerEntrypoint = a}) . mapping _List1

-- | An Amazon S3 URI to a script that is called after analysis has been performed. Applicable only for the built-in (first party) containers.
masPostAnalyticsProcessorSourceURI :: Lens' MonitoringAppSpecification (Maybe Text)
masPostAnalyticsProcessorSourceURI = lens _masPostAnalyticsProcessorSourceURI (\s a -> s {_masPostAnalyticsProcessorSourceURI = a})

-- | An Amazon S3 URI to a script that is called per row prior to running analysis. It can base64 decode the payload and convert it into a flatted json so that the built-in container can use the converted data. Applicable only for the built-in (first party) containers.
masRecordPreprocessorSourceURI :: Lens' MonitoringAppSpecification (Maybe Text)
masRecordPreprocessorSourceURI = lens _masRecordPreprocessorSourceURI (\s a -> s {_masRecordPreprocessorSourceURI = a})

-- | The container image to be run by the monitoring job.
masImageURI :: Lens' MonitoringAppSpecification Text
masImageURI = lens _masImageURI (\s a -> s {_masImageURI = a})

instance FromJSON MonitoringAppSpecification where
  parseJSON =
    withObject
      "MonitoringAppSpecification"
      ( \x ->
          MonitoringAppSpecification'
            <$> (x .:? "ContainerArguments")
            <*> (x .:? "ContainerEntrypoint")
            <*> (x .:? "PostAnalyticsProcessorSourceUri")
            <*> (x .:? "RecordPreprocessorSourceUri")
            <*> (x .: "ImageUri")
      )

instance Hashable MonitoringAppSpecification

instance NFData MonitoringAppSpecification

instance ToJSON MonitoringAppSpecification where
  toJSON MonitoringAppSpecification' {..} =
    object
      ( catMaybes
          [ ("ContainerArguments" .=)
              <$> _masContainerArguments,
            ("ContainerEntrypoint" .=)
              <$> _masContainerEntrypoint,
            ("PostAnalyticsProcessorSourceUri" .=)
              <$> _masPostAnalyticsProcessorSourceURI,
            ("RecordPreprocessorSourceUri" .=)
              <$> _masRecordPreprocessorSourceURI,
            Just ("ImageUri" .= _masImageURI)
          ]
      )
