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
-- Module      : Network.AWS.XRay.UpdateGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a group resource.
module Network.AWS.XRay.UpdateGroup
  ( -- * Creating a Request
    updateGroup,
    UpdateGroup,

    -- * Request Lenses
    ugGroupName,
    ugInsightsConfiguration,
    ugFilterExpression,
    ugGroupARN,

    -- * Destructuring the Response
    updateGroupResponse,
    UpdateGroupResponse,

    -- * Response Lenses
    ugrrsGroup,
    ugrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'updateGroup' smart constructor.
data UpdateGroup = UpdateGroup'
  { _ugGroupName ::
      !(Maybe Text),
    _ugInsightsConfiguration ::
      !(Maybe InsightsConfiguration),
    _ugFilterExpression :: !(Maybe Text),
    _ugGroupARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugGroupName' - The case-sensitive name of the group.
--
-- * 'ugInsightsConfiguration' - The structure containing configurations related to insights.     * The InsightsEnabled boolean can be set to true to enable insights for the group or false to disable insights for the group.     * The NotifcationsEnabled boolean can be set to true to enable insights notifications for the group. Notifications can only be enabled on a group with InsightsEnabled set to true.
--
-- * 'ugFilterExpression' - The updated filter expression defining criteria by which to group traces.
--
-- * 'ugGroupARN' - The ARN that was generated upon creation.
updateGroup ::
  UpdateGroup
updateGroup =
  UpdateGroup'
    { _ugGroupName = Nothing,
      _ugInsightsConfiguration = Nothing,
      _ugFilterExpression = Nothing,
      _ugGroupARN = Nothing
    }

-- | The case-sensitive name of the group.
ugGroupName :: Lens' UpdateGroup (Maybe Text)
ugGroupName = lens _ugGroupName (\s a -> s {_ugGroupName = a})

-- | The structure containing configurations related to insights.     * The InsightsEnabled boolean can be set to true to enable insights for the group or false to disable insights for the group.     * The NotifcationsEnabled boolean can be set to true to enable insights notifications for the group. Notifications can only be enabled on a group with InsightsEnabled set to true.
ugInsightsConfiguration :: Lens' UpdateGroup (Maybe InsightsConfiguration)
ugInsightsConfiguration = lens _ugInsightsConfiguration (\s a -> s {_ugInsightsConfiguration = a})

-- | The updated filter expression defining criteria by which to group traces.
ugFilterExpression :: Lens' UpdateGroup (Maybe Text)
ugFilterExpression = lens _ugFilterExpression (\s a -> s {_ugFilterExpression = a})

-- | The ARN that was generated upon creation.
ugGroupARN :: Lens' UpdateGroup (Maybe Text)
ugGroupARN = lens _ugGroupARN (\s a -> s {_ugGroupARN = a})

instance AWSRequest UpdateGroup where
  type Rs UpdateGroup = UpdateGroupResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          UpdateGroupResponse'
            <$> (x .?> "Group") <*> (pure (fromEnum s))
      )

instance Hashable UpdateGroup

instance NFData UpdateGroup

instance ToHeaders UpdateGroup where
  toHeaders = const mempty

instance ToJSON UpdateGroup where
  toJSON UpdateGroup' {..} =
    object
      ( catMaybes
          [ ("GroupName" .=) <$> _ugGroupName,
            ("InsightsConfiguration" .=)
              <$> _ugInsightsConfiguration,
            ("FilterExpression" .=) <$> _ugFilterExpression,
            ("GroupARN" .=) <$> _ugGroupARN
          ]
      )

instance ToPath UpdateGroup where
  toPath = const "/UpdateGroup"

instance ToQuery UpdateGroup where
  toQuery = const mempty

-- | /See:/ 'updateGroupResponse' smart constructor.
data UpdateGroupResponse = UpdateGroupResponse'
  { _ugrrsGroup ::
      !(Maybe Group),
    _ugrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugrrsGroup' - The group that was updated. Contains the name of the group that was updated, the ARN of the group that was updated, the updated filter expression, and the updated insight configuration assigned to the group.
--
-- * 'ugrrsResponseStatus' - -- | The response status code.
updateGroupResponse ::
  -- | 'ugrrsResponseStatus'
  Int ->
  UpdateGroupResponse
updateGroupResponse pResponseStatus_ =
  UpdateGroupResponse'
    { _ugrrsGroup = Nothing,
      _ugrrsResponseStatus = pResponseStatus_
    }

-- | The group that was updated. Contains the name of the group that was updated, the ARN of the group that was updated, the updated filter expression, and the updated insight configuration assigned to the group.
ugrrsGroup :: Lens' UpdateGroupResponse (Maybe Group)
ugrrsGroup = lens _ugrrsGroup (\s a -> s {_ugrrsGroup = a})

-- | -- | The response status code.
ugrrsResponseStatus :: Lens' UpdateGroupResponse Int
ugrrsResponseStatus = lens _ugrrsResponseStatus (\s a -> s {_ugrrsResponseStatus = a})

instance NFData UpdateGroupResponse
