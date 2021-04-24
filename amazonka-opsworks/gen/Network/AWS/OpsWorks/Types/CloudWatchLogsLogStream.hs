{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.CloudWatchLogsLogStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.CloudWatchLogsLogStream where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types.CloudWatchLogsEncoding
import Network.AWS.OpsWorks.Types.CloudWatchLogsInitialPosition
import Network.AWS.OpsWorks.Types.CloudWatchLogsTimeZone
import Network.AWS.Prelude

-- | Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html CloudWatch Logs Agent Reference> .
--
--
--
-- /See:/ 'cloudWatchLogsLogStream' smart constructor.
data CloudWatchLogsLogStream = CloudWatchLogsLogStream'
  { _cwllsMultiLineStartPattern ::
      !(Maybe Text),
    _cwllsInitialPosition ::
      !( Maybe
           CloudWatchLogsInitialPosition
       ),
    _cwllsBatchCount ::
      !(Maybe Int),
    _cwllsFile ::
      !(Maybe Text),
    _cwllsFileFingerprintLines ::
      !(Maybe Text),
    _cwllsLogGroupName ::
      !(Maybe Text),
    _cwllsBatchSize ::
      !(Maybe Int),
    _cwllsBufferDuration ::
      !(Maybe Int),
    _cwllsEncoding ::
      !( Maybe
           CloudWatchLogsEncoding
       ),
    _cwllsTimeZone ::
      !( Maybe
           CloudWatchLogsTimeZone
       ),
    _cwllsDatetimeFormat ::
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

-- | Creates a value of 'CloudWatchLogsLogStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwllsMultiLineStartPattern' - Specifies the pattern for identifying the start of a log message.
--
-- * 'cwllsInitialPosition' - Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. This setting is only used if there is no state persisted for that log stream.
--
-- * 'cwllsBatchCount' - Specifies the max number of log events in a batch, up to 10000. The default value is 1000.
--
-- * 'cwllsFile' - Specifies log files that you want to push to CloudWatch Logs. @File@ can point to a specific file or multiple files (by using wild card characters such as @/var/log/system.log*@ ). Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use wild card characters to specify a series of files of the same type, such as @access_log.2014-06-01-01@ , @access_log.2014-06-01-02@ , and so on by using a pattern like @access_log.*@ . Don't use a wildcard to match multiple file types, such as @access_log_80@ and @access_log_443@ . To specify multiple, different file types, add another log stream entry to the configuration file, so that each log file type is stored in a different log group. Zipped files are not supported.
--
-- * 'cwllsFileFingerprintLines' - Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. Fingerprint lines are not sent to CloudWatch Logs unless all specified lines are available.
--
-- * 'cwllsLogGroupName' - Specifies the destination log group. A log group is created automatically if it doesn't already exist. Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).
--
-- * 'cwllsBatchSize' - Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. The default value is 32768 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.
--
-- * 'cwllsBufferDuration' - Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.
--
-- * 'cwllsEncoding' - Specifies the encoding of the log file so that the file can be read correctly. The default is @utf_8@ . Encodings supported by Python @codecs.decode()@ can be used here.
--
-- * 'cwllsTimeZone' - Specifies the time zone of log event time stamps.
--
-- * 'cwllsDatetimeFormat' - Specifies how the time stamp is extracted from logs. For more information, see the <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html CloudWatch Logs Agent Reference> .
cloudWatchLogsLogStream ::
  CloudWatchLogsLogStream
cloudWatchLogsLogStream =
  CloudWatchLogsLogStream'
    { _cwllsMultiLineStartPattern =
        Nothing,
      _cwllsInitialPosition = Nothing,
      _cwllsBatchCount = Nothing,
      _cwllsFile = Nothing,
      _cwllsFileFingerprintLines = Nothing,
      _cwllsLogGroupName = Nothing,
      _cwllsBatchSize = Nothing,
      _cwllsBufferDuration = Nothing,
      _cwllsEncoding = Nothing,
      _cwllsTimeZone = Nothing,
      _cwllsDatetimeFormat = Nothing
    }

-- | Specifies the pattern for identifying the start of a log message.
cwllsMultiLineStartPattern :: Lens' CloudWatchLogsLogStream (Maybe Text)
cwllsMultiLineStartPattern = lens _cwllsMultiLineStartPattern (\s a -> s {_cwllsMultiLineStartPattern = a})

-- | Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. This setting is only used if there is no state persisted for that log stream.
cwllsInitialPosition :: Lens' CloudWatchLogsLogStream (Maybe CloudWatchLogsInitialPosition)
cwllsInitialPosition = lens _cwllsInitialPosition (\s a -> s {_cwllsInitialPosition = a})

-- | Specifies the max number of log events in a batch, up to 10000. The default value is 1000.
cwllsBatchCount :: Lens' CloudWatchLogsLogStream (Maybe Int)
cwllsBatchCount = lens _cwllsBatchCount (\s a -> s {_cwllsBatchCount = a})

-- | Specifies log files that you want to push to CloudWatch Logs. @File@ can point to a specific file or multiple files (by using wild card characters such as @/var/log/system.log*@ ). Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use wild card characters to specify a series of files of the same type, such as @access_log.2014-06-01-01@ , @access_log.2014-06-01-02@ , and so on by using a pattern like @access_log.*@ . Don't use a wildcard to match multiple file types, such as @access_log_80@ and @access_log_443@ . To specify multiple, different file types, add another log stream entry to the configuration file, so that each log file type is stored in a different log group. Zipped files are not supported.
cwllsFile :: Lens' CloudWatchLogsLogStream (Maybe Text)
cwllsFile = lens _cwllsFile (\s a -> s {_cwllsFile = a})

-- | Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. Fingerprint lines are not sent to CloudWatch Logs unless all specified lines are available.
cwllsFileFingerprintLines :: Lens' CloudWatchLogsLogStream (Maybe Text)
cwllsFileFingerprintLines = lens _cwllsFileFingerprintLines (\s a -> s {_cwllsFileFingerprintLines = a})

-- | Specifies the destination log group. A log group is created automatically if it doesn't already exist. Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).
cwllsLogGroupName :: Lens' CloudWatchLogsLogStream (Maybe Text)
cwllsLogGroupName = lens _cwllsLogGroupName (\s a -> s {_cwllsLogGroupName = a})

-- | Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. The default value is 32768 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.
cwllsBatchSize :: Lens' CloudWatchLogsLogStream (Maybe Int)
cwllsBatchSize = lens _cwllsBatchSize (\s a -> s {_cwllsBatchSize = a})

-- | Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.
cwllsBufferDuration :: Lens' CloudWatchLogsLogStream (Maybe Int)
cwllsBufferDuration = lens _cwllsBufferDuration (\s a -> s {_cwllsBufferDuration = a})

-- | Specifies the encoding of the log file so that the file can be read correctly. The default is @utf_8@ . Encodings supported by Python @codecs.decode()@ can be used here.
cwllsEncoding :: Lens' CloudWatchLogsLogStream (Maybe CloudWatchLogsEncoding)
cwllsEncoding = lens _cwllsEncoding (\s a -> s {_cwllsEncoding = a})

-- | Specifies the time zone of log event time stamps.
cwllsTimeZone :: Lens' CloudWatchLogsLogStream (Maybe CloudWatchLogsTimeZone)
cwllsTimeZone = lens _cwllsTimeZone (\s a -> s {_cwllsTimeZone = a})

-- | Specifies how the time stamp is extracted from logs. For more information, see the <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html CloudWatch Logs Agent Reference> .
cwllsDatetimeFormat :: Lens' CloudWatchLogsLogStream (Maybe Text)
cwllsDatetimeFormat = lens _cwllsDatetimeFormat (\s a -> s {_cwllsDatetimeFormat = a})

instance FromJSON CloudWatchLogsLogStream where
  parseJSON =
    withObject
      "CloudWatchLogsLogStream"
      ( \x ->
          CloudWatchLogsLogStream'
            <$> (x .:? "MultiLineStartPattern")
            <*> (x .:? "InitialPosition")
            <*> (x .:? "BatchCount")
            <*> (x .:? "File")
            <*> (x .:? "FileFingerprintLines")
            <*> (x .:? "LogGroupName")
            <*> (x .:? "BatchSize")
            <*> (x .:? "BufferDuration")
            <*> (x .:? "Encoding")
            <*> (x .:? "TimeZone")
            <*> (x .:? "DatetimeFormat")
      )

instance Hashable CloudWatchLogsLogStream

instance NFData CloudWatchLogsLogStream

instance ToJSON CloudWatchLogsLogStream where
  toJSON CloudWatchLogsLogStream' {..} =
    object
      ( catMaybes
          [ ("MultiLineStartPattern" .=)
              <$> _cwllsMultiLineStartPattern,
            ("InitialPosition" .=) <$> _cwllsInitialPosition,
            ("BatchCount" .=) <$> _cwllsBatchCount,
            ("File" .=) <$> _cwllsFile,
            ("FileFingerprintLines" .=)
              <$> _cwllsFileFingerprintLines,
            ("LogGroupName" .=) <$> _cwllsLogGroupName,
            ("BatchSize" .=) <$> _cwllsBatchSize,
            ("BufferDuration" .=) <$> _cwllsBufferDuration,
            ("Encoding" .=) <$> _cwllsEncoding,
            ("TimeZone" .=) <$> _cwllsTimeZone,
            ("DatetimeFormat" .=) <$> _cwllsDatetimeFormat
          ]
      )
