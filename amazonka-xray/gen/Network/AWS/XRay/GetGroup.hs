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
-- Module      : Network.AWS.XRay.GetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves group resource details.
module Network.AWS.XRay.GetGroup
  ( -- * Creating a Request
    getGroup,
    GetGroup,

    -- * Request Lenses
    ggGroupName,
    ggGroupARN,

    -- * Destructuring the Response
    getGroupResponse,
    GetGroupResponse,

    -- * Response Lenses
    grsGroup,
    grsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getGroup' smart constructor.
data GetGroup = GetGroup'
  { _ggGroupName ::
      !(Maybe Text),
    _ggGroupARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggGroupName' - The case-sensitive name of the group.
--
-- * 'ggGroupARN' - The ARN of the group that was generated on creation.
getGroup ::
  GetGroup
getGroup =
  GetGroup'
    { _ggGroupName = Nothing,
      _ggGroupARN = Nothing
    }

-- | The case-sensitive name of the group.
ggGroupName :: Lens' GetGroup (Maybe Text)
ggGroupName = lens _ggGroupName (\s a -> s {_ggGroupName = a})

-- | The ARN of the group that was generated on creation.
ggGroupARN :: Lens' GetGroup (Maybe Text)
ggGroupARN = lens _ggGroupARN (\s a -> s {_ggGroupARN = a})

instance AWSRequest GetGroup where
  type Rs GetGroup = GetGroupResponse
  request = postJSON xRay
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
            ("GroupARN" .=) <$> _ggGroupARN
          ]
      )

instance ToPath GetGroup where
  toPath = const "/GetGroup"

instance ToQuery GetGroup where
  toQuery = const mempty

-- | /See:/ 'getGroupResponse' smart constructor.
data GetGroupResponse = GetGroupResponse'
  { _grsGroup ::
      !(Maybe Group),
    _grsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsGroup' - The group that was requested. Contains the name of the group, the ARN of the group, the filter expression, and the insight configuration assigned to the group.
--
-- * 'grsResponseStatus' - -- | The response status code.
getGroupResponse ::
  -- | 'grsResponseStatus'
  Int ->
  GetGroupResponse
getGroupResponse pResponseStatus_ =
  GetGroupResponse'
    { _grsGroup = Nothing,
      _grsResponseStatus = pResponseStatus_
    }

-- | The group that was requested. Contains the name of the group, the ARN of the group, the filter expression, and the insight configuration assigned to the group.
grsGroup :: Lens' GetGroupResponse (Maybe Group)
grsGroup = lens _grsGroup (\s a -> s {_grsGroup = a})

-- | -- | The response status code.
grsResponseStatus :: Lens' GetGroupResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

instance NFData GetGroupResponse
