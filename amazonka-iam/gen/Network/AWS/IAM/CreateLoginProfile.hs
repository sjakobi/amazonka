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
-- Module      : Network.AWS.IAM.CreateLoginProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a password for the specified IAM user. A password allows an IAM user to access AWS services through the AWS Management Console.
--
--
-- You can use the AWS CLI, the AWS API, or the __Users__ page in the IAM console to create a password for any IAM user. Use 'ChangePassword' to update your own existing password in the __My Security Credentials__ page in the AWS Management Console.
--
-- For more information about managing passwords, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html Managing passwords> in the /IAM User Guide/ .
module Network.AWS.IAM.CreateLoginProfile
  ( -- * Creating a Request
    createLoginProfile,
    CreateLoginProfile,

    -- * Request Lenses
    clpPasswordResetRequired,
    clpUserName,
    clpPassword,

    -- * Destructuring the Response
    createLoginProfileResponse,
    CreateLoginProfileResponse,

    -- * Response Lenses
    clprrsResponseStatus,
    clprrsLoginProfile,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createLoginProfile' smart constructor.
data CreateLoginProfile = CreateLoginProfile'
  { _clpPasswordResetRequired ::
      !(Maybe Bool),
    _clpUserName :: !Text,
    _clpPassword :: !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateLoginProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clpPasswordResetRequired' - Specifies whether the user is required to set a new password on next sign-in.
--
-- * 'clpUserName' - The name of the IAM user to create a password for. The user must already exist. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'clpPassword' - The new password for the user. The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (@\u0020@ ) through the end of the ASCII character range (@\u00FF@ ). You can also include the tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ ) characters. Any of these characters are valid in a password. However, many tools, such as the AWS Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.
createLoginProfile ::
  -- | 'clpUserName'
  Text ->
  -- | 'clpPassword'
  Text ->
  CreateLoginProfile
createLoginProfile pUserName_ pPassword_ =
  CreateLoginProfile'
    { _clpPasswordResetRequired =
        Nothing,
      _clpUserName = pUserName_,
      _clpPassword = _Sensitive # pPassword_
    }

-- | Specifies whether the user is required to set a new password on next sign-in.
clpPasswordResetRequired :: Lens' CreateLoginProfile (Maybe Bool)
clpPasswordResetRequired = lens _clpPasswordResetRequired (\s a -> s {_clpPasswordResetRequired = a})

-- | The name of the IAM user to create a password for. The user must already exist. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
clpUserName :: Lens' CreateLoginProfile Text
clpUserName = lens _clpUserName (\s a -> s {_clpUserName = a})

-- | The new password for the user. The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (@\u0020@ ) through the end of the ASCII character range (@\u00FF@ ). You can also include the tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ ) characters. Any of these characters are valid in a password. However, many tools, such as the AWS Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.
clpPassword :: Lens' CreateLoginProfile Text
clpPassword = lens _clpPassword (\s a -> s {_clpPassword = a}) . _Sensitive

instance AWSRequest CreateLoginProfile where
  type
    Rs CreateLoginProfile =
      CreateLoginProfileResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "CreateLoginProfileResult"
      ( \s h x ->
          CreateLoginProfileResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "LoginProfile")
      )

instance Hashable CreateLoginProfile

instance NFData CreateLoginProfile

instance ToHeaders CreateLoginProfile where
  toHeaders = const mempty

instance ToPath CreateLoginProfile where
  toPath = const "/"

instance ToQuery CreateLoginProfile where
  toQuery CreateLoginProfile' {..} =
    mconcat
      [ "Action" =: ("CreateLoginProfile" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PasswordResetRequired" =: _clpPasswordResetRequired,
        "UserName" =: _clpUserName,
        "Password" =: _clpPassword
      ]

-- | Contains the response to a successful 'CreateLoginProfile' request.
--
--
--
-- /See:/ 'createLoginProfileResponse' smart constructor.
data CreateLoginProfileResponse = CreateLoginProfileResponse'
  { _clprrsResponseStatus ::
      !Int,
    _clprrsLoginProfile ::
      !LoginProfile
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateLoginProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clprrsResponseStatus' - -- | The response status code.
--
-- * 'clprrsLoginProfile' - A structure containing the user name and password create date.
createLoginProfileResponse ::
  -- | 'clprrsResponseStatus'
  Int ->
  -- | 'clprrsLoginProfile'
  LoginProfile ->
  CreateLoginProfileResponse
createLoginProfileResponse
  pResponseStatus_
  pLoginProfile_ =
    CreateLoginProfileResponse'
      { _clprrsResponseStatus =
          pResponseStatus_,
        _clprrsLoginProfile = pLoginProfile_
      }

-- | -- | The response status code.
clprrsResponseStatus :: Lens' CreateLoginProfileResponse Int
clprrsResponseStatus = lens _clprrsResponseStatus (\s a -> s {_clprrsResponseStatus = a})

-- | A structure containing the user name and password create date.
clprrsLoginProfile :: Lens' CreateLoginProfileResponse LoginProfile
clprrsLoginProfile = lens _clprrsLoginProfile (\s a -> s {_clprrsLoginProfile = a})

instance NFData CreateLoginProfileResponse
