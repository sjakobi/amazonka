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
-- Module      : Network.AWS.Comprehend.DescribePiiEntitiesDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the properties associated with a PII entities detection job. For example, you can use this operation to get the job status.
module Network.AWS.Comprehend.DescribePiiEntitiesDetectionJob
  ( -- * Creating a Request
    describePiiEntitiesDetectionJob,
    DescribePiiEntitiesDetectionJob,

    -- * Request Lenses
    dpedjJobId,

    -- * Destructuring the Response
    describePiiEntitiesDetectionJobResponse,
    DescribePiiEntitiesDetectionJobResponse,

    -- * Response Lenses
    dpedjrrsPiiEntitiesDetectionJobProperties,
    dpedjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePiiEntitiesDetectionJob' smart constructor.
newtype DescribePiiEntitiesDetectionJob = DescribePiiEntitiesDetectionJob'
  { _dpedjJobId ::
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

-- | Creates a value of 'DescribePiiEntitiesDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpedjJobId' - The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
describePiiEntitiesDetectionJob ::
  -- | 'dpedjJobId'
  Text ->
  DescribePiiEntitiesDetectionJob
describePiiEntitiesDetectionJob pJobId_ =
  DescribePiiEntitiesDetectionJob'
    { _dpedjJobId =
        pJobId_
    }

-- | The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
dpedjJobId :: Lens' DescribePiiEntitiesDetectionJob Text
dpedjJobId = lens _dpedjJobId (\s a -> s {_dpedjJobId = a})

instance AWSRequest DescribePiiEntitiesDetectionJob where
  type
    Rs DescribePiiEntitiesDetectionJob =
      DescribePiiEntitiesDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DescribePiiEntitiesDetectionJobResponse'
            <$> (x .?> "PiiEntitiesDetectionJobProperties")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePiiEntitiesDetectionJob

instance NFData DescribePiiEntitiesDetectionJob

instance ToHeaders DescribePiiEntitiesDetectionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DescribePiiEntitiesDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePiiEntitiesDetectionJob where
  toJSON DescribePiiEntitiesDetectionJob' {..} =
    object (catMaybes [Just ("JobId" .= _dpedjJobId)])

instance ToPath DescribePiiEntitiesDetectionJob where
  toPath = const "/"

instance ToQuery DescribePiiEntitiesDetectionJob where
  toQuery = const mempty

-- | /See:/ 'describePiiEntitiesDetectionJobResponse' smart constructor.
data DescribePiiEntitiesDetectionJobResponse = DescribePiiEntitiesDetectionJobResponse'
  { _dpedjrrsPiiEntitiesDetectionJobProperties ::
      !( Maybe
           PiiEntitiesDetectionJobProperties
       ),
    _dpedjrrsResponseStatus ::
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

-- | Creates a value of 'DescribePiiEntitiesDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpedjrrsPiiEntitiesDetectionJobProperties' - Undocumented member.
--
-- * 'dpedjrrsResponseStatus' - -- | The response status code.
describePiiEntitiesDetectionJobResponse ::
  -- | 'dpedjrrsResponseStatus'
  Int ->
  DescribePiiEntitiesDetectionJobResponse
describePiiEntitiesDetectionJobResponse
  pResponseStatus_ =
    DescribePiiEntitiesDetectionJobResponse'
      { _dpedjrrsPiiEntitiesDetectionJobProperties =
          Nothing,
        _dpedjrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
dpedjrrsPiiEntitiesDetectionJobProperties :: Lens' DescribePiiEntitiesDetectionJobResponse (Maybe PiiEntitiesDetectionJobProperties)
dpedjrrsPiiEntitiesDetectionJobProperties = lens _dpedjrrsPiiEntitiesDetectionJobProperties (\s a -> s {_dpedjrrsPiiEntitiesDetectionJobProperties = a})

-- | -- | The response status code.
dpedjrrsResponseStatus :: Lens' DescribePiiEntitiesDetectionJobResponse Int
dpedjrrsResponseStatus = lens _dpedjrrsResponseStatus (\s a -> s {_dpedjrrsResponseStatus = a})

instance
  NFData
    DescribePiiEntitiesDetectionJobResponse
