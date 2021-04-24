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
-- Module      : Network.AWS.SageMaker.StopEdgePackagingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request to stop an edge packaging job.
module Network.AWS.SageMaker.StopEdgePackagingJob
  ( -- * Creating a Request
    stopEdgePackagingJob,
    StopEdgePackagingJob,

    -- * Request Lenses
    sepjEdgePackagingJobName,

    -- * Destructuring the Response
    stopEdgePackagingJobResponse,
    StopEdgePackagingJobResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'stopEdgePackagingJob' smart constructor.
newtype StopEdgePackagingJob = StopEdgePackagingJob'
  { _sepjEdgePackagingJobName ::
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

-- | Creates a value of 'StopEdgePackagingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sepjEdgePackagingJobName' - The name of the edge packaging job.
stopEdgePackagingJob ::
  -- | 'sepjEdgePackagingJobName'
  Text ->
  StopEdgePackagingJob
stopEdgePackagingJob pEdgePackagingJobName_ =
  StopEdgePackagingJob'
    { _sepjEdgePackagingJobName =
        pEdgePackagingJobName_
    }

-- | The name of the edge packaging job.
sepjEdgePackagingJobName :: Lens' StopEdgePackagingJob Text
sepjEdgePackagingJobName = lens _sepjEdgePackagingJobName (\s a -> s {_sepjEdgePackagingJobName = a})

instance AWSRequest StopEdgePackagingJob where
  type
    Rs StopEdgePackagingJob =
      StopEdgePackagingJobResponse
  request = postJSON sageMaker
  response = receiveNull StopEdgePackagingJobResponse'

instance Hashable StopEdgePackagingJob

instance NFData StopEdgePackagingJob

instance ToHeaders StopEdgePackagingJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.StopEdgePackagingJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopEdgePackagingJob where
  toJSON StopEdgePackagingJob' {..} =
    object
      ( catMaybes
          [ Just
              ( "EdgePackagingJobName"
                  .= _sepjEdgePackagingJobName
              )
          ]
      )

instance ToPath StopEdgePackagingJob where
  toPath = const "/"

instance ToQuery StopEdgePackagingJob where
  toQuery = const mempty

-- | /See:/ 'stopEdgePackagingJobResponse' smart constructor.
data StopEdgePackagingJobResponse = StopEdgePackagingJobResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StopEdgePackagingJobResponse' with the minimum fields required to make a request.
stopEdgePackagingJobResponse ::
  StopEdgePackagingJobResponse
stopEdgePackagingJobResponse =
  StopEdgePackagingJobResponse'

instance NFData StopEdgePackagingJobResponse
