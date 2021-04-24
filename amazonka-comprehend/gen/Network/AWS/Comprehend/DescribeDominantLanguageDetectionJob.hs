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
-- Module      : Network.AWS.Comprehend.DescribeDominantLanguageDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the properties associated with a dominant language detection job. Use this operation to get the status of a detection job.
module Network.AWS.Comprehend.DescribeDominantLanguageDetectionJob
  ( -- * Creating a Request
    describeDominantLanguageDetectionJob,
    DescribeDominantLanguageDetectionJob,

    -- * Request Lenses
    ddldjJobId,

    -- * Destructuring the Response
    describeDominantLanguageDetectionJobResponse,
    DescribeDominantLanguageDetectionJobResponse,

    -- * Response Lenses
    ddldjrrsDominantLanguageDetectionJobProperties,
    ddldjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDominantLanguageDetectionJob' smart constructor.
newtype DescribeDominantLanguageDetectionJob = DescribeDominantLanguageDetectionJob'
  { _ddldjJobId ::
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

-- | Creates a value of 'DescribeDominantLanguageDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddldjJobId' - The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
describeDominantLanguageDetectionJob ::
  -- | 'ddldjJobId'
  Text ->
  DescribeDominantLanguageDetectionJob
describeDominantLanguageDetectionJob pJobId_ =
  DescribeDominantLanguageDetectionJob'
    { _ddldjJobId =
        pJobId_
    }

-- | The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
ddldjJobId :: Lens' DescribeDominantLanguageDetectionJob Text
ddldjJobId = lens _ddldjJobId (\s a -> s {_ddldjJobId = a})

instance
  AWSRequest
    DescribeDominantLanguageDetectionJob
  where
  type
    Rs DescribeDominantLanguageDetectionJob =
      DescribeDominantLanguageDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DescribeDominantLanguageDetectionJobResponse'
            <$> (x .?> "DominantLanguageDetectionJobProperties")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeDominantLanguageDetectionJob

instance NFData DescribeDominantLanguageDetectionJob

instance
  ToHeaders
    DescribeDominantLanguageDetectionJob
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DescribeDominantLanguageDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDominantLanguageDetectionJob where
  toJSON DescribeDominantLanguageDetectionJob' {..} =
    object (catMaybes [Just ("JobId" .= _ddldjJobId)])

instance ToPath DescribeDominantLanguageDetectionJob where
  toPath = const "/"

instance ToQuery DescribeDominantLanguageDetectionJob where
  toQuery = const mempty

-- | /See:/ 'describeDominantLanguageDetectionJobResponse' smart constructor.
data DescribeDominantLanguageDetectionJobResponse = DescribeDominantLanguageDetectionJobResponse'
  { _ddldjrrsDominantLanguageDetectionJobProperties ::
      !( Maybe
           DominantLanguageDetectionJobProperties
       ),
    _ddldjrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDominantLanguageDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddldjrrsDominantLanguageDetectionJobProperties' - An object that contains the properties associated with a dominant language detection job.
--
-- * 'ddldjrrsResponseStatus' - -- | The response status code.
describeDominantLanguageDetectionJobResponse ::
  -- | 'ddldjrrsResponseStatus'
  Int ->
  DescribeDominantLanguageDetectionJobResponse
describeDominantLanguageDetectionJobResponse
  pResponseStatus_ =
    DescribeDominantLanguageDetectionJobResponse'
      { _ddldjrrsDominantLanguageDetectionJobProperties =
          Nothing,
        _ddldjrrsResponseStatus =
          pResponseStatus_
      }

-- | An object that contains the properties associated with a dominant language detection job.
ddldjrrsDominantLanguageDetectionJobProperties :: Lens' DescribeDominantLanguageDetectionJobResponse (Maybe DominantLanguageDetectionJobProperties)
ddldjrrsDominantLanguageDetectionJobProperties = lens _ddldjrrsDominantLanguageDetectionJobProperties (\s a -> s {_ddldjrrsDominantLanguageDetectionJobProperties = a})

-- | -- | The response status code.
ddldjrrsResponseStatus :: Lens' DescribeDominantLanguageDetectionJobResponse Int
ddldjrrsResponseStatus = lens _ddldjrrsResponseStatus (\s a -> s {_ddldjrrsResponseStatus = a})

instance
  NFData
    DescribeDominantLanguageDetectionJobResponse
