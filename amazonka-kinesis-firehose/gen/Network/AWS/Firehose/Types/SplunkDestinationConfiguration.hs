{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.SplunkDestinationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.SplunkDestinationConfiguration where

import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.HECEndpointType
import Network.AWS.Firehose.Types.ProcessingConfiguration
import Network.AWS.Firehose.Types.S3DestinationConfiguration
import Network.AWS.Firehose.Types.SplunkRetryOptions
import Network.AWS.Firehose.Types.SplunkS3BackupMode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the configuration of a destination in Splunk.
--
--
--
-- /See:/ 'splunkDestinationConfiguration' smart constructor.
data SplunkDestinationConfiguration = SplunkDestinationConfiguration'
  { _sdcdHECAcknowledgmentTimeoutInSeconds ::
      !( Maybe
           Nat
       ),
    _sdcdProcessingConfiguration ::
      !( Maybe
           ProcessingConfiguration
       ),
    _sdcdCloudWatchLoggingOptions ::
      !( Maybe
           CloudWatchLoggingOptions
       ),
    _sdcdRetryOptions ::
      !( Maybe
           SplunkRetryOptions
       ),
    _sdcdS3BackupMode ::
      !( Maybe
           SplunkS3BackupMode
       ),
    _sdcdHECEndpoint ::
      !Text,
    _sdcdHECEndpointType ::
      !HECEndpointType,
    _sdcdHECToken ::
      !Text,
    _sdcdS3Configuration ::
      !S3DestinationConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SplunkDestinationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdcdHECAcknowledgmentTimeoutInSeconds' - The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose either tries to send the data again or considers it an error, based on your retry settings.
--
-- * 'sdcdProcessingConfiguration' - The data processing configuration.
--
-- * 'sdcdCloudWatchLoggingOptions' - The Amazon CloudWatch logging options for your delivery stream.
--
-- * 'sdcdRetryOptions' - The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk, or if it doesn't receive an acknowledgment of receipt from Splunk.
--
-- * 'sdcdS3BackupMode' - Defines how documents should be delivered to Amazon S3. When set to @FailedEventsOnly@ , Kinesis Data Firehose writes any data that could not be indexed to the configured Amazon S3 destination. When set to @AllEvents@ , Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents to Amazon S3. The default value is @FailedEventsOnly@ . You can update this backup mode from @FailedEventsOnly@ to @AllEvents@ . You can't update it from @AllEvents@ to @FailedEventsOnly@ .
--
-- * 'sdcdHECEndpoint' - The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your data.
--
-- * 'sdcdHECEndpointType' - This type can be either "Raw" or "Event."
--
-- * 'sdcdHECToken' - This is a GUID that you obtain from your Splunk cluster when you create a new HEC endpoint.
--
-- * 'sdcdS3Configuration' - The configuration for the backup Amazon S3 location.
splunkDestinationConfiguration ::
  -- | 'sdcdHECEndpoint'
  Text ->
  -- | 'sdcdHECEndpointType'
  HECEndpointType ->
  -- | 'sdcdHECToken'
  Text ->
  -- | 'sdcdS3Configuration'
  S3DestinationConfiguration ->
  SplunkDestinationConfiguration
splunkDestinationConfiguration
  pHECEndpoint_
  pHECEndpointType_
  pHECToken_
  pS3Configuration_ =
    SplunkDestinationConfiguration'
      { _sdcdHECAcknowledgmentTimeoutInSeconds =
          Nothing,
        _sdcdProcessingConfiguration = Nothing,
        _sdcdCloudWatchLoggingOptions = Nothing,
        _sdcdRetryOptions = Nothing,
        _sdcdS3BackupMode = Nothing,
        _sdcdHECEndpoint = pHECEndpoint_,
        _sdcdHECEndpointType = pHECEndpointType_,
        _sdcdHECToken = pHECToken_,
        _sdcdS3Configuration = pS3Configuration_
      }

-- | The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose either tries to send the data again or considers it an error, based on your retry settings.
sdcdHECAcknowledgmentTimeoutInSeconds :: Lens' SplunkDestinationConfiguration (Maybe Natural)
sdcdHECAcknowledgmentTimeoutInSeconds = lens _sdcdHECAcknowledgmentTimeoutInSeconds (\s a -> s {_sdcdHECAcknowledgmentTimeoutInSeconds = a}) . mapping _Nat

-- | The data processing configuration.
sdcdProcessingConfiguration :: Lens' SplunkDestinationConfiguration (Maybe ProcessingConfiguration)
sdcdProcessingConfiguration = lens _sdcdProcessingConfiguration (\s a -> s {_sdcdProcessingConfiguration = a})

-- | The Amazon CloudWatch logging options for your delivery stream.
sdcdCloudWatchLoggingOptions :: Lens' SplunkDestinationConfiguration (Maybe CloudWatchLoggingOptions)
sdcdCloudWatchLoggingOptions = lens _sdcdCloudWatchLoggingOptions (\s a -> s {_sdcdCloudWatchLoggingOptions = a})

-- | The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk, or if it doesn't receive an acknowledgment of receipt from Splunk.
sdcdRetryOptions :: Lens' SplunkDestinationConfiguration (Maybe SplunkRetryOptions)
sdcdRetryOptions = lens _sdcdRetryOptions (\s a -> s {_sdcdRetryOptions = a})

-- | Defines how documents should be delivered to Amazon S3. When set to @FailedEventsOnly@ , Kinesis Data Firehose writes any data that could not be indexed to the configured Amazon S3 destination. When set to @AllEvents@ , Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents to Amazon S3. The default value is @FailedEventsOnly@ . You can update this backup mode from @FailedEventsOnly@ to @AllEvents@ . You can't update it from @AllEvents@ to @FailedEventsOnly@ .
sdcdS3BackupMode :: Lens' SplunkDestinationConfiguration (Maybe SplunkS3BackupMode)
sdcdS3BackupMode = lens _sdcdS3BackupMode (\s a -> s {_sdcdS3BackupMode = a})

-- | The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your data.
sdcdHECEndpoint :: Lens' SplunkDestinationConfiguration Text
sdcdHECEndpoint = lens _sdcdHECEndpoint (\s a -> s {_sdcdHECEndpoint = a})

-- | This type can be either "Raw" or "Event."
sdcdHECEndpointType :: Lens' SplunkDestinationConfiguration HECEndpointType
sdcdHECEndpointType = lens _sdcdHECEndpointType (\s a -> s {_sdcdHECEndpointType = a})

-- | This is a GUID that you obtain from your Splunk cluster when you create a new HEC endpoint.
sdcdHECToken :: Lens' SplunkDestinationConfiguration Text
sdcdHECToken = lens _sdcdHECToken (\s a -> s {_sdcdHECToken = a})

-- | The configuration for the backup Amazon S3 location.
sdcdS3Configuration :: Lens' SplunkDestinationConfiguration S3DestinationConfiguration
sdcdS3Configuration = lens _sdcdS3Configuration (\s a -> s {_sdcdS3Configuration = a})

instance Hashable SplunkDestinationConfiguration

instance NFData SplunkDestinationConfiguration

instance ToJSON SplunkDestinationConfiguration where
  toJSON SplunkDestinationConfiguration' {..} =
    object
      ( catMaybes
          [ ("HECAcknowledgmentTimeoutInSeconds" .=)
              <$> _sdcdHECAcknowledgmentTimeoutInSeconds,
            ("ProcessingConfiguration" .=)
              <$> _sdcdProcessingConfiguration,
            ("CloudWatchLoggingOptions" .=)
              <$> _sdcdCloudWatchLoggingOptions,
            ("RetryOptions" .=) <$> _sdcdRetryOptions,
            ("S3BackupMode" .=) <$> _sdcdS3BackupMode,
            Just ("HECEndpoint" .= _sdcdHECEndpoint),
            Just ("HECEndpointType" .= _sdcdHECEndpointType),
            Just ("HECToken" .= _sdcdHECToken),
            Just ("S3Configuration" .= _sdcdS3Configuration)
          ]
      )
