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
-- Module      : Network.AWS.DirectoryService.DisableRadius
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
module Network.AWS.DirectoryService.DisableRadius
  ( -- * Creating a Request
    disableRadius,
    DisableRadius,

    -- * Request Lenses
    drDirectoryId,

    -- * Destructuring the Response
    disableRadiusResponse,
    DisableRadiusResponse,

    -- * Response Lenses
    drrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'DisableRadius' operation.
--
--
--
-- /See:/ 'disableRadius' smart constructor.
newtype DisableRadius = DisableRadius'
  { _drDirectoryId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DisableRadius' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drDirectoryId' - The identifier of the directory for which to disable MFA.
disableRadius ::
  -- | 'drDirectoryId'
  Text ->
  DisableRadius
disableRadius pDirectoryId_ =
  DisableRadius' {_drDirectoryId = pDirectoryId_}

-- | The identifier of the directory for which to disable MFA.
drDirectoryId :: Lens' DisableRadius Text
drDirectoryId = lens _drDirectoryId (\s a -> s {_drDirectoryId = a})

instance AWSRequest DisableRadius where
  type Rs DisableRadius = DisableRadiusResponse
  request = postJSON directoryService
  response =
    receiveEmpty
      ( \s h x ->
          DisableRadiusResponse' <$> (pure (fromEnum s))
      )

instance Hashable DisableRadius

instance NFData DisableRadius

instance ToHeaders DisableRadius where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DisableRadius" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisableRadius where
  toJSON DisableRadius' {..} =
    object
      (catMaybes [Just ("DirectoryId" .= _drDirectoryId)])

instance ToPath DisableRadius where
  toPath = const "/"

instance ToQuery DisableRadius where
  toQuery = const mempty

-- | Contains the results of the 'DisableRadius' operation.
--
--
--
-- /See:/ 'disableRadiusResponse' smart constructor.
newtype DisableRadiusResponse = DisableRadiusResponse'
  { _drrrsResponseStatus ::
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

-- | Creates a value of 'DisableRadiusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsResponseStatus' - -- | The response status code.
disableRadiusResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DisableRadiusResponse
disableRadiusResponse pResponseStatus_ =
  DisableRadiusResponse'
    { _drrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DisableRadiusResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DisableRadiusResponse
