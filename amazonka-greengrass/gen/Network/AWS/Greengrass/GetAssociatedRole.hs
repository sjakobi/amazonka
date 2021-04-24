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
-- Module      : Network.AWS.Greengrass.GetAssociatedRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the role associated with a particular group.
module Network.AWS.Greengrass.GetAssociatedRole
  ( -- * Creating a Request
    getAssociatedRole,
    GetAssociatedRole,

    -- * Request Lenses
    garGroupId,

    -- * Destructuring the Response
    getAssociatedRoleResponse,
    GetAssociatedRoleResponse,

    -- * Response Lenses
    garrrsRoleARN,
    garrrsAssociatedAt,
    garrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAssociatedRole' smart constructor.
newtype GetAssociatedRole = GetAssociatedRole'
  { _garGroupId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAssociatedRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garGroupId' - The ID of the Greengrass group.
getAssociatedRole ::
  -- | 'garGroupId'
  Text ->
  GetAssociatedRole
getAssociatedRole pGroupId_ =
  GetAssociatedRole' {_garGroupId = pGroupId_}

-- | The ID of the Greengrass group.
garGroupId :: Lens' GetAssociatedRole Text
garGroupId = lens _garGroupId (\s a -> s {_garGroupId = a})

instance AWSRequest GetAssociatedRole where
  type Rs GetAssociatedRole = GetAssociatedRoleResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetAssociatedRoleResponse'
            <$> (x .?> "RoleArn")
            <*> (x .?> "AssociatedAt")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAssociatedRole

instance NFData GetAssociatedRole

instance ToHeaders GetAssociatedRole where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetAssociatedRole where
  toPath GetAssociatedRole' {..} =
    mconcat
      ["/greengrass/groups/", toBS _garGroupId, "/role"]

instance ToQuery GetAssociatedRole where
  toQuery = const mempty

-- | /See:/ 'getAssociatedRoleResponse' smart constructor.
data GetAssociatedRoleResponse = GetAssociatedRoleResponse'
  { _garrrsRoleARN ::
      !(Maybe Text),
    _garrrsAssociatedAt ::
      !(Maybe Text),
    _garrrsResponseStatus ::
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

-- | Creates a value of 'GetAssociatedRoleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garrrsRoleARN' - The ARN of the role that is associated with the group.
--
-- * 'garrrsAssociatedAt' - The time when the role was associated with the group.
--
-- * 'garrrsResponseStatus' - -- | The response status code.
getAssociatedRoleResponse ::
  -- | 'garrrsResponseStatus'
  Int ->
  GetAssociatedRoleResponse
getAssociatedRoleResponse pResponseStatus_ =
  GetAssociatedRoleResponse'
    { _garrrsRoleARN =
        Nothing,
      _garrrsAssociatedAt = Nothing,
      _garrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the role that is associated with the group.
garrrsRoleARN :: Lens' GetAssociatedRoleResponse (Maybe Text)
garrrsRoleARN = lens _garrrsRoleARN (\s a -> s {_garrrsRoleARN = a})

-- | The time when the role was associated with the group.
garrrsAssociatedAt :: Lens' GetAssociatedRoleResponse (Maybe Text)
garrrsAssociatedAt = lens _garrrsAssociatedAt (\s a -> s {_garrrsAssociatedAt = a})

-- | -- | The response status code.
garrrsResponseStatus :: Lens' GetAssociatedRoleResponse Int
garrrsResponseStatus = lens _garrrsResponseStatus (\s a -> s {_garrrsResponseStatus = a})

instance NFData GetAssociatedRoleResponse
