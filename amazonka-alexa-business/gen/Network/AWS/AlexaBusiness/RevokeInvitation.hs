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
-- Module      : Network.AWS.AlexaBusiness.RevokeInvitation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes an invitation and invalidates the enrollment URL.
module Network.AWS.AlexaBusiness.RevokeInvitation
  ( -- * Creating a Request
    revokeInvitation,
    RevokeInvitation,

    -- * Request Lenses
    riUserARN,
    riEnrollmentId,

    -- * Destructuring the Response
    revokeInvitationResponse,
    RevokeInvitationResponse,

    -- * Response Lenses
    rirrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'revokeInvitation' smart constructor.
data RevokeInvitation = RevokeInvitation'
  { _riUserARN ::
      !(Maybe Text),
    _riEnrollmentId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RevokeInvitation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riUserARN' - The ARN of the user for whom to revoke an enrollment invitation. Required.
--
-- * 'riEnrollmentId' - The ARN of the enrollment invitation to revoke. Required.
revokeInvitation ::
  RevokeInvitation
revokeInvitation =
  RevokeInvitation'
    { _riUserARN = Nothing,
      _riEnrollmentId = Nothing
    }

-- | The ARN of the user for whom to revoke an enrollment invitation. Required.
riUserARN :: Lens' RevokeInvitation (Maybe Text)
riUserARN = lens _riUserARN (\s a -> s {_riUserARN = a})

-- | The ARN of the enrollment invitation to revoke. Required.
riEnrollmentId :: Lens' RevokeInvitation (Maybe Text)
riEnrollmentId = lens _riEnrollmentId (\s a -> s {_riEnrollmentId = a})

instance AWSRequest RevokeInvitation where
  type Rs RevokeInvitation = RevokeInvitationResponse
  request = postJSON alexaBusiness
  response =
    receiveEmpty
      ( \s h x ->
          RevokeInvitationResponse' <$> (pure (fromEnum s))
      )

instance Hashable RevokeInvitation

instance NFData RevokeInvitation

instance ToHeaders RevokeInvitation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.RevokeInvitation" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RevokeInvitation where
  toJSON RevokeInvitation' {..} =
    object
      ( catMaybes
          [ ("UserArn" .=) <$> _riUserARN,
            ("EnrollmentId" .=) <$> _riEnrollmentId
          ]
      )

instance ToPath RevokeInvitation where
  toPath = const "/"

instance ToQuery RevokeInvitation where
  toQuery = const mempty

-- | /See:/ 'revokeInvitationResponse' smart constructor.
newtype RevokeInvitationResponse = RevokeInvitationResponse'
  { _rirrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RevokeInvitationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rirrsResponseStatus' - -- | The response status code.
revokeInvitationResponse ::
  -- | 'rirrsResponseStatus'
  Int ->
  RevokeInvitationResponse
revokeInvitationResponse pResponseStatus_ =
  RevokeInvitationResponse'
    { _rirrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
rirrsResponseStatus :: Lens' RevokeInvitationResponse Int
rirrsResponseStatus = lens _rirrsResponseStatus (\s a -> s {_rirrsResponseStatus = a})

instance NFData RevokeInvitationResponse
