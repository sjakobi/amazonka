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
-- Module      : Network.AWS.IoT.RemoveThingFromThingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove the specified thing from the specified group.
--
--
-- You must specify either a @thingGroupArn@ or a @thingGroupName@ to identify the thing group and either a @thingArn@ or a @thingName@ to identify the thing to remove from the thing group.
module Network.AWS.IoT.RemoveThingFromThingGroup
  ( -- * Creating a Request
    removeThingFromThingGroup,
    RemoveThingFromThingGroup,

    -- * Request Lenses
    rtftgThingARN,
    rtftgThingGroupARN,
    rtftgThingName,
    rtftgThingGroupName,

    -- * Destructuring the Response
    removeThingFromThingGroupResponse,
    RemoveThingFromThingGroupResponse,

    -- * Response Lenses
    rtftgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'removeThingFromThingGroup' smart constructor.
data RemoveThingFromThingGroup = RemoveThingFromThingGroup'
  { _rtftgThingARN ::
      !(Maybe Text),
    _rtftgThingGroupARN ::
      !(Maybe Text),
    _rtftgThingName ::
      !(Maybe Text),
    _rtftgThingGroupName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RemoveThingFromThingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtftgThingARN' - The ARN of the thing to remove from the group.
--
-- * 'rtftgThingGroupARN' - The group ARN.
--
-- * 'rtftgThingName' - The name of the thing to remove from the group.
--
-- * 'rtftgThingGroupName' - The group name.
removeThingFromThingGroup ::
  RemoveThingFromThingGroup
removeThingFromThingGroup =
  RemoveThingFromThingGroup'
    { _rtftgThingARN =
        Nothing,
      _rtftgThingGroupARN = Nothing,
      _rtftgThingName = Nothing,
      _rtftgThingGroupName = Nothing
    }

-- | The ARN of the thing to remove from the group.
rtftgThingARN :: Lens' RemoveThingFromThingGroup (Maybe Text)
rtftgThingARN = lens _rtftgThingARN (\s a -> s {_rtftgThingARN = a})

-- | The group ARN.
rtftgThingGroupARN :: Lens' RemoveThingFromThingGroup (Maybe Text)
rtftgThingGroupARN = lens _rtftgThingGroupARN (\s a -> s {_rtftgThingGroupARN = a})

-- | The name of the thing to remove from the group.
rtftgThingName :: Lens' RemoveThingFromThingGroup (Maybe Text)
rtftgThingName = lens _rtftgThingName (\s a -> s {_rtftgThingName = a})

-- | The group name.
rtftgThingGroupName :: Lens' RemoveThingFromThingGroup (Maybe Text)
rtftgThingGroupName = lens _rtftgThingGroupName (\s a -> s {_rtftgThingGroupName = a})

instance AWSRequest RemoveThingFromThingGroup where
  type
    Rs RemoveThingFromThingGroup =
      RemoveThingFromThingGroupResponse
  request = putJSON ioT
  response =
    receiveEmpty
      ( \s h x ->
          RemoveThingFromThingGroupResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable RemoveThingFromThingGroup

instance NFData RemoveThingFromThingGroup

instance ToHeaders RemoveThingFromThingGroup where
  toHeaders = const mempty

instance ToJSON RemoveThingFromThingGroup where
  toJSON RemoveThingFromThingGroup' {..} =
    object
      ( catMaybes
          [ ("thingArn" .=) <$> _rtftgThingARN,
            ("thingGroupArn" .=) <$> _rtftgThingGroupARN,
            ("thingName" .=) <$> _rtftgThingName,
            ("thingGroupName" .=) <$> _rtftgThingGroupName
          ]
      )

instance ToPath RemoveThingFromThingGroup where
  toPath =
    const "/thing-groups/removeThingFromThingGroup"

instance ToQuery RemoveThingFromThingGroup where
  toQuery = const mempty

-- | /See:/ 'removeThingFromThingGroupResponse' smart constructor.
newtype RemoveThingFromThingGroupResponse = RemoveThingFromThingGroupResponse'
  { _rtftgrrsResponseStatus ::
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

-- | Creates a value of 'RemoveThingFromThingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtftgrrsResponseStatus' - -- | The response status code.
removeThingFromThingGroupResponse ::
  -- | 'rtftgrrsResponseStatus'
  Int ->
  RemoveThingFromThingGroupResponse
removeThingFromThingGroupResponse pResponseStatus_ =
  RemoveThingFromThingGroupResponse'
    { _rtftgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
rtftgrrsResponseStatus :: Lens' RemoveThingFromThingGroupResponse Int
rtftgrrsResponseStatus = lens _rtftgrrsResponseStatus (\s a -> s {_rtftgrrsResponseStatus = a})

instance NFData RemoveThingFromThingGroupResponse
