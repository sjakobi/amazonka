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
-- Module      : Network.AWS.CognitoIdentityProvider.StopUserImportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the user import job.
module Network.AWS.CognitoIdentityProvider.StopUserImportJob
  ( -- * Creating a Request
    stopUserImportJob,
    StopUserImportJob,

    -- * Request Lenses
    suijUserPoolId,
    suijJobId,

    -- * Destructuring the Response
    stopUserImportJobResponse,
    StopUserImportJobResponse,

    -- * Response Lenses
    suijrrsUserImportJob,
    suijrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to stop the user import job.
--
--
--
-- /See:/ 'stopUserImportJob' smart constructor.
data StopUserImportJob = StopUserImportJob'
  { _suijUserPoolId ::
      !Text,
    _suijJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopUserImportJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suijUserPoolId' - The user pool ID for the user pool that the users are being imported into.
--
-- * 'suijJobId' - The job ID for the user import job.
stopUserImportJob ::
  -- | 'suijUserPoolId'
  Text ->
  -- | 'suijJobId'
  Text ->
  StopUserImportJob
stopUserImportJob pUserPoolId_ pJobId_ =
  StopUserImportJob'
    { _suijUserPoolId = pUserPoolId_,
      _suijJobId = pJobId_
    }

-- | The user pool ID for the user pool that the users are being imported into.
suijUserPoolId :: Lens' StopUserImportJob Text
suijUserPoolId = lens _suijUserPoolId (\s a -> s {_suijUserPoolId = a})

-- | The job ID for the user import job.
suijJobId :: Lens' StopUserImportJob Text
suijJobId = lens _suijJobId (\s a -> s {_suijJobId = a})

instance AWSRequest StopUserImportJob where
  type Rs StopUserImportJob = StopUserImportJobResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          StopUserImportJobResponse'
            <$> (x .?> "UserImportJob") <*> (pure (fromEnum s))
      )

instance Hashable StopUserImportJob

instance NFData StopUserImportJob

instance ToHeaders StopUserImportJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.StopUserImportJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopUserImportJob where
  toJSON StopUserImportJob' {..} =
    object
      ( catMaybes
          [ Just ("UserPoolId" .= _suijUserPoolId),
            Just ("JobId" .= _suijJobId)
          ]
      )

instance ToPath StopUserImportJob where
  toPath = const "/"

instance ToQuery StopUserImportJob where
  toQuery = const mempty

-- | Represents the response from the server to the request to stop the user import job.
--
--
--
-- /See:/ 'stopUserImportJobResponse' smart constructor.
data StopUserImportJobResponse = StopUserImportJobResponse'
  { _suijrrsUserImportJob ::
      !( Maybe
           UserImportJobType
       ),
    _suijrrsResponseStatus ::
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

-- | Creates a value of 'StopUserImportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suijrrsUserImportJob' - The job object that represents the user import job.
--
-- * 'suijrrsResponseStatus' - -- | The response status code.
stopUserImportJobResponse ::
  -- | 'suijrrsResponseStatus'
  Int ->
  StopUserImportJobResponse
stopUserImportJobResponse pResponseStatus_ =
  StopUserImportJobResponse'
    { _suijrrsUserImportJob =
        Nothing,
      _suijrrsResponseStatus = pResponseStatus_
    }

-- | The job object that represents the user import job.
suijrrsUserImportJob :: Lens' StopUserImportJobResponse (Maybe UserImportJobType)
suijrrsUserImportJob = lens _suijrrsUserImportJob (\s a -> s {_suijrrsUserImportJob = a})

-- | -- | The response status code.
suijrrsResponseStatus :: Lens' StopUserImportJobResponse Int
suijrrsResponseStatus = lens _suijrrsResponseStatus (\s a -> s {_suijrrsResponseStatus = a})

instance NFData StopUserImportJobResponse
