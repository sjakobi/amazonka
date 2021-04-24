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
-- Module      : Network.AWS.Connect.CreateUserHierarchyGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new user hierarchy group.
module Network.AWS.Connect.CreateUserHierarchyGroup
  ( -- * Creating a Request
    createUserHierarchyGroup,
    CreateUserHierarchyGroup,

    -- * Request Lenses
    cuhgParentGroupId,
    cuhgName,
    cuhgInstanceId,

    -- * Destructuring the Response
    createUserHierarchyGroupResponse,
    CreateUserHierarchyGroupResponse,

    -- * Response Lenses
    cuhgrrsHierarchyGroupARN,
    cuhgrrsHierarchyGroupId,
    cuhgrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createUserHierarchyGroup' smart constructor.
data CreateUserHierarchyGroup = CreateUserHierarchyGroup'
  { _cuhgParentGroupId ::
      !(Maybe Text),
    _cuhgName :: !Text,
    _cuhgInstanceId ::
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

-- | Creates a value of 'CreateUserHierarchyGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuhgParentGroupId' - The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
--
-- * 'cuhgName' - The name of the user hierarchy group. Must not be more than 100 characters.
--
-- * 'cuhgInstanceId' - The identifier of the Amazon Connect instance.
createUserHierarchyGroup ::
  -- | 'cuhgName'
  Text ->
  -- | 'cuhgInstanceId'
  Text ->
  CreateUserHierarchyGroup
createUserHierarchyGroup pName_ pInstanceId_ =
  CreateUserHierarchyGroup'
    { _cuhgParentGroupId =
        Nothing,
      _cuhgName = pName_,
      _cuhgInstanceId = pInstanceId_
    }

-- | The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
cuhgParentGroupId :: Lens' CreateUserHierarchyGroup (Maybe Text)
cuhgParentGroupId = lens _cuhgParentGroupId (\s a -> s {_cuhgParentGroupId = a})

-- | The name of the user hierarchy group. Must not be more than 100 characters.
cuhgName :: Lens' CreateUserHierarchyGroup Text
cuhgName = lens _cuhgName (\s a -> s {_cuhgName = a})

-- | The identifier of the Amazon Connect instance.
cuhgInstanceId :: Lens' CreateUserHierarchyGroup Text
cuhgInstanceId = lens _cuhgInstanceId (\s a -> s {_cuhgInstanceId = a})

instance AWSRequest CreateUserHierarchyGroup where
  type
    Rs CreateUserHierarchyGroup =
      CreateUserHierarchyGroupResponse
  request = putJSON connect
  response =
    receiveJSON
      ( \s h x ->
          CreateUserHierarchyGroupResponse'
            <$> (x .?> "HierarchyGroupArn")
            <*> (x .?> "HierarchyGroupId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateUserHierarchyGroup

instance NFData CreateUserHierarchyGroup

instance ToHeaders CreateUserHierarchyGroup where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateUserHierarchyGroup where
  toJSON CreateUserHierarchyGroup' {..} =
    object
      ( catMaybes
          [ ("ParentGroupId" .=) <$> _cuhgParentGroupId,
            Just ("Name" .= _cuhgName)
          ]
      )

instance ToPath CreateUserHierarchyGroup where
  toPath CreateUserHierarchyGroup' {..} =
    mconcat
      ["/user-hierarchy-groups/", toBS _cuhgInstanceId]

instance ToQuery CreateUserHierarchyGroup where
  toQuery = const mempty

-- | /See:/ 'createUserHierarchyGroupResponse' smart constructor.
data CreateUserHierarchyGroupResponse = CreateUserHierarchyGroupResponse'
  { _cuhgrrsHierarchyGroupARN ::
      !( Maybe
           Text
       ),
    _cuhgrrsHierarchyGroupId ::
      !( Maybe
           Text
       ),
    _cuhgrrsResponseStatus ::
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

-- | Creates a value of 'CreateUserHierarchyGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuhgrrsHierarchyGroupARN' - The Amazon Resource Name (ARN) of the hierarchy group.
--
-- * 'cuhgrrsHierarchyGroupId' - The identifier of the hierarchy group.
--
-- * 'cuhgrrsResponseStatus' - -- | The response status code.
createUserHierarchyGroupResponse ::
  -- | 'cuhgrrsResponseStatus'
  Int ->
  CreateUserHierarchyGroupResponse
createUserHierarchyGroupResponse pResponseStatus_ =
  CreateUserHierarchyGroupResponse'
    { _cuhgrrsHierarchyGroupARN =
        Nothing,
      _cuhgrrsHierarchyGroupId = Nothing,
      _cuhgrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the hierarchy group.
cuhgrrsHierarchyGroupARN :: Lens' CreateUserHierarchyGroupResponse (Maybe Text)
cuhgrrsHierarchyGroupARN = lens _cuhgrrsHierarchyGroupARN (\s a -> s {_cuhgrrsHierarchyGroupARN = a})

-- | The identifier of the hierarchy group.
cuhgrrsHierarchyGroupId :: Lens' CreateUserHierarchyGroupResponse (Maybe Text)
cuhgrrsHierarchyGroupId = lens _cuhgrrsHierarchyGroupId (\s a -> s {_cuhgrrsHierarchyGroupId = a})

-- | -- | The response status code.
cuhgrrsResponseStatus :: Lens' CreateUserHierarchyGroupResponse Int
cuhgrrsResponseStatus = lens _cuhgrrsResponseStatus (\s a -> s {_cuhgrrsResponseStatus = a})

instance NFData CreateUserHierarchyGroupResponse
