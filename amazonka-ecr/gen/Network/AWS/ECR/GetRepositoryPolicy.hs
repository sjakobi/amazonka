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
-- Module      : Network.AWS.ECR.GetRepositoryPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the repository policy for the specified repository.
module Network.AWS.ECR.GetRepositoryPolicy
  ( -- * Creating a Request
    getRepositoryPolicy,
    GetRepositoryPolicy,

    -- * Request Lenses
    grpRegistryId,
    grpRepositoryName,

    -- * Destructuring the Response
    getRepositoryPolicyResponse,
    GetRepositoryPolicyResponse,

    -- * Response Lenses
    grsRegistryId,
    grsPolicyText,
    grsRepositoryName,
    grsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRepositoryPolicy' smart constructor.
data GetRepositoryPolicy = GetRepositoryPolicy'
  { _grpRegistryId ::
      !(Maybe Text),
    _grpRepositoryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRepositoryPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grpRegistryId' - The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
--
-- * 'grpRepositoryName' - The name of the repository with the policy to retrieve.
getRepositoryPolicy ::
  -- | 'grpRepositoryName'
  Text ->
  GetRepositoryPolicy
getRepositoryPolicy pRepositoryName_ =
  GetRepositoryPolicy'
    { _grpRegistryId = Nothing,
      _grpRepositoryName = pRepositoryName_
    }

-- | The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
grpRegistryId :: Lens' GetRepositoryPolicy (Maybe Text)
grpRegistryId = lens _grpRegistryId (\s a -> s {_grpRegistryId = a})

-- | The name of the repository with the policy to retrieve.
grpRepositoryName :: Lens' GetRepositoryPolicy Text
grpRepositoryName = lens _grpRepositoryName (\s a -> s {_grpRepositoryName = a})

instance AWSRequest GetRepositoryPolicy where
  type
    Rs GetRepositoryPolicy =
      GetRepositoryPolicyResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          GetRepositoryPolicyResponse'
            <$> (x .?> "registryId")
            <*> (x .?> "policyText")
            <*> (x .?> "repositoryName")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRepositoryPolicy

instance NFData GetRepositoryPolicy

instance ToHeaders GetRepositoryPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.GetRepositoryPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRepositoryPolicy where
  toJSON GetRepositoryPolicy' {..} =
    object
      ( catMaybes
          [ ("registryId" .=) <$> _grpRegistryId,
            Just ("repositoryName" .= _grpRepositoryName)
          ]
      )

instance ToPath GetRepositoryPolicy where
  toPath = const "/"

instance ToQuery GetRepositoryPolicy where
  toQuery = const mempty

-- | /See:/ 'getRepositoryPolicyResponse' smart constructor.
data GetRepositoryPolicyResponse = GetRepositoryPolicyResponse'
  { _grsRegistryId ::
      !(Maybe Text),
    _grsPolicyText ::
      !(Maybe Text),
    _grsRepositoryName ::
      !(Maybe Text),
    _grsResponseStatus ::
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

-- | Creates a value of 'GetRepositoryPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsRegistryId' - The registry ID associated with the request.
--
-- * 'grsPolicyText' - The JSON repository policy text associated with the repository.
--
-- * 'grsRepositoryName' - The repository name associated with the request.
--
-- * 'grsResponseStatus' - -- | The response status code.
getRepositoryPolicyResponse ::
  -- | 'grsResponseStatus'
  Int ->
  GetRepositoryPolicyResponse
getRepositoryPolicyResponse pResponseStatus_ =
  GetRepositoryPolicyResponse'
    { _grsRegistryId =
        Nothing,
      _grsPolicyText = Nothing,
      _grsRepositoryName = Nothing,
      _grsResponseStatus = pResponseStatus_
    }

-- | The registry ID associated with the request.
grsRegistryId :: Lens' GetRepositoryPolicyResponse (Maybe Text)
grsRegistryId = lens _grsRegistryId (\s a -> s {_grsRegistryId = a})

-- | The JSON repository policy text associated with the repository.
grsPolicyText :: Lens' GetRepositoryPolicyResponse (Maybe Text)
grsPolicyText = lens _grsPolicyText (\s a -> s {_grsPolicyText = a})

-- | The repository name associated with the request.
grsRepositoryName :: Lens' GetRepositoryPolicyResponse (Maybe Text)
grsRepositoryName = lens _grsRepositoryName (\s a -> s {_grsRepositoryName = a})

-- | -- | The response status code.
grsResponseStatus :: Lens' GetRepositoryPolicyResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

instance NFData GetRepositoryPolicyResponse
