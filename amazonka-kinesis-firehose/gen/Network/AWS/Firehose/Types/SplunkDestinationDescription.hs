{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.SplunkDestinationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.SplunkDestinationDescription where

import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.HECEndpointType
import Network.AWS.Firehose.Types.ProcessingConfiguration
import Network.AWS.Firehose.Types.S3DestinationDescription
import Network.AWS.Firehose.Types.SplunkRetryOptions
import Network.AWS.Firehose.Types.SplunkS3BackupMode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a destination in Splunk.
--
--
--
-- /See:/ 'splunkDestinationDescription' smart constructor.
data SplunkDestinationDescription = SplunkDestinationDescription'
  { _sHECAcknowledgmentTimeoutInSeconds ::
      !(Maybe Nat),
    _sProcessingConfiguration ::
      !( Maybe
           ProcessingConfiguration
       ),
    _sCloudWatchLoggingOptions ::
      !( Maybe
           CloudWatchLoggingOptions
       ),
    _sHECEndpointType ::
      !( Maybe
           HECEndpointType
       ),
    _sRetryOptions ::
      !( Maybe
           SplunkRetryOptions
       ),
    _sS3BackupMode ::
      !( Maybe
           SplunkS3BackupMode
       ),
    _sHECEndpoint ::
      !(Maybe Text),
    _sHECToken ::
      !(Maybe Text),
    _sS3DestinationDescription ::
      !( Maybe
           S3DestinationDescription
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SplunkDestinationDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sHECAcknowledgmentTimeoutInSeconds' - The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose either tries to send the data again or considers it an error, based on your retry settings.
--
-- * 'sProcessingConfiguration' - The data processing configuration.
--
-- * 'sCloudWatchLoggingOptions' - The Amazon CloudWatch logging options for your delivery stream.
--
-- * 'sHECEndpointType' - This type can be either "Raw" or "Event."
--
-- * 'sRetryOptions' - The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk or if it doesn't receive an acknowledgment of receipt from Splunk.
--
-- * 'sS3BackupMode' - Defines how documents should be delivered to Amazon S3. When set to @FailedDocumentsOnly@ , Kinesis Data Firehose writes any data that could not be indexed to the configured Amazon S3 destination. When set to @AllDocuments@ , Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents to Amazon S3. Default value is @FailedDocumentsOnly@ .
--
-- * 'sHECEndpoint' - The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your data.
--
-- * 'sHECToken' - A GUID you obtain from your Splunk cluster when you create a new HEC endpoint.
--
-- * 'sS3DestinationDescription' - The Amazon S3 destination.>
splunkDestinationDescription ::
  SplunkDestinationDescription
splunkDestinationDescription =
  SplunkDestinationDescription'
    { _sHECAcknowledgmentTimeoutInSeconds =
        Nothing,
      _sProcessingConfiguration = Nothing,
      _sCloudWatchLoggingOptions = Nothing,
      _sHECEndpointType = Nothing,
      _sRetryOptions = Nothing,
      _sS3BackupMode = Nothing,
      _sHECEndpoint = Nothing,
      _sHECToken = Nothing,
      _sS3DestinationDescription = Nothing
    }

-- | The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose either tries to send the data again or considers it an error, based on your retry settings.
sHECAcknowledgmentTimeoutInSeconds :: Lens' SplunkDestinationDescription (Maybe Natural)
sHECAcknowledgmentTimeoutInSeconds = lens _sHECAcknowledgmentTimeoutInSeconds (\s a -> s {_sHECAcknowledgmentTimeoutInSeconds = a}) . mapping _Nat

-- | The data processing configuration.
sProcessingConfiguration :: Lens' SplunkDestinationDescription (Maybe ProcessingConfiguration)
sProcessingConfiguration = lens _sProcessingConfiguration (\s a -> s {_sProcessingConfiguration = a})

-- | The Amazon CloudWatch logging options for your delivery stream.
sCloudWatchLoggingOptions :: Lens' SplunkDestinationDescription (Maybe CloudWatchLoggingOptions)
sCloudWatchLoggingOptions = lens _sCloudWatchLoggingOptions (\s a -> s {_sCloudWatchLoggingOptions = a})

-- | This type can be either "Raw" or "Event."
sHECEndpointType :: Lens' SplunkDestinationDescription (Maybe HECEndpointType)
sHECEndpointType = lens _sHECEndpointType (\s a -> s {_sHECEndpointType = a})

-- | The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk or if it doesn't receive an acknowledgment of receipt from Splunk.
sRetryOptions :: Lens' SplunkDestinationDescription (Maybe SplunkRetryOptions)
sRetryOptions = lens _sRetryOptions (\s a -> s {_sRetryOptions = a})

-- | Defines how documents should be delivered to Amazon S3. When set to @FailedDocumentsOnly@ , Kinesis Data Firehose writes any data that could not be indexed to the configured Amazon S3 destination. When set to @AllDocuments@ , Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed documents to Amazon S3. Default value is @FailedDocumentsOnly@ .
sS3BackupMode :: Lens' SplunkDestinationDescription (Maybe SplunkS3BackupMode)
sS3BackupMode = lens _sS3BackupMode (\s a -> s {_sS3BackupMode = a})

-- | The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your data.
sHECEndpoint :: Lens' SplunkDestinationDescription (Maybe Text)
sHECEndpoint = lens _sHECEndpoint (\s a -> s {_sHECEndpoint = a})

-- | A GUID you obtain from your Splunk cluster when you create a new HEC endpoint.
sHECToken :: Lens' SplunkDestinationDescription (Maybe Text)
sHECToken = lens _sHECToken (\s a -> s {_sHECToken = a})

-- | The Amazon S3 destination.>
sS3DestinationDescription :: Lens' SplunkDestinationDescription (Maybe S3DestinationDescription)
sS3DestinationDescription = lens _sS3DestinationDescription (\s a -> s {_sS3DestinationDescription = a})

instance FromJSON SplunkDestinationDescription where
  parseJSON =
    withObject
      "SplunkDestinationDescription"
      ( \x ->
          SplunkDestinationDescription'
            <$> (x .:? "HECAcknowledgmentTimeoutInSeconds")
            <*> (x .:? "ProcessingConfiguration")
            <*> (x .:? "CloudWatchLoggingOptions")
            <*> (x .:? "HECEndpointType")
            <*> (x .:? "RetryOptions")
            <*> (x .:? "S3BackupMode")
            <*> (x .:? "HECEndpoint")
            <*> (x .:? "HECToken")
            <*> (x .:? "S3DestinationDescription")
      )

instance Hashable SplunkDestinationDescription

instance NFData SplunkDestinationDescription
