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
-- Module      : Network.AWS.IoT.CreateThingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a thing group.
module Network.AWS.IoT.CreateThingGroup
  ( -- * Creating a Request
    createThingGroup,
    CreateThingGroup,

    -- * Request Lenses
    ctgParentGroupName,
    ctgTags,
    ctgThingGroupProperties,
    ctgThingGroupName,

    -- * Destructuring the Response
    createThingGroupResponse,
    CreateThingGroupResponse,

    -- * Response Lenses
    ctgrrsThingGroupARN,
    ctgrrsThingGroupName,
    ctgrrsThingGroupId,
    ctgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createThingGroup' smart constructor.
data CreateThingGroup = CreateThingGroup'
  { _ctgParentGroupName ::
      !(Maybe Text),
    _ctgTags :: !(Maybe [Tag]),
    _ctgThingGroupProperties ::
      !(Maybe ThingGroupProperties),
    _ctgThingGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateThingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgParentGroupName' - The name of the parent thing group.
--
-- * 'ctgTags' - Metadata which can be used to manage the thing group.
--
-- * 'ctgThingGroupProperties' - The thing group properties.
--
-- * 'ctgThingGroupName' - The thing group name to create.
createThingGroup ::
  -- | 'ctgThingGroupName'
  Text ->
  CreateThingGroup
createThingGroup pThingGroupName_ =
  CreateThingGroup'
    { _ctgParentGroupName = Nothing,
      _ctgTags = Nothing,
      _ctgThingGroupProperties = Nothing,
      _ctgThingGroupName = pThingGroupName_
    }

-- | The name of the parent thing group.
ctgParentGroupName :: Lens' CreateThingGroup (Maybe Text)
ctgParentGroupName = lens _ctgParentGroupName (\s a -> s {_ctgParentGroupName = a})

-- | Metadata which can be used to manage the thing group.
ctgTags :: Lens' CreateThingGroup [Tag]
ctgTags = lens _ctgTags (\s a -> s {_ctgTags = a}) . _Default . _Coerce

-- | The thing group properties.
ctgThingGroupProperties :: Lens' CreateThingGroup (Maybe ThingGroupProperties)
ctgThingGroupProperties = lens _ctgThingGroupProperties (\s a -> s {_ctgThingGroupProperties = a})

-- | The thing group name to create.
ctgThingGroupName :: Lens' CreateThingGroup Text
ctgThingGroupName = lens _ctgThingGroupName (\s a -> s {_ctgThingGroupName = a})

instance AWSRequest CreateThingGroup where
  type Rs CreateThingGroup = CreateThingGroupResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateThingGroupResponse'
            <$> (x .?> "thingGroupArn")
            <*> (x .?> "thingGroupName")
            <*> (x .?> "thingGroupId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateThingGroup

instance NFData CreateThingGroup

instance ToHeaders CreateThingGroup where
  toHeaders = const mempty

instance ToJSON CreateThingGroup where
  toJSON CreateThingGroup' {..} =
    object
      ( catMaybes
          [ ("parentGroupName" .=) <$> _ctgParentGroupName,
            ("tags" .=) <$> _ctgTags,
            ("thingGroupProperties" .=)
              <$> _ctgThingGroupProperties
          ]
      )

instance ToPath CreateThingGroup where
  toPath CreateThingGroup' {..} =
    mconcat ["/thing-groups/", toBS _ctgThingGroupName]

instance ToQuery CreateThingGroup where
  toQuery = const mempty

-- | /See:/ 'createThingGroupResponse' smart constructor.
data CreateThingGroupResponse = CreateThingGroupResponse'
  { _ctgrrsThingGroupARN ::
      !(Maybe Text),
    _ctgrrsThingGroupName ::
      !(Maybe Text),
    _ctgrrsThingGroupId ::
      !(Maybe Text),
    _ctgrrsResponseStatus ::
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

-- | Creates a value of 'CreateThingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgrrsThingGroupARN' - The thing group ARN.
--
-- * 'ctgrrsThingGroupName' - The thing group name.
--
-- * 'ctgrrsThingGroupId' - The thing group ID.
--
-- * 'ctgrrsResponseStatus' - -- | The response status code.
createThingGroupResponse ::
  -- | 'ctgrrsResponseStatus'
  Int ->
  CreateThingGroupResponse
createThingGroupResponse pResponseStatus_ =
  CreateThingGroupResponse'
    { _ctgrrsThingGroupARN =
        Nothing,
      _ctgrrsThingGroupName = Nothing,
      _ctgrrsThingGroupId = Nothing,
      _ctgrrsResponseStatus = pResponseStatus_
    }

-- | The thing group ARN.
ctgrrsThingGroupARN :: Lens' CreateThingGroupResponse (Maybe Text)
ctgrrsThingGroupARN = lens _ctgrrsThingGroupARN (\s a -> s {_ctgrrsThingGroupARN = a})

-- | The thing group name.
ctgrrsThingGroupName :: Lens' CreateThingGroupResponse (Maybe Text)
ctgrrsThingGroupName = lens _ctgrrsThingGroupName (\s a -> s {_ctgrrsThingGroupName = a})

-- | The thing group ID.
ctgrrsThingGroupId :: Lens' CreateThingGroupResponse (Maybe Text)
ctgrrsThingGroupId = lens _ctgrrsThingGroupId (\s a -> s {_ctgrrsThingGroupId = a})

-- | -- | The response status code.
ctgrrsResponseStatus :: Lens' CreateThingGroupResponse Int
ctgrrsResponseStatus = lens _ctgrrsResponseStatus (\s a -> s {_ctgrrsResponseStatus = a})

instance NFData CreateThingGroupResponse
