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
-- Module      : Network.AWS.MediaConvert.CancelJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently cancel a job. Once you have canceled a job, you can't start it again.
module Network.AWS.MediaConvert.CancelJob
  ( -- * Creating a Request
    cancelJob,
    CancelJob,

    -- * Request Lenses
    cjId,

    -- * Destructuring the Response
    cancelJobResponse,
    CancelJobResponse,

    -- * Response Lenses
    cjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cancelJob' smart constructor.
newtype CancelJob = CancelJob' {_cjId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjId' - The Job ID of the job to be cancelled.
cancelJob ::
  -- | 'cjId'
  Text ->
  CancelJob
cancelJob pId_ = CancelJob' {_cjId = pId_}

-- | The Job ID of the job to be cancelled.
cjId :: Lens' CancelJob Text
cjId = lens _cjId (\s a -> s {_cjId = a})

instance AWSRequest CancelJob where
  type Rs CancelJob = CancelJobResponse
  request = delete mediaConvert
  response =
    receiveEmpty
      ( \s h x ->
          CancelJobResponse' <$> (pure (fromEnum s))
      )

instance Hashable CancelJob

instance NFData CancelJob

instance ToHeaders CancelJob where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath CancelJob where
  toPath CancelJob' {..} =
    mconcat ["/2017-08-29/jobs/", toBS _cjId]

instance ToQuery CancelJob where
  toQuery = const mempty

-- | /See:/ 'cancelJobResponse' smart constructor.
newtype CancelJobResponse = CancelJobResponse'
  { _cjrrsResponseStatus ::
      Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjrrsResponseStatus' - -- | The response status code.
cancelJobResponse ::
  -- | 'cjrrsResponseStatus'
  Int ->
  CancelJobResponse
cancelJobResponse pResponseStatus_ =
  CancelJobResponse'
    { _cjrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
cjrrsResponseStatus :: Lens' CancelJobResponse Int
cjrrsResponseStatus = lens _cjrrsResponseStatus (\s a -> s {_cjrrsResponseStatus = a})

instance NFData CancelJobResponse
