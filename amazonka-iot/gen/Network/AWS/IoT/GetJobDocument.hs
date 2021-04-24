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
-- Module      : Network.AWS.IoT.GetJobDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a job document.
module Network.AWS.IoT.GetJobDocument
  ( -- * Creating a Request
    getJobDocument,
    GetJobDocument,

    -- * Request Lenses
    gjdJobId,

    -- * Destructuring the Response
    getJobDocumentResponse,
    GetJobDocumentResponse,

    -- * Response Lenses
    gjdrrsDocument,
    gjdrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getJobDocument' smart constructor.
newtype GetJobDocument = GetJobDocument'
  { _gjdJobId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJobDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjdJobId' - The unique identifier you assigned to this job when it was created.
getJobDocument ::
  -- | 'gjdJobId'
  Text ->
  GetJobDocument
getJobDocument pJobId_ =
  GetJobDocument' {_gjdJobId = pJobId_}

-- | The unique identifier you assigned to this job when it was created.
gjdJobId :: Lens' GetJobDocument Text
gjdJobId = lens _gjdJobId (\s a -> s {_gjdJobId = a})

instance AWSRequest GetJobDocument where
  type Rs GetJobDocument = GetJobDocumentResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          GetJobDocumentResponse'
            <$> (x .?> "document") <*> (pure (fromEnum s))
      )

instance Hashable GetJobDocument

instance NFData GetJobDocument

instance ToHeaders GetJobDocument where
  toHeaders = const mempty

instance ToPath GetJobDocument where
  toPath GetJobDocument' {..} =
    mconcat ["/jobs/", toBS _gjdJobId, "/job-document"]

instance ToQuery GetJobDocument where
  toQuery = const mempty

-- | /See:/ 'getJobDocumentResponse' smart constructor.
data GetJobDocumentResponse = GetJobDocumentResponse'
  { _gjdrrsDocument ::
      !(Maybe Text),
    _gjdrrsResponseStatus ::
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

-- | Creates a value of 'GetJobDocumentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjdrrsDocument' - The job document content.
--
-- * 'gjdrrsResponseStatus' - -- | The response status code.
getJobDocumentResponse ::
  -- | 'gjdrrsResponseStatus'
  Int ->
  GetJobDocumentResponse
getJobDocumentResponse pResponseStatus_ =
  GetJobDocumentResponse'
    { _gjdrrsDocument = Nothing,
      _gjdrrsResponseStatus = pResponseStatus_
    }

-- | The job document content.
gjdrrsDocument :: Lens' GetJobDocumentResponse (Maybe Text)
gjdrrsDocument = lens _gjdrrsDocument (\s a -> s {_gjdrrsDocument = a})

-- | -- | The response status code.
gjdrrsResponseStatus :: Lens' GetJobDocumentResponse Int
gjdrrsResponseStatus = lens _gjdrrsResponseStatus (\s a -> s {_gjdrrsResponseStatus = a})

instance NFData GetJobDocumentResponse
