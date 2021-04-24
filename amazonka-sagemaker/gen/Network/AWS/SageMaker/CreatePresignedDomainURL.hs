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
-- Module      : Network.AWS.SageMaker.CreatePresignedDomainURL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a URL for a specified UserProfile in a Domain. When accessed in a web browser, the user will be automatically signed in to Amazon SageMaker Studio, and granted access to all of the Apps and files associated with the Domain's Amazon Elastic File System (EFS) volume. This operation can only be called when the authentication mode equals IAM.
module Network.AWS.SageMaker.CreatePresignedDomainURL
  ( -- * Creating a Request
    createPresignedDomainURL,
    CreatePresignedDomainURL,

    -- * Request Lenses
    cpduSessionExpirationDurationInSeconds,
    cpduExpiresInSeconds,
    cpduDomainId,
    cpduUserProfileName,

    -- * Destructuring the Response
    createPresignedDomainURLResponse,
    CreatePresignedDomainURLResponse,

    -- * Response Lenses
    cpdurrsAuthorizedURL,
    cpdurrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createPresignedDomainURL' smart constructor.
data CreatePresignedDomainURL = CreatePresignedDomainURL'
  { _cpduSessionExpirationDurationInSeconds ::
      !(Maybe Nat),
    _cpduExpiresInSeconds ::
      !(Maybe Nat),
    _cpduDomainId ::
      !Text,
    _cpduUserProfileName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreatePresignedDomainURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpduSessionExpirationDurationInSeconds' - The session expiration duration in seconds. This value defaults to 43200.
--
-- * 'cpduExpiresInSeconds' - The number of seconds until the pre-signed URL expires. This value defaults to 300.
--
-- * 'cpduDomainId' - The domain ID.
--
-- * 'cpduUserProfileName' - The name of the UserProfile to sign-in as.
createPresignedDomainURL ::
  -- | 'cpduDomainId'
  Text ->
  -- | 'cpduUserProfileName'
  Text ->
  CreatePresignedDomainURL
createPresignedDomainURL pDomainId_ pUserProfileName_ =
  CreatePresignedDomainURL'
    { _cpduSessionExpirationDurationInSeconds =
        Nothing,
      _cpduExpiresInSeconds = Nothing,
      _cpduDomainId = pDomainId_,
      _cpduUserProfileName = pUserProfileName_
    }

-- | The session expiration duration in seconds. This value defaults to 43200.
cpduSessionExpirationDurationInSeconds :: Lens' CreatePresignedDomainURL (Maybe Natural)
cpduSessionExpirationDurationInSeconds = lens _cpduSessionExpirationDurationInSeconds (\s a -> s {_cpduSessionExpirationDurationInSeconds = a}) . mapping _Nat

-- | The number of seconds until the pre-signed URL expires. This value defaults to 300.
cpduExpiresInSeconds :: Lens' CreatePresignedDomainURL (Maybe Natural)
cpduExpiresInSeconds = lens _cpduExpiresInSeconds (\s a -> s {_cpduExpiresInSeconds = a}) . mapping _Nat

-- | The domain ID.
cpduDomainId :: Lens' CreatePresignedDomainURL Text
cpduDomainId = lens _cpduDomainId (\s a -> s {_cpduDomainId = a})

-- | The name of the UserProfile to sign-in as.
cpduUserProfileName :: Lens' CreatePresignedDomainURL Text
cpduUserProfileName = lens _cpduUserProfileName (\s a -> s {_cpduUserProfileName = a})

instance AWSRequest CreatePresignedDomainURL where
  type
    Rs CreatePresignedDomainURL =
      CreatePresignedDomainURLResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreatePresignedDomainURLResponse'
            <$> (x .?> "AuthorizedUrl") <*> (pure (fromEnum s))
      )

instance Hashable CreatePresignedDomainURL

instance NFData CreatePresignedDomainURL

instance ToHeaders CreatePresignedDomainURL where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreatePresignedDomainUrl" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePresignedDomainURL where
  toJSON CreatePresignedDomainURL' {..} =
    object
      ( catMaybes
          [ ("SessionExpirationDurationInSeconds" .=)
              <$> _cpduSessionExpirationDurationInSeconds,
            ("ExpiresInSeconds" .=) <$> _cpduExpiresInSeconds,
            Just ("DomainId" .= _cpduDomainId),
            Just ("UserProfileName" .= _cpduUserProfileName)
          ]
      )

instance ToPath CreatePresignedDomainURL where
  toPath = const "/"

instance ToQuery CreatePresignedDomainURL where
  toQuery = const mempty

-- | /See:/ 'createPresignedDomainURLResponse' smart constructor.
data CreatePresignedDomainURLResponse = CreatePresignedDomainURLResponse'
  { _cpdurrsAuthorizedURL ::
      !( Maybe
           Text
       ),
    _cpdurrsResponseStatus ::
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

-- | Creates a value of 'CreatePresignedDomainURLResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpdurrsAuthorizedURL' - The presigned URL.
--
-- * 'cpdurrsResponseStatus' - -- | The response status code.
createPresignedDomainURLResponse ::
  -- | 'cpdurrsResponseStatus'
  Int ->
  CreatePresignedDomainURLResponse
createPresignedDomainURLResponse pResponseStatus_ =
  CreatePresignedDomainURLResponse'
    { _cpdurrsAuthorizedURL =
        Nothing,
      _cpdurrsResponseStatus = pResponseStatus_
    }

-- | The presigned URL.
cpdurrsAuthorizedURL :: Lens' CreatePresignedDomainURLResponse (Maybe Text)
cpdurrsAuthorizedURL = lens _cpdurrsAuthorizedURL (\s a -> s {_cpdurrsAuthorizedURL = a})

-- | -- | The response status code.
cpdurrsResponseStatus :: Lens' CreatePresignedDomainURLResponse Int
cpdurrsResponseStatus = lens _cpdurrsResponseStatus (\s a -> s {_cpdurrsResponseStatus = a})

instance NFData CreatePresignedDomainURLResponse
