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
-- Module      : Network.AWS.ImportExport.CancelJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation cancels a specified job. Only the job owner can cancel it. The operation fails if the job has already started or is complete.
module Network.AWS.ImportExport.CancelJob
  ( -- * Creating a Request
    cancelJob,
    CancelJob,

    -- * Request Lenses
    cjAPIVersion,
    cjJobId,

    -- * Destructuring the Response
    cancelJobResponse,
    CancelJobResponse,

    -- * Response Lenses
    cjrrsSuccess,
    cjrrsResponseStatus,
  )
where

import Network.AWS.ImportExport.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input structure for the CancelJob operation.
--
-- /See:/ 'cancelJob' smart constructor.
data CancelJob = CancelJob'
  { _cjAPIVersion ::
      !(Maybe Text),
    _cjJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjAPIVersion' - Undocumented member.
--
-- * 'cjJobId' - Undocumented member.
cancelJob ::
  -- | 'cjJobId'
  Text ->
  CancelJob
cancelJob pJobId_ =
  CancelJob'
    { _cjAPIVersion = Nothing,
      _cjJobId = pJobId_
    }

-- | Undocumented member.
cjAPIVersion :: Lens' CancelJob (Maybe Text)
cjAPIVersion = lens _cjAPIVersion (\s a -> s {_cjAPIVersion = a})

-- | Undocumented member.
cjJobId :: Lens' CancelJob Text
cjJobId = lens _cjJobId (\s a -> s {_cjJobId = a})

instance AWSRequest CancelJob where
  type Rs CancelJob = CancelJobResponse
  request = postQuery importExport
  response =
    receiveXMLWrapper
      "CancelJobResult"
      ( \s h x ->
          CancelJobResponse'
            <$> (x .@? "Success") <*> (pure (fromEnum s))
      )

instance Hashable CancelJob

instance NFData CancelJob

instance ToHeaders CancelJob where
  toHeaders = const mempty

instance ToPath CancelJob where
  toPath = const "/"

instance ToQuery CancelJob where
  toQuery CancelJob' {..} =
    mconcat
      [ "Operation=CancelJob",
        "Action" =: ("CancelJob" :: ByteString),
        "Version" =: ("2010-06-01" :: ByteString),
        "APIVersion" =: _cjAPIVersion,
        "JobId" =: _cjJobId
      ]

-- | Output structure for the CancelJob operation.
--
-- /See:/ 'cancelJobResponse' smart constructor.
data CancelJobResponse = CancelJobResponse'
  { _cjrrsSuccess ::
      !(Maybe Bool),
    _cjrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjrrsSuccess' - Undocumented member.
--
-- * 'cjrrsResponseStatus' - -- | The response status code.
cancelJobResponse ::
  -- | 'cjrrsResponseStatus'
  Int ->
  CancelJobResponse
cancelJobResponse pResponseStatus_ =
  CancelJobResponse'
    { _cjrrsSuccess = Nothing,
      _cjrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cjrrsSuccess :: Lens' CancelJobResponse (Maybe Bool)
cjrrsSuccess = lens _cjrrsSuccess (\s a -> s {_cjrrsSuccess = a})

-- | -- | The response status code.
cjrrsResponseStatus :: Lens' CancelJobResponse Int
cjrrsResponseStatus = lens _cjrrsResponseStatus (\s a -> s {_cjrrsResponseStatus = a})

instance NFData CancelJobResponse
