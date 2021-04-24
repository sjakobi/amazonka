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
-- Module      : Network.AWS.CodeStar.DescribeUserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a user in AWS CodeStar and the user attributes across all projects.
module Network.AWS.CodeStar.DescribeUserProfile
  ( -- * Creating a Request
    describeUserProfile,
    DescribeUserProfile,

    -- * Request Lenses
    dupUserARN,

    -- * Destructuring the Response
    describeUserProfileResponse,
    DescribeUserProfileResponse,

    -- * Response Lenses
    duprrsSshPublicKey,
    duprrsDisplayName,
    duprrsEmailAddress,
    duprrsResponseStatus,
    duprrsUserARN,
    duprrsCreatedTimestamp,
    duprrsLastModifiedTimestamp,
  )
where

import Network.AWS.CodeStar.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeUserProfile' smart constructor.
newtype DescribeUserProfile = DescribeUserProfile'
  { _dupUserARN ::
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

-- | Creates a value of 'DescribeUserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dupUserARN' - The Amazon Resource Name (ARN) of the user.
describeUserProfile ::
  -- | 'dupUserARN'
  Text ->
  DescribeUserProfile
describeUserProfile pUserARN_ =
  DescribeUserProfile' {_dupUserARN = pUserARN_}

-- | The Amazon Resource Name (ARN) of the user.
dupUserARN :: Lens' DescribeUserProfile Text
dupUserARN = lens _dupUserARN (\s a -> s {_dupUserARN = a})

instance AWSRequest DescribeUserProfile where
  type
    Rs DescribeUserProfile =
      DescribeUserProfileResponse
  request = postJSON codeStar
  response =
    receiveJSON
      ( \s h x ->
          DescribeUserProfileResponse'
            <$> (x .?> "sshPublicKey")
            <*> (x .?> "displayName")
            <*> (x .?> "emailAddress")
            <*> (pure (fromEnum s))
            <*> (x .:> "userArn")
            <*> (x .:> "createdTimestamp")
            <*> (x .:> "lastModifiedTimestamp")
      )

instance Hashable DescribeUserProfile

instance NFData DescribeUserProfile

instance ToHeaders DescribeUserProfile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeStar_20170419.DescribeUserProfile" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeUserProfile where
  toJSON DescribeUserProfile' {..} =
    object
      (catMaybes [Just ("userArn" .= _dupUserARN)])

instance ToPath DescribeUserProfile where
  toPath = const "/"

instance ToQuery DescribeUserProfile where
  toQuery = const mempty

-- | /See:/ 'describeUserProfileResponse' smart constructor.
data DescribeUserProfileResponse = DescribeUserProfileResponse'
  { _duprrsSshPublicKey ::
      !(Maybe Text),
    _duprrsDisplayName ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _duprrsEmailAddress ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _duprrsResponseStatus ::
      !Int,
    _duprrsUserARN ::
      !Text,
    _duprrsCreatedTimestamp ::
      !POSIX,
    _duprrsLastModifiedTimestamp ::
      !POSIX
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeUserProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duprrsSshPublicKey' - The SSH public key associated with the user. This SSH public key is associated with the user profile, and can be used in conjunction with the associated private key for access to project resources, such as Amazon EC2 instances, if a project owner grants remote access to those resources.
--
-- * 'duprrsDisplayName' - The display name shown for the user in AWS CodeStar projects. For example, this could be set to both first and last name ("Mary Major") or a single name ("Mary"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example "Mary Jane Major") would generate an initial icon using the first character and the first character after the space ("MJ", not "MM").
--
-- * 'duprrsEmailAddress' - The email address for the user. Optional.
--
-- * 'duprrsResponseStatus' - -- | The response status code.
--
-- * 'duprrsUserARN' - The Amazon Resource Name (ARN) of the user.
--
-- * 'duprrsCreatedTimestamp' - The date and time when the user profile was created in AWS CodeStar, in timestamp format.
--
-- * 'duprrsLastModifiedTimestamp' - The date and time when the user profile was last modified, in timestamp format.
describeUserProfileResponse ::
  -- | 'duprrsResponseStatus'
  Int ->
  -- | 'duprrsUserARN'
  Text ->
  -- | 'duprrsCreatedTimestamp'
  UTCTime ->
  -- | 'duprrsLastModifiedTimestamp'
  UTCTime ->
  DescribeUserProfileResponse
describeUserProfileResponse
  pResponseStatus_
  pUserARN_
  pCreatedTimestamp_
  pLastModifiedTimestamp_ =
    DescribeUserProfileResponse'
      { _duprrsSshPublicKey =
          Nothing,
        _duprrsDisplayName = Nothing,
        _duprrsEmailAddress = Nothing,
        _duprrsResponseStatus = pResponseStatus_,
        _duprrsUserARN = pUserARN_,
        _duprrsCreatedTimestamp =
          _Time # pCreatedTimestamp_,
        _duprrsLastModifiedTimestamp =
          _Time # pLastModifiedTimestamp_
      }

-- | The SSH public key associated with the user. This SSH public key is associated with the user profile, and can be used in conjunction with the associated private key for access to project resources, such as Amazon EC2 instances, if a project owner grants remote access to those resources.
duprrsSshPublicKey :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsSshPublicKey = lens _duprrsSshPublicKey (\s a -> s {_duprrsSshPublicKey = a})

-- | The display name shown for the user in AWS CodeStar projects. For example, this could be set to both first and last name ("Mary Major") or a single name ("Mary"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example "Mary Jane Major") would generate an initial icon using the first character and the first character after the space ("MJ", not "MM").
duprrsDisplayName :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsDisplayName = lens _duprrsDisplayName (\s a -> s {_duprrsDisplayName = a}) . mapping _Sensitive

-- | The email address for the user. Optional.
duprrsEmailAddress :: Lens' DescribeUserProfileResponse (Maybe Text)
duprrsEmailAddress = lens _duprrsEmailAddress (\s a -> s {_duprrsEmailAddress = a}) . mapping _Sensitive

-- | -- | The response status code.
duprrsResponseStatus :: Lens' DescribeUserProfileResponse Int
duprrsResponseStatus = lens _duprrsResponseStatus (\s a -> s {_duprrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the user.
duprrsUserARN :: Lens' DescribeUserProfileResponse Text
duprrsUserARN = lens _duprrsUserARN (\s a -> s {_duprrsUserARN = a})

-- | The date and time when the user profile was created in AWS CodeStar, in timestamp format.
duprrsCreatedTimestamp :: Lens' DescribeUserProfileResponse UTCTime
duprrsCreatedTimestamp = lens _duprrsCreatedTimestamp (\s a -> s {_duprrsCreatedTimestamp = a}) . _Time

-- | The date and time when the user profile was last modified, in timestamp format.
duprrsLastModifiedTimestamp :: Lens' DescribeUserProfileResponse UTCTime
duprrsLastModifiedTimestamp = lens _duprrsLastModifiedTimestamp (\s a -> s {_duprrsLastModifiedTimestamp = a}) . _Time

instance NFData DescribeUserProfileResponse
