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
-- Module      : Network.AWS.Greengrass.UpdateGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a group.
module Network.AWS.Greengrass.UpdateGroup
  ( -- * Creating a Request
    updateGroup,
    UpdateGroup,

    -- * Request Lenses
    ugName,
    ugGroupId,

    -- * Destructuring the Response
    updateGroupResponse,
    UpdateGroupResponse,

    -- * Response Lenses
    ugrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateGroup' smart constructor.
data UpdateGroup = UpdateGroup'
  { _ugName ::
      !(Maybe Text),
    _ugGroupId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugName' - The name of the definition.
--
-- * 'ugGroupId' - The ID of the Greengrass group.
updateGroup ::
  -- | 'ugGroupId'
  Text ->
  UpdateGroup
updateGroup pGroupId_ =
  UpdateGroup'
    { _ugName = Nothing,
      _ugGroupId = pGroupId_
    }

-- | The name of the definition.
ugName :: Lens' UpdateGroup (Maybe Text)
ugName = lens _ugName (\s a -> s {_ugName = a})

-- | The ID of the Greengrass group.
ugGroupId :: Lens' UpdateGroup Text
ugGroupId = lens _ugGroupId (\s a -> s {_ugGroupId = a})

instance AWSRequest UpdateGroup where
  type Rs UpdateGroup = UpdateGroupResponse
  request = putJSON greengrass
  response =
    receiveEmpty
      ( \s h x ->
          UpdateGroupResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateGroup

instance NFData UpdateGroup

instance ToHeaders UpdateGroup where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateGroup where
  toJSON UpdateGroup' {..} =
    object (catMaybes [("Name" .=) <$> _ugName])

instance ToPath UpdateGroup where
  toPath UpdateGroup' {..} =
    mconcat ["/greengrass/groups/", toBS _ugGroupId]

instance ToQuery UpdateGroup where
  toQuery = const mempty

-- | /See:/ 'updateGroupResponse' smart constructor.
newtype UpdateGroupResponse = UpdateGroupResponse'
  { _ugrrsResponseStatus ::
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

-- | Creates a value of 'UpdateGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugrrsResponseStatus' - -- | The response status code.
updateGroupResponse ::
  -- | 'ugrrsResponseStatus'
  Int ->
  UpdateGroupResponse
updateGroupResponse pResponseStatus_ =
  UpdateGroupResponse'
    { _ugrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ugrrsResponseStatus :: Lens' UpdateGroupResponse Int
ugrrsResponseStatus = lens _ugrrsResponseStatus (\s a -> s {_ugrrsResponseStatus = a})

instance NFData UpdateGroupResponse
