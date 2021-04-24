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
-- Module      : Network.AWS.Comprehend.StartEventsDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an asynchronous event detection job for a collection of documents.
module Network.AWS.Comprehend.StartEventsDetectionJob
  ( -- * Creating a Request
    startEventsDetectionJob,
    StartEventsDetectionJob,

    -- * Request Lenses
    sedjClientRequestToken,
    sedjJobName,
    sedjInputDataConfig,
    sedjOutputDataConfig,
    sedjDataAccessRoleARN,
    sedjLanguageCode,
    sedjTargetEventTypes,

    -- * Destructuring the Response
    startEventsDetectionJobResponse,
    StartEventsDetectionJobResponse,

    -- * Response Lenses
    sedjrrsJobStatus,
    sedjrrsJobId,
    sedjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startEventsDetectionJob' smart constructor.
data StartEventsDetectionJob = StartEventsDetectionJob'
  { _sedjClientRequestToken ::
      !(Maybe Text),
    _sedjJobName ::
      !(Maybe Text),
    _sedjInputDataConfig ::
      !InputDataConfig,
    _sedjOutputDataConfig ::
      !OutputDataConfig,
    _sedjDataAccessRoleARN ::
      !Text,
    _sedjLanguageCode ::
      !LanguageCode,
    _sedjTargetEventTypes ::
      !(List1 Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartEventsDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sedjClientRequestToken' - An unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.
--
-- * 'sedjJobName' - The identifier of the events detection job.
--
-- * 'sedjInputDataConfig' - Specifies the format and location of the input data for the job.
--
-- * 'sedjOutputDataConfig' - Specifies where to send the output files.
--
-- * 'sedjDataAccessRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data.
--
-- * 'sedjLanguageCode' - The language code of the input documents.
--
-- * 'sedjTargetEventTypes' - The types of events to detect in the input documents.
startEventsDetectionJob ::
  -- | 'sedjInputDataConfig'
  InputDataConfig ->
  -- | 'sedjOutputDataConfig'
  OutputDataConfig ->
  -- | 'sedjDataAccessRoleARN'
  Text ->
  -- | 'sedjLanguageCode'
  LanguageCode ->
  -- | 'sedjTargetEventTypes'
  NonEmpty Text ->
  StartEventsDetectionJob
startEventsDetectionJob
  pInputDataConfig_
  pOutputDataConfig_
  pDataAccessRoleARN_
  pLanguageCode_
  pTargetEventTypes_ =
    StartEventsDetectionJob'
      { _sedjClientRequestToken =
          Nothing,
        _sedjJobName = Nothing,
        _sedjInputDataConfig = pInputDataConfig_,
        _sedjOutputDataConfig = pOutputDataConfig_,
        _sedjDataAccessRoleARN = pDataAccessRoleARN_,
        _sedjLanguageCode = pLanguageCode_,
        _sedjTargetEventTypes =
          _List1 # pTargetEventTypes_
      }

-- | An unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.
sedjClientRequestToken :: Lens' StartEventsDetectionJob (Maybe Text)
sedjClientRequestToken = lens _sedjClientRequestToken (\s a -> s {_sedjClientRequestToken = a})

-- | The identifier of the events detection job.
sedjJobName :: Lens' StartEventsDetectionJob (Maybe Text)
sedjJobName = lens _sedjJobName (\s a -> s {_sedjJobName = a})

-- | Specifies the format and location of the input data for the job.
sedjInputDataConfig :: Lens' StartEventsDetectionJob InputDataConfig
sedjInputDataConfig = lens _sedjInputDataConfig (\s a -> s {_sedjInputDataConfig = a})

-- | Specifies where to send the output files.
sedjOutputDataConfig :: Lens' StartEventsDetectionJob OutputDataConfig
sedjOutputDataConfig = lens _sedjOutputDataConfig (\s a -> s {_sedjOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data.
sedjDataAccessRoleARN :: Lens' StartEventsDetectionJob Text
sedjDataAccessRoleARN = lens _sedjDataAccessRoleARN (\s a -> s {_sedjDataAccessRoleARN = a})

-- | The language code of the input documents.
sedjLanguageCode :: Lens' StartEventsDetectionJob LanguageCode
sedjLanguageCode = lens _sedjLanguageCode (\s a -> s {_sedjLanguageCode = a})

-- | The types of events to detect in the input documents.
sedjTargetEventTypes :: Lens' StartEventsDetectionJob (NonEmpty Text)
sedjTargetEventTypes = lens _sedjTargetEventTypes (\s a -> s {_sedjTargetEventTypes = a}) . _List1

instance AWSRequest StartEventsDetectionJob where
  type
    Rs StartEventsDetectionJob =
      StartEventsDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          StartEventsDetectionJobResponse'
            <$> (x .?> "JobStatus")
            <*> (x .?> "JobId")
            <*> (pure (fromEnum s))
      )

instance Hashable StartEventsDetectionJob

instance NFData StartEventsDetectionJob

instance ToHeaders StartEventsDetectionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.StartEventsDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartEventsDetectionJob where
  toJSON StartEventsDetectionJob' {..} =
    object
      ( catMaybes
          [ ("ClientRequestToken" .=)
              <$> _sedjClientRequestToken,
            ("JobName" .=) <$> _sedjJobName,
            Just ("InputDataConfig" .= _sedjInputDataConfig),
            Just ("OutputDataConfig" .= _sedjOutputDataConfig),
            Just ("DataAccessRoleArn" .= _sedjDataAccessRoleARN),
            Just ("LanguageCode" .= _sedjLanguageCode),
            Just ("TargetEventTypes" .= _sedjTargetEventTypes)
          ]
      )

instance ToPath StartEventsDetectionJob where
  toPath = const "/"

instance ToQuery StartEventsDetectionJob where
  toQuery = const mempty

-- | /See:/ 'startEventsDetectionJobResponse' smart constructor.
data StartEventsDetectionJobResponse = StartEventsDetectionJobResponse'
  { _sedjrrsJobStatus ::
      !( Maybe
           JobStatus
       ),
    _sedjrrsJobId ::
      !( Maybe
           Text
       ),
    _sedjrrsResponseStatus ::
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

-- | Creates a value of 'StartEventsDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sedjrrsJobStatus' - The status of the events detection job.
--
-- * 'sedjrrsJobId' - An unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.
--
-- * 'sedjrrsResponseStatus' - -- | The response status code.
startEventsDetectionJobResponse ::
  -- | 'sedjrrsResponseStatus'
  Int ->
  StartEventsDetectionJobResponse
startEventsDetectionJobResponse pResponseStatus_ =
  StartEventsDetectionJobResponse'
    { _sedjrrsJobStatus =
        Nothing,
      _sedjrrsJobId = Nothing,
      _sedjrrsResponseStatus = pResponseStatus_
    }

-- | The status of the events detection job.
sedjrrsJobStatus :: Lens' StartEventsDetectionJobResponse (Maybe JobStatus)
sedjrrsJobStatus = lens _sedjrrsJobStatus (\s a -> s {_sedjrrsJobStatus = a})

-- | An unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.
sedjrrsJobId :: Lens' StartEventsDetectionJobResponse (Maybe Text)
sedjrrsJobId = lens _sedjrrsJobId (\s a -> s {_sedjrrsJobId = a})

-- | -- | The response status code.
sedjrrsResponseStatus :: Lens' StartEventsDetectionJobResponse Int
sedjrrsResponseStatus = lens _sedjrrsResponseStatus (\s a -> s {_sedjrrsResponseStatus = a})

instance NFData StartEventsDetectionJobResponse
