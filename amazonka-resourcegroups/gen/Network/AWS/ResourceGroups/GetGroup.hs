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
-- Module      : Network.AWS.ResourceGroups.GetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specified resource group.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:GetGroup@
module Network.AWS.ResourceGroups.GetGroup
  ( -- * Creating a Request
    getGroup,
    GetGroup,

    -- * Request Lenses
    ggGroupName,
    ggGroup,

    -- * Destructuring the Response
    getGroupResponse,
    GetGroupResponse,

    -- * Response Lenses
    ggrrsGroup,
    ggrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'getGroup' smart constructor.
data GetGroup = GetGroup'
  { _ggGroupName ::
      !(Maybe Text),
    _ggGroup :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggGroupName' - Deprecated - don't use this parameter. Use @Group@ instead.
--
-- * 'ggGroup' - The name or the ARN of the resource group to retrieve.
getGroup ::
  GetGroup
getGroup =
  GetGroup'
    { _ggGroupName = Nothing,
      _ggGroup = Nothing
    }

-- | Deprecated - don't use this parameter. Use @Group@ instead.
ggGroupName :: Lens' GetGroup (Maybe Text)
ggGroupName = lens _ggGroupName (\s a -> s {_ggGroupName = a})

-- | The name or the ARN of the resource group to retrieve.
ggGroup :: Lens' GetGroup (Maybe Text)
ggGroup = lens _ggGroup (\s a -> s {_ggGroup = a})

instance AWSRequest GetGroup where
  type Rs GetGroup = GetGroupResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          GetGroupResponse'
            <$> (x .?> "Group") <*> (pure (fromEnum s))
      )

instance Hashable GetGroup

instance NFData GetGroup

instance ToHeaders GetGroup where
  toHeaders = const mempty

instance ToJSON GetGroup where
  toJSON GetGroup' {..} =
    object
      ( catMaybes
          [ ("GroupName" .=) <$> _ggGroupName,
            ("Group" .=) <$> _ggGroup
          ]
      )

instance ToPath GetGroup where
  toPath = const "/get-group"

instance ToQuery GetGroup where
  toQuery = const mempty

-- | /See:/ 'getGroupResponse' smart constructor.
data GetGroupResponse = GetGroupResponse'
  { _ggrrsGroup ::
      !(Maybe Group),
    _ggrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggrrsGroup' - A full description of the resource group.
--
-- * 'ggrrsResponseStatus' - -- | The response status code.
getGroupResponse ::
  -- | 'ggrrsResponseStatus'
  Int ->
  GetGroupResponse
getGroupResponse pResponseStatus_ =
  GetGroupResponse'
    { _ggrrsGroup = Nothing,
      _ggrrsResponseStatus = pResponseStatus_
    }

-- | A full description of the resource group.
ggrrsGroup :: Lens' GetGroupResponse (Maybe Group)
ggrrsGroup = lens _ggrrsGroup (\s a -> s {_ggrrsGroup = a})

-- | -- | The response status code.
ggrrsResponseStatus :: Lens' GetGroupResponse Int
ggrrsResponseStatus = lens _ggrrsResponseStatus (\s a -> s {_ggrrsResponseStatus = a})

instance NFData GetGroupResponse
