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
-- Module      : Network.AWS.IAM.ResetServiceSpecificCredential
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the password for a service-specific credential. The new password is AWS generated and cryptographically strong. It cannot be configured by the user. Resetting the password immediately invalidates the previous password associated with this user.
module Network.AWS.IAM.ResetServiceSpecificCredential
  ( -- * Creating a Request
    resetServiceSpecificCredential,
    ResetServiceSpecificCredential,

    -- * Request Lenses
    rsscUserName,
    rsscServiceSpecificCredentialId,

    -- * Destructuring the Response
    resetServiceSpecificCredentialResponse,
    ResetServiceSpecificCredentialResponse,

    -- * Response Lenses
    rsscrrsServiceSpecificCredential,
    rsscrrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'resetServiceSpecificCredential' smart constructor.
data ResetServiceSpecificCredential = ResetServiceSpecificCredential'
  { _rsscUserName ::
      !( Maybe
           Text
       ),
    _rsscServiceSpecificCredentialId ::
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

-- | Creates a value of 'ResetServiceSpecificCredential' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsscUserName' - The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'rsscServiceSpecificCredentialId' - The unique identifier of the service-specific credential. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that can consist of any upper or lowercased letter or digit.
resetServiceSpecificCredential ::
  -- | 'rsscServiceSpecificCredentialId'
  Text ->
  ResetServiceSpecificCredential
resetServiceSpecificCredential
  pServiceSpecificCredentialId_ =
    ResetServiceSpecificCredential'
      { _rsscUserName =
          Nothing,
        _rsscServiceSpecificCredentialId =
          pServiceSpecificCredentialId_
      }

-- | The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
rsscUserName :: Lens' ResetServiceSpecificCredential (Maybe Text)
rsscUserName = lens _rsscUserName (\s a -> s {_rsscUserName = a})

-- | The unique identifier of the service-specific credential. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that can consist of any upper or lowercased letter or digit.
rsscServiceSpecificCredentialId :: Lens' ResetServiceSpecificCredential Text
rsscServiceSpecificCredentialId = lens _rsscServiceSpecificCredentialId (\s a -> s {_rsscServiceSpecificCredentialId = a})

instance AWSRequest ResetServiceSpecificCredential where
  type
    Rs ResetServiceSpecificCredential =
      ResetServiceSpecificCredentialResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ResetServiceSpecificCredentialResult"
      ( \s h x ->
          ResetServiceSpecificCredentialResponse'
            <$> (x .@? "ServiceSpecificCredential")
            <*> (pure (fromEnum s))
      )

instance Hashable ResetServiceSpecificCredential

instance NFData ResetServiceSpecificCredential

instance ToHeaders ResetServiceSpecificCredential where
  toHeaders = const mempty

instance ToPath ResetServiceSpecificCredential where
  toPath = const "/"

instance ToQuery ResetServiceSpecificCredential where
  toQuery ResetServiceSpecificCredential' {..} =
    mconcat
      [ "Action"
          =: ("ResetServiceSpecificCredential" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "UserName" =: _rsscUserName,
        "ServiceSpecificCredentialId"
          =: _rsscServiceSpecificCredentialId
      ]

-- | /See:/ 'resetServiceSpecificCredentialResponse' smart constructor.
data ResetServiceSpecificCredentialResponse = ResetServiceSpecificCredentialResponse'
  { _rsscrrsServiceSpecificCredential ::
      !( Maybe
           ServiceSpecificCredential
       ),
    _rsscrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ResetServiceSpecificCredentialResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsscrrsServiceSpecificCredential' - A structure with details about the updated service-specific credential, including the new password. /Important:/ This is the __only__ time that you can access the password. You cannot recover the password later, but you can reset it again.
--
-- * 'rsscrrsResponseStatus' - -- | The response status code.
resetServiceSpecificCredentialResponse ::
  -- | 'rsscrrsResponseStatus'
  Int ->
  ResetServiceSpecificCredentialResponse
resetServiceSpecificCredentialResponse
  pResponseStatus_ =
    ResetServiceSpecificCredentialResponse'
      { _rsscrrsServiceSpecificCredential =
          Nothing,
        _rsscrrsResponseStatus =
          pResponseStatus_
      }

-- | A structure with details about the updated service-specific credential, including the new password. /Important:/ This is the __only__ time that you can access the password. You cannot recover the password later, but you can reset it again.
rsscrrsServiceSpecificCredential :: Lens' ResetServiceSpecificCredentialResponse (Maybe ServiceSpecificCredential)
rsscrrsServiceSpecificCredential = lens _rsscrrsServiceSpecificCredential (\s a -> s {_rsscrrsServiceSpecificCredential = a})

-- | -- | The response status code.
rsscrrsResponseStatus :: Lens' ResetServiceSpecificCredentialResponse Int
rsscrrsResponseStatus = lens _rsscrrsResponseStatus (\s a -> s {_rsscrrsResponseStatus = a})

instance
  NFData
    ResetServiceSpecificCredentialResponse
