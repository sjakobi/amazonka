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
-- Module      : Network.AWS.CognitoIdentityProvider.CreateUserImportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the user import job.
module Network.AWS.CognitoIdentityProvider.CreateUserImportJob
  ( -- * Creating a Request
    createUserImportJob,
    CreateUserImportJob,

    -- * Request Lenses
    cuijJobName,
    cuijUserPoolId,
    cuijCloudWatchLogsRoleARN,

    -- * Destructuring the Response
    createUserImportJobResponse,
    CreateUserImportJobResponse,

    -- * Response Lenses
    cuijrrsUserImportJob,
    cuijrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to create the user import job.
--
--
--
-- /See:/ 'createUserImportJob' smart constructor.
data CreateUserImportJob = CreateUserImportJob'
  { _cuijJobName ::
      !Text,
    _cuijUserPoolId :: !Text,
    _cuijCloudWatchLogsRoleARN ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUserImportJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuijJobName' - The job name for the user import job.
--
-- * 'cuijUserPoolId' - The user pool ID for the user pool that the users are being imported into.
--
-- * 'cuijCloudWatchLogsRoleARN' - The role ARN for the Amazon CloudWatch Logging role for the user import job.
createUserImportJob ::
  -- | 'cuijJobName'
  Text ->
  -- | 'cuijUserPoolId'
  Text ->
  -- | 'cuijCloudWatchLogsRoleARN'
  Text ->
  CreateUserImportJob
createUserImportJob
  pJobName_
  pUserPoolId_
  pCloudWatchLogsRoleARN_ =
    CreateUserImportJob'
      { _cuijJobName = pJobName_,
        _cuijUserPoolId = pUserPoolId_,
        _cuijCloudWatchLogsRoleARN = pCloudWatchLogsRoleARN_
      }

-- | The job name for the user import job.
cuijJobName :: Lens' CreateUserImportJob Text
cuijJobName = lens _cuijJobName (\s a -> s {_cuijJobName = a})

-- | The user pool ID for the user pool that the users are being imported into.
cuijUserPoolId :: Lens' CreateUserImportJob Text
cuijUserPoolId = lens _cuijUserPoolId (\s a -> s {_cuijUserPoolId = a})

-- | The role ARN for the Amazon CloudWatch Logging role for the user import job.
cuijCloudWatchLogsRoleARN :: Lens' CreateUserImportJob Text
cuijCloudWatchLogsRoleARN = lens _cuijCloudWatchLogsRoleARN (\s a -> s {_cuijCloudWatchLogsRoleARN = a})

instance AWSRequest CreateUserImportJob where
  type
    Rs CreateUserImportJob =
      CreateUserImportJobResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          CreateUserImportJobResponse'
            <$> (x .?> "UserImportJob") <*> (pure (fromEnum s))
      )

instance Hashable CreateUserImportJob

instance NFData CreateUserImportJob

instance ToHeaders CreateUserImportJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.CreateUserImportJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateUserImportJob where
  toJSON CreateUserImportJob' {..} =
    object
      ( catMaybes
          [ Just ("JobName" .= _cuijJobName),
            Just ("UserPoolId" .= _cuijUserPoolId),
            Just
              ( "CloudWatchLogsRoleArn"
                  .= _cuijCloudWatchLogsRoleARN
              )
          ]
      )

instance ToPath CreateUserImportJob where
  toPath = const "/"

instance ToQuery CreateUserImportJob where
  toQuery = const mempty

-- | Represents the response from the server to the request to create the user import job.
--
--
--
-- /See:/ 'createUserImportJobResponse' smart constructor.
data CreateUserImportJobResponse = CreateUserImportJobResponse'
  { _cuijrrsUserImportJob ::
      !( Maybe
           UserImportJobType
       ),
    _cuijrrsResponseStatus ::
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

-- | Creates a value of 'CreateUserImportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuijrrsUserImportJob' - The job object that represents the user import job.
--
-- * 'cuijrrsResponseStatus' - -- | The response status code.
createUserImportJobResponse ::
  -- | 'cuijrrsResponseStatus'
  Int ->
  CreateUserImportJobResponse
createUserImportJobResponse pResponseStatus_ =
  CreateUserImportJobResponse'
    { _cuijrrsUserImportJob =
        Nothing,
      _cuijrrsResponseStatus = pResponseStatus_
    }

-- | The job object that represents the user import job.
cuijrrsUserImportJob :: Lens' CreateUserImportJobResponse (Maybe UserImportJobType)
cuijrrsUserImportJob = lens _cuijrrsUserImportJob (\s a -> s {_cuijrrsUserImportJob = a})

-- | -- | The response status code.
cuijrrsResponseStatus :: Lens' CreateUserImportJobResponse Int
cuijrrsResponseStatus = lens _cuijrrsResponseStatus (\s a -> s {_cuijrrsResponseStatus = a})

instance NFData CreateUserImportJobResponse
