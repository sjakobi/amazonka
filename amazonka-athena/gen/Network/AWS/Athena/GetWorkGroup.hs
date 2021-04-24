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
-- Module      : Network.AWS.Athena.GetWorkGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the workgroup with the specified name.
module Network.AWS.Athena.GetWorkGroup
  ( -- * Creating a Request
    getWorkGroup,
    GetWorkGroup,

    -- * Request Lenses
    gwgWorkGroup,

    -- * Destructuring the Response
    getWorkGroupResponse,
    GetWorkGroupResponse,

    -- * Response Lenses
    gwgrrsWorkGroup,
    gwgrrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getWorkGroup' smart constructor.
newtype GetWorkGroup = GetWorkGroup'
  { _gwgWorkGroup ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetWorkGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gwgWorkGroup' - The name of the workgroup.
getWorkGroup ::
  -- | 'gwgWorkGroup'
  Text ->
  GetWorkGroup
getWorkGroup pWorkGroup_ =
  GetWorkGroup' {_gwgWorkGroup = pWorkGroup_}

-- | The name of the workgroup.
gwgWorkGroup :: Lens' GetWorkGroup Text
gwgWorkGroup = lens _gwgWorkGroup (\s a -> s {_gwgWorkGroup = a})

instance AWSRequest GetWorkGroup where
  type Rs GetWorkGroup = GetWorkGroupResponse
  request = postJSON athena
  response =
    receiveJSON
      ( \s h x ->
          GetWorkGroupResponse'
            <$> (x .?> "WorkGroup") <*> (pure (fromEnum s))
      )

instance Hashable GetWorkGroup

instance NFData GetWorkGroup

instance ToHeaders GetWorkGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonAthena.GetWorkGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetWorkGroup where
  toJSON GetWorkGroup' {..} =
    object
      (catMaybes [Just ("WorkGroup" .= _gwgWorkGroup)])

instance ToPath GetWorkGroup where
  toPath = const "/"

instance ToQuery GetWorkGroup where
  toQuery = const mempty

-- | /See:/ 'getWorkGroupResponse' smart constructor.
data GetWorkGroupResponse = GetWorkGroupResponse'
  { _gwgrrsWorkGroup ::
      !(Maybe WorkGroup),
    _gwgrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetWorkGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gwgrrsWorkGroup' - Information about the workgroup.
--
-- * 'gwgrrsResponseStatus' - -- | The response status code.
getWorkGroupResponse ::
  -- | 'gwgrrsResponseStatus'
  Int ->
  GetWorkGroupResponse
getWorkGroupResponse pResponseStatus_ =
  GetWorkGroupResponse'
    { _gwgrrsWorkGroup = Nothing,
      _gwgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the workgroup.
gwgrrsWorkGroup :: Lens' GetWorkGroupResponse (Maybe WorkGroup)
gwgrrsWorkGroup = lens _gwgrrsWorkGroup (\s a -> s {_gwgrrsWorkGroup = a})

-- | -- | The response status code.
gwgrrsResponseStatus :: Lens' GetWorkGroupResponse Int
gwgrrsResponseStatus = lens _gwgrrsResponseStatus (\s a -> s {_gwgrrsResponseStatus = a})

instance NFData GetWorkGroupResponse
