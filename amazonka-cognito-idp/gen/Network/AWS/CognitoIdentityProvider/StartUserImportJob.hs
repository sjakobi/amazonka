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
-- Module      : Network.AWS.CognitoIdentityProvider.StartUserImportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the user import.
module Network.AWS.CognitoIdentityProvider.StartUserImportJob
  ( -- * Creating a Request
    startUserImportJob,
    StartUserImportJob,

    -- * Request Lenses
    sUserPoolId,
    sJobId,

    -- * Destructuring the Response
    startUserImportJobResponse,
    StartUserImportJobResponse,

    -- * Response Lenses
    srsUserImportJob,
    srsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to start the user import job.
--
--
--
-- /See:/ 'startUserImportJob' smart constructor.
data StartUserImportJob = StartUserImportJob'
  { _sUserPoolId ::
      !Text,
    _sJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartUserImportJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sUserPoolId' - The user pool ID for the user pool that the users are being imported into.
--
-- * 'sJobId' - The job ID for the user import job.
startUserImportJob ::
  -- | 'sUserPoolId'
  Text ->
  -- | 'sJobId'
  Text ->
  StartUserImportJob
startUserImportJob pUserPoolId_ pJobId_ =
  StartUserImportJob'
    { _sUserPoolId = pUserPoolId_,
      _sJobId = pJobId_
    }

-- | The user pool ID for the user pool that the users are being imported into.
sUserPoolId :: Lens' StartUserImportJob Text
sUserPoolId = lens _sUserPoolId (\s a -> s {_sUserPoolId = a})

-- | The job ID for the user import job.
sJobId :: Lens' StartUserImportJob Text
sJobId = lens _sJobId (\s a -> s {_sJobId = a})

instance AWSRequest StartUserImportJob where
  type
    Rs StartUserImportJob =
      StartUserImportJobResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          StartUserImportJobResponse'
            <$> (x .?> "UserImportJob") <*> (pure (fromEnum s))
      )

instance Hashable StartUserImportJob

instance NFData StartUserImportJob

instance ToHeaders StartUserImportJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.StartUserImportJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartUserImportJob where
  toJSON StartUserImportJob' {..} =
    object
      ( catMaybes
          [ Just ("UserPoolId" .= _sUserPoolId),
            Just ("JobId" .= _sJobId)
          ]
      )

instance ToPath StartUserImportJob where
  toPath = const "/"

instance ToQuery StartUserImportJob where
  toQuery = const mempty

-- | Represents the response from the server to the request to start the user import job.
--
--
--
-- /See:/ 'startUserImportJobResponse' smart constructor.
data StartUserImportJobResponse = StartUserImportJobResponse'
  { _srsUserImportJob ::
      !( Maybe
           UserImportJobType
       ),
    _srsResponseStatus ::
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

-- | Creates a value of 'StartUserImportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsUserImportJob' - The job object that represents the user import job.
--
-- * 'srsResponseStatus' - -- | The response status code.
startUserImportJobResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StartUserImportJobResponse
startUserImportJobResponse pResponseStatus_ =
  StartUserImportJobResponse'
    { _srsUserImportJob =
        Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | The job object that represents the user import job.
srsUserImportJob :: Lens' StartUserImportJobResponse (Maybe UserImportJobType)
srsUserImportJob = lens _srsUserImportJob (\s a -> s {_srsUserImportJob = a})

-- | -- | The response status code.
srsResponseStatus :: Lens' StartUserImportJobResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StartUserImportJobResponse
