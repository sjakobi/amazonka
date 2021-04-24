{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.SplunkDestinationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.SplunkDestinationUpdate where

import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.HECEndpointType
import Network.AWS.Firehose.Types.ProcessingConfiguration
import Network.AWS.Firehose.Types.S3DestinationUpdate
import Network.AWS.Firehose.Types.SplunkRetryOptions
import Network.AWS.Firehose.Types.SplunkS3BackupMode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an update for a destination in Splunk.
--
--
--
-- /See:/ 'splunkDestinationUpdate' smart constructor.
data SplunkDestinationUpdate = SplunkDestinationUpdate'
  { _splS3Update ::
      !( Maybe
           S3DestinationUpdate
       ),
    _splHECAcknowledgmentTimeoutInSeconds ::
      !(Maybe Nat),
    _splProcessingConfiguration ::
      !( Maybe
           ProcessingConfiguration
       ),
    _splCloudWatchLoggingOptions ::
      !( Maybe
           CloudWatchLoggingOptions
       ),
    _splHECEndpointType ::
      !( Maybe
           HECEndpointType
       ),
    _splRetryOptions ::
      !( Maybe
           SplunkRetryOptions
       ),
    _splS3BackupMode ::
      !( Maybe
           SplunkS3BackupMode
       ),
    _splHECEndpoint ::
      !(Maybe Text),
    _splHECToken ::
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

-- | Creates a value of 'SplunkDestinationUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'splS3Update' - Your update to the configuration of the backup Amazon S3 location.
--
-- * 'splHECAcknowledgmentTimeoutInSeconds' - The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from Splunk after it sends data. At the end of the timeout period, Kinesis Data Firehose either tries to send the data again or considers it an error, based on your retry settings.
--
-- * 'splProcessingConfiguration' - The data processing configuration.
--
-- * 'splCloudWatchLoggingOptions' - The Amazon CloudWatch logging options for your delivery stream.
--
-- * 'splHECEndpointType' - This type can be either "Raw" or "Event."
--
-- * 'splRetryOptions' - The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk or if it doesn't receive an acknowledgment of receipt from Splunk.
--
-- * 'splS3BackupMode' - Specifies how you want Kinesis Data Firehose to back up documents to Amazon S3. When set to @FailedDocumentsOnly@ , Kinesis Data Firehose writes any data that could not be indexed to the configured Amazon S3 destination. When set to @AllEvents@ , Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents to Amazon S3. The default value is @FailedEventsOnly@ . You can update this backup mode from @FailedEventsOnly@ to @AllEvents@ . You can't update it from @AllEvents@ to @FailedEventsOnly@ .
--
-- * 'splHECEndpoint' - The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your data.
--
-- * 'splHECToken' - A GUID that you obtain from your Splunk cluster when you create a new HEC endpoint.
splunkDestinationUpdate ::
  SplunkDestinationUpdate
splunkDestinationUpdate =
  SplunkDestinationUpdate'
    { _splS3Update = Nothing,
      _splHECAcknowledgmentTimeoutInSeconds = Nothing,
      _splProcessingConfiguration = Nothing,
      _splCloudWatchLoggingOptions = Nothing,
      _splHECEndpointType = Nothing,
      _splRetryOptions = Nothing,
      _splS3BackupMode = Nothing,
      _splHECEndpoint = Nothing,
      _splHECToken = Nothing
    }

-- | Your update to the configuration of the backup Amazon S3 location.
splS3Update :: Lens' SplunkDestinationUpdate (Maybe S3DestinationUpdate)
splS3Update = lens _splS3Update (\s a -> s {_splS3Update = a})

-- | The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from Splunk after it sends data. At the end of the timeout period, Kinesis Data Firehose either tries to send the data again or considers it an error, based on your retry settings.
splHECAcknowledgmentTimeoutInSeconds :: Lens' SplunkDestinationUpdate (Maybe Natural)
splHECAcknowledgmentTimeoutInSeconds = lens _splHECAcknowledgmentTimeoutInSeconds (\s a -> s {_splHECAcknowledgmentTimeoutInSeconds = a}) . mapping _Nat

-- | The data processing configuration.
splProcessingConfiguration :: Lens' SplunkDestinationUpdate (Maybe ProcessingConfiguration)
splProcessingConfiguration = lens _splProcessingConfiguration (\s a -> s {_splProcessingConfiguration = a})

-- | The Amazon CloudWatch logging options for your delivery stream.
splCloudWatchLoggingOptions :: Lens' SplunkDestinationUpdate (Maybe CloudWatchLoggingOptions)
splCloudWatchLoggingOptions = lens _splCloudWatchLoggingOptions (\s a -> s {_splCloudWatchLoggingOptions = a})

-- | This type can be either "Raw" or "Event."
splHECEndpointType :: Lens' SplunkDestinationUpdate (Maybe HECEndpointType)
splHECEndpointType = lens _splHECEndpointType (\s a -> s {_splHECEndpointType = a})

-- | The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk or if it doesn't receive an acknowledgment of receipt from Splunk.
splRetryOptions :: Lens' SplunkDestinationUpdate (Maybe SplunkRetryOptions)
splRetryOptions = lens _splRetryOptions (\s a -> s {_splRetryOptions = a})

-- | Specifies how you want Kinesis Data Firehose to back up documents to Amazon S3. When set to @FailedDocumentsOnly@ , Kinesis Data Firehose writes any data that could not be indexed to the configured Amazon S3 destination. When set to @AllEvents@ , Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents to Amazon S3. The default value is @FailedEventsOnly@ . You can update this backup mode from @FailedEventsOnly@ to @AllEvents@ . You can't update it from @AllEvents@ to @FailedEventsOnly@ .
splS3BackupMode :: Lens' SplunkDestinationUpdate (Maybe SplunkS3BackupMode)
splS3BackupMode = lens _splS3BackupMode (\s a -> s {_splS3BackupMode = a})

-- | The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your data.
splHECEndpoint :: Lens' SplunkDestinationUpdate (Maybe Text)
splHECEndpoint = lens _splHECEndpoint (\s a -> s {_splHECEndpoint = a})

-- | A GUID that you obtain from your Splunk cluster when you create a new HEC endpoint.
splHECToken :: Lens' SplunkDestinationUpdate (Maybe Text)
splHECToken = lens _splHECToken (\s a -> s {_splHECToken = a})

instance Hashable SplunkDestinationUpdate

instance NFData SplunkDestinationUpdate

instance ToJSON SplunkDestinationUpdate where
  toJSON SplunkDestinationUpdate' {..} =
    object
      ( catMaybes
          [ ("S3Update" .=) <$> _splS3Update,
            ("HECAcknowledgmentTimeoutInSeconds" .=)
              <$> _splHECAcknowledgmentTimeoutInSeconds,
            ("ProcessingConfiguration" .=)
              <$> _splProcessingConfiguration,
            ("CloudWatchLoggingOptions" .=)
              <$> _splCloudWatchLoggingOptions,
            ("HECEndpointType" .=) <$> _splHECEndpointType,
            ("RetryOptions" .=) <$> _splRetryOptions,
            ("S3BackupMode" .=) <$> _splS3BackupMode,
            ("HECEndpoint" .=) <$> _splHECEndpoint,
            ("HECToken" .=) <$> _splHECToken
          ]
      )
