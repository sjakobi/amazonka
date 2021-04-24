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
-- Module      : Network.AWS.Organizations.DescribeHandshake
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a previously requested handshake. The handshake ID comes from the response to the original 'InviteAccountToOrganization' operation that generated the handshake.
--
--
-- You can access handshakes that are @ACCEPTED@ , @DECLINED@ , or @CANCELED@ for only 30 days after they change to that state. They're then deleted and no longer accessible.
--
-- This operation can be called from any account in the organization.
module Network.AWS.Organizations.DescribeHandshake
  ( -- * Creating a Request
    describeHandshake,
    DescribeHandshake,

    -- * Request Lenses
    dHandshakeId,

    -- * Destructuring the Response
    describeHandshakeResponse,
    DescribeHandshakeResponse,

    -- * Response Lenses
    dhrrsHandshake,
    dhrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeHandshake' smart constructor.
newtype DescribeHandshake = DescribeHandshake'
  { _dHandshakeId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeHandshake' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dHandshakeId' - The unique identifier (ID) of the handshake that you want information about. You can get the ID from the original call to 'InviteAccountToOrganization' , or from a call to 'ListHandshakesForAccount' or 'ListHandshakesForOrganization' . The <http://wikipedia.org/wiki/regex regex pattern> for handshake ID string requires "h-" followed by from 8 to 32 lowercase letters or digits.
describeHandshake ::
  -- | 'dHandshakeId'
  Text ->
  DescribeHandshake
describeHandshake pHandshakeId_ =
  DescribeHandshake' {_dHandshakeId = pHandshakeId_}

-- | The unique identifier (ID) of the handshake that you want information about. You can get the ID from the original call to 'InviteAccountToOrganization' , or from a call to 'ListHandshakesForAccount' or 'ListHandshakesForOrganization' . The <http://wikipedia.org/wiki/regex regex pattern> for handshake ID string requires "h-" followed by from 8 to 32 lowercase letters or digits.
dHandshakeId :: Lens' DescribeHandshake Text
dHandshakeId = lens _dHandshakeId (\s a -> s {_dHandshakeId = a})

instance AWSRequest DescribeHandshake where
  type Rs DescribeHandshake = DescribeHandshakeResponse
  request = postJSON organizations
  response =
    receiveJSON
      ( \s h x ->
          DescribeHandshakeResponse'
            <$> (x .?> "Handshake") <*> (pure (fromEnum s))
      )

instance Hashable DescribeHandshake

instance NFData DescribeHandshake

instance ToHeaders DescribeHandshake where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.DescribeHandshake" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeHandshake where
  toJSON DescribeHandshake' {..} =
    object
      (catMaybes [Just ("HandshakeId" .= _dHandshakeId)])

instance ToPath DescribeHandshake where
  toPath = const "/"

instance ToQuery DescribeHandshake where
  toQuery = const mempty

-- | /See:/ 'describeHandshakeResponse' smart constructor.
data DescribeHandshakeResponse = DescribeHandshakeResponse'
  { _dhrrsHandshake ::
      !(Maybe Handshake),
    _dhrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeHandshakeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhrrsHandshake' - A structure that contains information about the specified handshake.
--
-- * 'dhrrsResponseStatus' - -- | The response status code.
describeHandshakeResponse ::
  -- | 'dhrrsResponseStatus'
  Int ->
  DescribeHandshakeResponse
describeHandshakeResponse pResponseStatus_ =
  DescribeHandshakeResponse'
    { _dhrrsHandshake =
        Nothing,
      _dhrrsResponseStatus = pResponseStatus_
    }

-- | A structure that contains information about the specified handshake.
dhrrsHandshake :: Lens' DescribeHandshakeResponse (Maybe Handshake)
dhrrsHandshake = lens _dhrrsHandshake (\s a -> s {_dhrrsHandshake = a})

-- | -- | The response status code.
dhrrsResponseStatus :: Lens' DescribeHandshakeResponse Int
dhrrsResponseStatus = lens _dhrrsResponseStatus (\s a -> s {_dhrrsResponseStatus = a})

instance NFData DescribeHandshakeResponse
