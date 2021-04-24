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
-- Module      : Network.AWS.SageMaker.DescribeUserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a user profile. For more information, see @CreateUserProfile@ .
module Network.AWS.SageMaker.DescribeUserProfile
  ( -- * Creating a Request
    describeUserProfile,
    DescribeUserProfile,

    -- * Request Lenses
    dupDomainId,
    dupUserProfileName,

    -- * Destructuring the Response
    describeUserProfileResponse,
    DescribeUserProfileResponse,

    -- * Response Lenses
    duprrsStatus,
    duprrsCreationTime,
    duprrsUserSettings,
    duprrsUserProfileName,
    duprrsDomainId,
    duprrsUserProfileARN,
    duprrsFailureReason,
    duprrsHomeEfsFileSystemUid,
    duprrsLastModifiedTime,
    duprrsSingleSignOnUserIdentifier,
    duprrsSingleSignOnUserValue,
    duprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeUserProfile' smart constructor.
data DescribeUserProfile = DescribeUserProfile'
  { _dupDomainId ::
      !Text,
    _dupUserProfileName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dupDomainId' - The domain ID.
--
-- * 'dupUserProfileName' - The user profile name.
describeUserProfile ::
  -- | 'dupDomainId'
  Text ->
  -- | 'dupUserProfileName'
  Text ->
  DescribeUserProfile
describeUserProfile pDomainId_ pUserProfileName_ =
  DescribeUserProfile'
    { _dupDomainId = pDomainId_,
      _dupUserProfileName = pUserProfileName_
    }

-- | The domain ID.
dupDomainId :: Lens' DescribeUserProfile Text
dupDomainId = lens _dupDomainId (\s a -> s {_dupDomainId = a})

-- | The user profile name.
dupUserProfileName :: Lens' DescribeUserProfile Text
dupUserProfileName = lens _dupUserProfileName (\s a -> s {_dupUserProfileName = a})

instance AWSRequest DescribeUserProfile where
  type
    Rs DescribeUserProfile =
      DescribeUserProfileResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeUserProfileResponse'
            <$> (x .?> "Status")
            <*> (x .?> "CreationTime")
            <*> (x .?> "UserSettings")
            <*> (x .?> "UserProfileName")
            <*> (x .?> "DomainId")
            <*> (x .?> "UserProfileArn")
            <*> (x .?> "FailureReason")
            <*> (x .?> "HomeEfsFileSystemUid")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "SingleSignOnUserIdentifier")
            <*> (x .?> "SingleSignOnUserValue")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeUserProfile

instance NFData DescribeUserProfile

instance ToHeaders DescribeUserProfile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeUserProfile" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeUserProfile where
  toJSON DescribeUserProfile' {..} =
    object
      ( catMaybes
          [ Just ("DomainId" .= _dupDomainId),
            Just ("UserProfileName" .= _dupUserProfileName)
          ]
      )

instance ToPath DescribeUserProfile where
  toPath = const "/"

instance ToQuery DescribeUserProfile where
  toQuery = const mempty

-- | /See:/ 'describeUserProfileResponse' smart constructor.
data DescribeUserProfileResponse = DescribeUserProfileResponse'
  { _duprrsStatus ::
      !( Maybe
           UserProfileStatus
       ),
    _duprrsCreationTime ::
      !(Maybe POSIX),
    _duprrsUserSettings ::
      !( Maybe
           UserSettings
       ),
    _duprrsUserProfileName ::
      !(Maybe Text),
    _duprrsDomainId ::
      !(Maybe Text),
    _duprrsUserProfileARN ::
      !(Maybe Text),
    _duprrsFailureReason ::
      !(Maybe Text),
    _duprrsHomeEfsFileSystemUid ::
      !(Maybe Text),
    _duprrsLastModifiedTime ::
      !(Maybe POSIX),
    _duprrsSingleSignOnUserIdentifier ::
      !(Maybe Text),
    _duprrsSingleSignOnUserValue ::
      !(Maybe Text),
    _duprrsResponseStatus ::
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

-- | Creates a value of 'DescribeUserProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duprrsStatus' - The status.
--
-- * 'duprrsCreationTime' - The creation time.
--
-- * 'duprrsUserSettings' - A collection of settings.
--
-- * 'duprrsUserProfileName' - The user profile name.
--
-- * 'duprrsDomainId' - The ID of the domain that contains the profile.
--
-- * 'duprrsUserProfileARN' - The user profile Amazon Resource Name (ARN).
--
-- * 'duprrsFailureReason' - The failure reason.
--
-- * 'duprrsHomeEfsFileSystemUid' - The ID of the user's profile in the Amazon Elastic File System (EFS) volume.
--
-- * 'duprrsLastModifiedTime' - The last modified time.
--
-- * 'duprrsSingleSignOnUserIdentifier' - The SSO user identifier.
--
-- * 'duprrsSingleSignOnUserValue' - The SSO user value.
--
-- * 'duprrsResponseStatus' - -- | The response status code.
describeUserProfileResponse ::
  -- | 'duprrsResponseStatus'
  Int ->
  DescribeUserProfileResponse
describeUserProfileResponse pResponseStatus_ =
  DescribeUserProfileResponse'
    { _duprrsStatus =
        Nothing,
      _duprrsCreationTime = Nothing,
      _duprrsUserSettings = Nothing,
      _duprrsUserProfileName = Nothing,
      _duprrsDomainId = Nothing,
      _duprrsUserProfileARN = Nothing,
      _duprrsFailureReason = Nothing,
      _duprrsHomeEfsFileSystemUid = Nothing,
      _duprrsLastModifiedTime = Nothing,
      _duprrsSingleSignOnUserIdentifier = Nothing,
      _duprrsSingleSignOnUserValue = Nothing,
      _duprrsResponseStatus = pResponseStatus_
    }

-- | The status.
duprrsStatus :: Lens' DescribeUserProfileResponse (Maybe UserProfileStatus)
duprrsStatus = lens _duprrsStatus (\s a -> s {_duprrsStatus = a})

-- | The creation time.
duprrsCreationTime :: Lens' DescribeUserProfileResponse (Maybe UTCTime)
duprrsCreationTime = lens _duprrsCreationTime (\s a -> s {_duprrsCreationTime = a}) . mapping _Time

-- | A collection of settings.
duprrsUserSettings :: Lens' DescribeUserProfileResponse (Maybe UserSettings)
duprrsUserSettings = lens _duprrsUserSettings (\s a -> s {_duprrsUserSettings = a})

-- | The user profile name.
duprrsUserProfileName :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsUserProfileName = lens _duprrsUserProfileName (\s a -> s {_duprrsUserProfileName = a})

-- | The ID of the domain that contains the profile.
duprrsDomainId :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsDomainId = lens _duprrsDomainId (\s a -> s {_duprrsDomainId = a})

-- | The user profile Amazon Resource Name (ARN).
duprrsUserProfileARN :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsUserProfileARN = lens _duprrsUserProfileARN (\s a -> s {_duprrsUserProfileARN = a})

-- | The failure reason.
duprrsFailureReason :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsFailureReason = lens _duprrsFailureReason (\s a -> s {_duprrsFailureReason = a})

-- | The ID of the user's profile in the Amazon Elastic File System (EFS) volume.
duprrsHomeEfsFileSystemUid :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsHomeEfsFileSystemUid = lens _duprrsHomeEfsFileSystemUid (\s a -> s {_duprrsHomeEfsFileSystemUid = a})

-- | The last modified time.
duprrsLastModifiedTime :: Lens' DescribeUserProfileResponse (Maybe UTCTime)
duprrsLastModifiedTime = lens _duprrsLastModifiedTime (\s a -> s {_duprrsLastModifiedTime = a}) . mapping _Time

-- | The SSO user identifier.
duprrsSingleSignOnUserIdentifier :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsSingleSignOnUserIdentifier = lens _duprrsSingleSignOnUserIdentifier (\s a -> s {_duprrsSingleSignOnUserIdentifier = a})

-- | The SSO user value.
duprrsSingleSignOnUserValue :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsSingleSignOnUserValue = lens _duprrsSingleSignOnUserValue (\s a -> s {_duprrsSingleSignOnUserValue = a})

-- | -- | The response status code.
duprrsResponseStatus :: Lens' DescribeUserProfileResponse Int
duprrsResponseStatus = lens _duprrsResponseStatus (\s a -> s {_duprrsResponseStatus = a})

instance NFData DescribeUserProfileResponse
