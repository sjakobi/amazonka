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
-- Module      : Network.AWS.XRay.DeleteGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a group resource.
module Network.AWS.XRay.DeleteGroup
  ( -- * Creating a Request
    deleteGroup,
    DeleteGroup,

    -- * Request Lenses
    dgGroupName,
    dgGroupARN,

    -- * Destructuring the Response
    deleteGroupResponse,
    DeleteGroupResponse,

    -- * Response Lenses
    dgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'deleteGroup' smart constructor.
data DeleteGroup = DeleteGroup'
  { _dgGroupName ::
      !(Maybe Text),
    _dgGroupARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgGroupName' - The case-sensitive name of the group.
--
-- * 'dgGroupARN' - The ARN of the group that was generated on creation.
deleteGroup ::
  DeleteGroup
deleteGroup =
  DeleteGroup'
    { _dgGroupName = Nothing,
      _dgGroupARN = Nothing
    }

-- | The case-sensitive name of the group.
dgGroupName :: Lens' DeleteGroup (Maybe Text)
dgGroupName = lens _dgGroupName (\s a -> s {_dgGroupName = a})

-- | The ARN of the group that was generated on creation.
dgGroupARN :: Lens' DeleteGroup (Maybe Text)
dgGroupARN = lens _dgGroupARN (\s a -> s {_dgGroupARN = a})

instance AWSRequest DeleteGroup where
  type Rs DeleteGroup = DeleteGroupResponse
  request = postJSON xRay
  response =
    receiveEmpty
      ( \s h x ->
          DeleteGroupResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteGroup

instance NFData DeleteGroup

instance ToHeaders DeleteGroup where
  toHeaders = const mempty

instance ToJSON DeleteGroup where
  toJSON DeleteGroup' {..} =
    object
      ( catMaybes
          [ ("GroupName" .=) <$> _dgGroupName,
            ("GroupARN" .=) <$> _dgGroupARN
          ]
      )

instance ToPath DeleteGroup where
  toPath = const "/DeleteGroup"

instance ToQuery DeleteGroup where
  toQuery = const mempty

-- | /See:/ 'deleteGroupResponse' smart constructor.
newtype DeleteGroupResponse = DeleteGroupResponse'
  { _dgrrsResponseStatus ::
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

-- | Creates a value of 'DeleteGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgrrsResponseStatus' - -- | The response status code.
deleteGroupResponse ::
  -- | 'dgrrsResponseStatus'
  Int ->
  DeleteGroupResponse
deleteGroupResponse pResponseStatus_ =
  DeleteGroupResponse'
    { _dgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dgrrsResponseStatus :: Lens' DeleteGroupResponse Int
dgrrsResponseStatus = lens _dgrrsResponseStatus (\s a -> s {_dgrrsResponseStatus = a})

instance NFData DeleteGroupResponse
