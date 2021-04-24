{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.DescribeStreamProcessor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about a stream processor created by 'CreateStreamProcessor' . You can get information about the input and output streams, the input parameters for the face recognition being performed, and the current status of the stream processor.
module Network.AWS.Rekognition.DescribeStreamProcessor
  ( -- * Creating a Request
    describeStreamProcessor,
    DescribeStreamProcessor,

    -- * Request Lenses
    dspName,

    -- * Destructuring the Response
    describeStreamProcessorResponse,
    DescribeStreamProcessorResponse,

    -- * Response Lenses
    dsprrsCreationTimestamp,
    dsprrsStatusMessage,
    dsprrsStatus,
    dsprrsRoleARN,
    dsprrsInput,
    dsprrsStreamProcessorARN,
    dsprrsOutput,
    dsprrsName,
    dsprrsLastUpdateTimestamp,
    dsprrsSettings,
    dsprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStreamProcessor' smart constructor.
newtype DescribeStreamProcessor = DescribeStreamProcessor'
  { _dspName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStreamProcessor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspName' - Name of the stream processor for which you want information.
describeStreamProcessor ::
  -- | 'dspName'
  Text ->
  DescribeStreamProcessor
describeStreamProcessor pName_ =
  DescribeStreamProcessor' {_dspName = pName_}

-- | Name of the stream processor for which you want information.
dspName :: Lens' DescribeStreamProcessor Text
dspName = lens _dspName (\s a -> s {_dspName = a})

instance AWSRequest DescribeStreamProcessor where
  type
    Rs DescribeStreamProcessor =
      DescribeStreamProcessorResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          DescribeStreamProcessorResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "StatusMessage")
            <*> (x .?> "Status")
            <*> (x .?> "RoleArn")
            <*> (x .?> "Input")
            <*> (x .?> "StreamProcessorArn")
            <*> (x .?> "Output")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdateTimestamp")
            <*> (x .?> "Settings")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeStreamProcessor

instance NFData DescribeStreamProcessor

instance ToHeaders DescribeStreamProcessor where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.DescribeStreamProcessor" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeStreamProcessor where
  toJSON DescribeStreamProcessor' {..} =
    object (catMaybes [Just ("Name" .= _dspName)])

instance ToPath DescribeStreamProcessor where
  toPath = const "/"

instance ToQuery DescribeStreamProcessor where
  toQuery = const mempty

-- | /See:/ 'describeStreamProcessorResponse' smart constructor.
data DescribeStreamProcessorResponse = DescribeStreamProcessorResponse'
  { _dsprrsCreationTimestamp ::
      !( Maybe
           POSIX
       ),
    _dsprrsStatusMessage ::
      !( Maybe
           Text
       ),
    _dsprrsStatus ::
      !( Maybe
           StreamProcessorStatus
       ),
    _dsprrsRoleARN ::
      !( Maybe
           Text
       ),
    _dsprrsInput ::
      !( Maybe
           StreamProcessorInput
       ),
    _dsprrsStreamProcessorARN ::
      !( Maybe
           Text
       ),
    _dsprrsOutput ::
      !( Maybe
           StreamProcessorOutput
       ),
    _dsprrsName ::
      !( Maybe
           Text
       ),
    _dsprrsLastUpdateTimestamp ::
      !( Maybe
           POSIX
       ),
    _dsprrsSettings ::
      !( Maybe
           StreamProcessorSettings
       ),
    _dsprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStreamProcessorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsprrsCreationTimestamp' - Date and time the stream processor was created
--
-- * 'dsprrsStatusMessage' - Detailed status message about the stream processor.
--
-- * 'dsprrsStatus' - Current status of the stream processor.
--
-- * 'dsprrsRoleARN' - ARN of the IAM role that allows access to the stream processor.
--
-- * 'dsprrsInput' - Kinesis video stream that provides the source streaming video.
--
-- * 'dsprrsStreamProcessorARN' - ARN of the stream processor.
--
-- * 'dsprrsOutput' - Kinesis data stream to which Amazon Rekognition Video puts the analysis results.
--
-- * 'dsprrsName' - Name of the stream processor.
--
-- * 'dsprrsLastUpdateTimestamp' - The time, in Unix format, the stream processor was last updated. For example, when the stream processor moves from a running state to a failed state, or when the user starts or stops the stream processor.
--
-- * 'dsprrsSettings' - Face recognition input parameters that are being used by the stream processor. Includes the collection to use for face recognition and the face attributes to detect.
--
-- * 'dsprrsResponseStatus' - -- | The response status code.
describeStreamProcessorResponse ::
  -- | 'dsprrsResponseStatus'
  Int ->
  DescribeStreamProcessorResponse
describeStreamProcessorResponse pResponseStatus_ =
  DescribeStreamProcessorResponse'
    { _dsprrsCreationTimestamp =
        Nothing,
      _dsprrsStatusMessage = Nothing,
      _dsprrsStatus = Nothing,
      _dsprrsRoleARN = Nothing,
      _dsprrsInput = Nothing,
      _dsprrsStreamProcessorARN = Nothing,
      _dsprrsOutput = Nothing,
      _dsprrsName = Nothing,
      _dsprrsLastUpdateTimestamp = Nothing,
      _dsprrsSettings = Nothing,
      _dsprrsResponseStatus = pResponseStatus_
    }

-- | Date and time the stream processor was created
dsprrsCreationTimestamp :: Lens' DescribeStreamProcessorResponse (Maybe UTCTime)
dsprrsCreationTimestamp = lens _dsprrsCreationTimestamp (\s a -> s {_dsprrsCreationTimestamp = a}) . mapping _Time

-- | Detailed status message about the stream processor.
dsprrsStatusMessage :: Lens' DescribeStreamProcessorResponse (Maybe Text)
dsprrsStatusMessage = lens _dsprrsStatusMessage (\s a -> s {_dsprrsStatusMessage = a})

-- | Current status of the stream processor.
dsprrsStatus :: Lens' DescribeStreamProcessorResponse (Maybe StreamProcessorStatus)
dsprrsStatus = lens _dsprrsStatus (\s a -> s {_dsprrsStatus = a})

-- | ARN of the IAM role that allows access to the stream processor.
dsprrsRoleARN :: Lens' DescribeStreamProcessorResponse (Maybe Text)
dsprrsRoleARN = lens _dsprrsRoleARN (\s a -> s {_dsprrsRoleARN = a})

-- | Kinesis video stream that provides the source streaming video.
dsprrsInput :: Lens' DescribeStreamProcessorResponse (Maybe StreamProcessorInput)
dsprrsInput = lens _dsprrsInput (\s a -> s {_dsprrsInput = a})

-- | ARN of the stream processor.
dsprrsStreamProcessorARN :: Lens' DescribeStreamProcessorResponse (Maybe Text)
dsprrsStreamProcessorARN = lens _dsprrsStreamProcessorARN (\s a -> s {_dsprrsStreamProcessorARN = a})

-- | Kinesis data stream to which Amazon Rekognition Video puts the analysis results.
dsprrsOutput :: Lens' DescribeStreamProcessorResponse (Maybe StreamProcessorOutput)
dsprrsOutput = lens _dsprrsOutput (\s a -> s {_dsprrsOutput = a})

-- | Name of the stream processor.
dsprrsName :: Lens' DescribeStreamProcessorResponse (Maybe Text)
dsprrsName = lens _dsprrsName (\s a -> s {_dsprrsName = a})

-- | The time, in Unix format, the stream processor was last updated. For example, when the stream processor moves from a running state to a failed state, or when the user starts or stops the stream processor.
dsprrsLastUpdateTimestamp :: Lens' DescribeStreamProcessorResponse (Maybe UTCTime)
dsprrsLastUpdateTimestamp = lens _dsprrsLastUpdateTimestamp (\s a -> s {_dsprrsLastUpdateTimestamp = a}) . mapping _Time

-- | Face recognition input parameters that are being used by the stream processor. Includes the collection to use for face recognition and the face attributes to detect.
dsprrsSettings :: Lens' DescribeStreamProcessorResponse (Maybe StreamProcessorSettings)
dsprrsSettings = lens _dsprrsSettings (\s a -> s {_dsprrsSettings = a})

-- | -- | The response status code.
dsprrsResponseStatus :: Lens' DescribeStreamProcessorResponse Int
dsprrsResponseStatus = lens _dsprrsResponseStatus (\s a -> s {_dsprrsResponseStatus = a})

instance NFData DescribeStreamProcessorResponse
