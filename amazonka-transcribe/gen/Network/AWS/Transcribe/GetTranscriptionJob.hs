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
-- Module      : Network.AWS.Transcribe.GetTranscriptionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a transcription job. To see the status of the job, check the @TranscriptionJobStatus@ field. If the status is @COMPLETED@ , the job is finished and you can find the results at the location specified in the @TranscriptFileUri@ field. If you enable content redaction, the redacted transcript appears in @RedactedTranscriptFileUri@ .
module Network.AWS.Transcribe.GetTranscriptionJob
  ( -- * Creating a Request
    getTranscriptionJob,
    GetTranscriptionJob,

    -- * Request Lenses
    gtjTranscriptionJobName,

    -- * Destructuring the Response
    getTranscriptionJobResponse,
    GetTranscriptionJobResponse,

    -- * Response Lenses
    gtjrrsTranscriptionJob,
    gtjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'getTranscriptionJob' smart constructor.
newtype GetTranscriptionJob = GetTranscriptionJob'
  { _gtjTranscriptionJobName ::
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

-- | Creates a value of 'GetTranscriptionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtjTranscriptionJobName' - The name of the job.
getTranscriptionJob ::
  -- | 'gtjTranscriptionJobName'
  Text ->
  GetTranscriptionJob
getTranscriptionJob pTranscriptionJobName_ =
  GetTranscriptionJob'
    { _gtjTranscriptionJobName =
        pTranscriptionJobName_
    }

-- | The name of the job.
gtjTranscriptionJobName :: Lens' GetTranscriptionJob Text
gtjTranscriptionJobName = lens _gtjTranscriptionJobName (\s a -> s {_gtjTranscriptionJobName = a})

instance AWSRequest GetTranscriptionJob where
  type
    Rs GetTranscriptionJob =
      GetTranscriptionJobResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          GetTranscriptionJobResponse'
            <$> (x .?> "TranscriptionJob") <*> (pure (fromEnum s))
      )

instance Hashable GetTranscriptionJob

instance NFData GetTranscriptionJob

instance ToHeaders GetTranscriptionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.GetTranscriptionJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTranscriptionJob where
  toJSON GetTranscriptionJob' {..} =
    object
      ( catMaybes
          [ Just
              ( "TranscriptionJobName"
                  .= _gtjTranscriptionJobName
              )
          ]
      )

instance ToPath GetTranscriptionJob where
  toPath = const "/"

instance ToQuery GetTranscriptionJob where
  toQuery = const mempty

-- | /See:/ 'getTranscriptionJobResponse' smart constructor.
data GetTranscriptionJobResponse = GetTranscriptionJobResponse'
  { _gtjrrsTranscriptionJob ::
      !( Maybe
           TranscriptionJob
       ),
    _gtjrrsResponseStatus ::
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

-- | Creates a value of 'GetTranscriptionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtjrrsTranscriptionJob' - An object that contains the results of the transcription job.
--
-- * 'gtjrrsResponseStatus' - -- | The response status code.
getTranscriptionJobResponse ::
  -- | 'gtjrrsResponseStatus'
  Int ->
  GetTranscriptionJobResponse
getTranscriptionJobResponse pResponseStatus_ =
  GetTranscriptionJobResponse'
    { _gtjrrsTranscriptionJob =
        Nothing,
      _gtjrrsResponseStatus = pResponseStatus_
    }

-- | An object that contains the results of the transcription job.
gtjrrsTranscriptionJob :: Lens' GetTranscriptionJobResponse (Maybe TranscriptionJob)
gtjrrsTranscriptionJob = lens _gtjrrsTranscriptionJob (\s a -> s {_gtjrrsTranscriptionJob = a})

-- | -- | The response status code.
gtjrrsResponseStatus :: Lens' GetTranscriptionJobResponse Int
gtjrrsResponseStatus = lens _gtjrrsResponseStatus (\s a -> s {_gtjrrsResponseStatus = a})

instance NFData GetTranscriptionJobResponse
