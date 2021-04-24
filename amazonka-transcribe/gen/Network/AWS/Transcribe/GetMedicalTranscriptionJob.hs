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
-- Module      : Network.AWS.Transcribe.GetMedicalTranscriptionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a transcription job from Amazon Transcribe Medical. To see the status of the job, check the @TranscriptionJobStatus@ field. If the status is @COMPLETED@ , the job is finished. You find the results of the completed job in the @TranscriptFileUri@ field.
module Network.AWS.Transcribe.GetMedicalTranscriptionJob
  ( -- * Creating a Request
    getMedicalTranscriptionJob,
    GetMedicalTranscriptionJob,

    -- * Request Lenses
    gmtjMedicalTranscriptionJobName,

    -- * Destructuring the Response
    getMedicalTranscriptionJobResponse,
    GetMedicalTranscriptionJobResponse,

    -- * Response Lenses
    gmtjrrsMedicalTranscriptionJob,
    gmtjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'getMedicalTranscriptionJob' smart constructor.
newtype GetMedicalTranscriptionJob = GetMedicalTranscriptionJob'
  { _gmtjMedicalTranscriptionJobName ::
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

-- | Creates a value of 'GetMedicalTranscriptionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmtjMedicalTranscriptionJobName' - The name of the medical transcription job.
getMedicalTranscriptionJob ::
  -- | 'gmtjMedicalTranscriptionJobName'
  Text ->
  GetMedicalTranscriptionJob
getMedicalTranscriptionJob
  pMedicalTranscriptionJobName_ =
    GetMedicalTranscriptionJob'
      { _gmtjMedicalTranscriptionJobName =
          pMedicalTranscriptionJobName_
      }

-- | The name of the medical transcription job.
gmtjMedicalTranscriptionJobName :: Lens' GetMedicalTranscriptionJob Text
gmtjMedicalTranscriptionJobName = lens _gmtjMedicalTranscriptionJobName (\s a -> s {_gmtjMedicalTranscriptionJobName = a})

instance AWSRequest GetMedicalTranscriptionJob where
  type
    Rs GetMedicalTranscriptionJob =
      GetMedicalTranscriptionJobResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          GetMedicalTranscriptionJobResponse'
            <$> (x .?> "MedicalTranscriptionJob")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMedicalTranscriptionJob

instance NFData GetMedicalTranscriptionJob

instance ToHeaders GetMedicalTranscriptionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Transcribe.GetMedicalTranscriptionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMedicalTranscriptionJob where
  toJSON GetMedicalTranscriptionJob' {..} =
    object
      ( catMaybes
          [ Just
              ( "MedicalTranscriptionJobName"
                  .= _gmtjMedicalTranscriptionJobName
              )
          ]
      )

instance ToPath GetMedicalTranscriptionJob where
  toPath = const "/"

instance ToQuery GetMedicalTranscriptionJob where
  toQuery = const mempty

-- | /See:/ 'getMedicalTranscriptionJobResponse' smart constructor.
data GetMedicalTranscriptionJobResponse = GetMedicalTranscriptionJobResponse'
  { _gmtjrrsMedicalTranscriptionJob ::
      !( Maybe
           MedicalTranscriptionJob
       ),
    _gmtjrrsResponseStatus ::
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

-- | Creates a value of 'GetMedicalTranscriptionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmtjrrsMedicalTranscriptionJob' - An object that contains the results of the medical transcription job.
--
-- * 'gmtjrrsResponseStatus' - -- | The response status code.
getMedicalTranscriptionJobResponse ::
  -- | 'gmtjrrsResponseStatus'
  Int ->
  GetMedicalTranscriptionJobResponse
getMedicalTranscriptionJobResponse pResponseStatus_ =
  GetMedicalTranscriptionJobResponse'
    { _gmtjrrsMedicalTranscriptionJob =
        Nothing,
      _gmtjrrsResponseStatus =
        pResponseStatus_
    }

-- | An object that contains the results of the medical transcription job.
gmtjrrsMedicalTranscriptionJob :: Lens' GetMedicalTranscriptionJobResponse (Maybe MedicalTranscriptionJob)
gmtjrrsMedicalTranscriptionJob = lens _gmtjrrsMedicalTranscriptionJob (\s a -> s {_gmtjrrsMedicalTranscriptionJob = a})

-- | -- | The response status code.
gmtjrrsResponseStatus :: Lens' GetMedicalTranscriptionJobResponse Int
gmtjrrsResponseStatus = lens _gmtjrrsResponseStatus (\s a -> s {_gmtjrrsResponseStatus = a})

instance NFData GetMedicalTranscriptionJobResponse
