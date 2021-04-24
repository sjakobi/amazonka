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
-- Module      : Network.AWS.ResourceGroups.CreateGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a resource group with the specified name and description. You can optionally include a resource query, or a service configuration. For more information about constructing a resource query, see <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups> . For more information about service configurations, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:CreateGroup@
module Network.AWS.ResourceGroups.CreateGroup
  ( -- * Creating a Request
    createGroup,
    CreateGroup,

    -- * Request Lenses
    cgConfiguration,
    cgTags,
    cgDescription,
    cgResourceQuery,
    cgName,

    -- * Destructuring the Response
    createGroupResponse,
    CreateGroupResponse,

    -- * Response Lenses
    cgrrsGroupConfiguration,
    cgrrsGroup,
    cgrrsTags,
    cgrrsResourceQuery,
    cgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'createGroup' smart constructor.
data CreateGroup = CreateGroup'
  { _cgConfiguration ::
      !(Maybe [GroupConfigurationItem]),
    _cgTags :: !(Maybe (Map Text Text)),
    _cgDescription :: !(Maybe Text),
    _cgResourceQuery :: !(Maybe ResourceQuery),
    _cgName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgConfiguration' - A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. A configuration is an array of 'GroupConfigurationItem' elements. For details about the syntax of service configurations, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
--
-- * 'cgTags' - The tags to add to the group. A tag is key-value pair string.
--
-- * 'cgDescription' - The description of the resource group. Descriptions can consist of letters, numbers, hyphens, underscores, periods, and spaces.
--
-- * 'cgResourceQuery' - The resource query that determines which AWS resources are members of this group. For more information about resource queries, see <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups> .
--
-- * 'cgName' - The name of the group, which is the identifier of the group in other operations. You can't change the name of a resource group after you create it. A resource group name can consist of letters, numbers, hyphens, periods, and underscores. The name cannot start with @AWS@ or @aws@ ; these are reserved. A resource group name must be unique within each AWS Region in your AWS account.
createGroup ::
  -- | 'cgName'
  Text ->
  CreateGroup
createGroup pName_ =
  CreateGroup'
    { _cgConfiguration = Nothing,
      _cgTags = Nothing,
      _cgDescription = Nothing,
      _cgResourceQuery = Nothing,
      _cgName = pName_
    }

-- | A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. A configuration is an array of 'GroupConfigurationItem' elements. For details about the syntax of service configurations, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
cgConfiguration :: Lens' CreateGroup [GroupConfigurationItem]
cgConfiguration = lens _cgConfiguration (\s a -> s {_cgConfiguration = a}) . _Default . _Coerce

-- | The tags to add to the group. A tag is key-value pair string.
cgTags :: Lens' CreateGroup (HashMap Text Text)
cgTags = lens _cgTags (\s a -> s {_cgTags = a}) . _Default . _Map

-- | The description of the resource group. Descriptions can consist of letters, numbers, hyphens, underscores, periods, and spaces.
cgDescription :: Lens' CreateGroup (Maybe Text)
cgDescription = lens _cgDescription (\s a -> s {_cgDescription = a})

-- | The resource query that determines which AWS resources are members of this group. For more information about resource queries, see <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups> .
cgResourceQuery :: Lens' CreateGroup (Maybe ResourceQuery)
cgResourceQuery = lens _cgResourceQuery (\s a -> s {_cgResourceQuery = a})

-- | The name of the group, which is the identifier of the group in other operations. You can't change the name of a resource group after you create it. A resource group name can consist of letters, numbers, hyphens, periods, and underscores. The name cannot start with @AWS@ or @aws@ ; these are reserved. A resource group name must be unique within each AWS Region in your AWS account.
cgName :: Lens' CreateGroup Text
cgName = lens _cgName (\s a -> s {_cgName = a})

instance AWSRequest CreateGroup where
  type Rs CreateGroup = CreateGroupResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          CreateGroupResponse'
            <$> (x .?> "GroupConfiguration")
            <*> (x .?> "Group")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "ResourceQuery")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateGroup

instance NFData CreateGroup

instance ToHeaders CreateGroup where
  toHeaders = const mempty

instance ToJSON CreateGroup where
  toJSON CreateGroup' {..} =
    object
      ( catMaybes
          [ ("Configuration" .=) <$> _cgConfiguration,
            ("Tags" .=) <$> _cgTags,
            ("Description" .=) <$> _cgDescription,
            ("ResourceQuery" .=) <$> _cgResourceQuery,
            Just ("Name" .= _cgName)
          ]
      )

instance ToPath CreateGroup where
  toPath = const "/groups"

instance ToQuery CreateGroup where
  toQuery = const mempty

-- | /See:/ 'createGroupResponse' smart constructor.
data CreateGroupResponse = CreateGroupResponse'
  { _cgrrsGroupConfiguration ::
      !(Maybe GroupConfiguration),
    _cgrrsGroup :: !(Maybe Group),
    _cgrrsTags ::
      !(Maybe (Map Text Text)),
    _cgrrsResourceQuery ::
      !(Maybe ResourceQuery),
    _cgrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgrrsGroupConfiguration' - The service configuration associated with the resource group. For details about the syntax of a service configuration, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
--
-- * 'cgrrsGroup' - The description of the resource group.
--
-- * 'cgrrsTags' - The tags associated with the group.
--
-- * 'cgrrsResourceQuery' - The resource query associated with the group. For more information about resource queries, see <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups> .
--
-- * 'cgrrsResponseStatus' - -- | The response status code.
createGroupResponse ::
  -- | 'cgrrsResponseStatus'
  Int ->
  CreateGroupResponse
createGroupResponse pResponseStatus_ =
  CreateGroupResponse'
    { _cgrrsGroupConfiguration =
        Nothing,
      _cgrrsGroup = Nothing,
      _cgrrsTags = Nothing,
      _cgrrsResourceQuery = Nothing,
      _cgrrsResponseStatus = pResponseStatus_
    }

-- | The service configuration associated with the resource group. For details about the syntax of a service configuration, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
cgrrsGroupConfiguration :: Lens' CreateGroupResponse (Maybe GroupConfiguration)
cgrrsGroupConfiguration = lens _cgrrsGroupConfiguration (\s a -> s {_cgrrsGroupConfiguration = a})

-- | The description of the resource group.
cgrrsGroup :: Lens' CreateGroupResponse (Maybe Group)
cgrrsGroup = lens _cgrrsGroup (\s a -> s {_cgrrsGroup = a})

-- | The tags associated with the group.
cgrrsTags :: Lens' CreateGroupResponse (HashMap Text Text)
cgrrsTags = lens _cgrrsTags (\s a -> s {_cgrrsTags = a}) . _Default . _Map

-- | The resource query associated with the group. For more information about resource queries, see <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups> .
cgrrsResourceQuery :: Lens' CreateGroupResponse (Maybe ResourceQuery)
cgrrsResourceQuery = lens _cgrrsResourceQuery (\s a -> s {_cgrrsResourceQuery = a})

-- | -- | The response status code.
cgrrsResponseStatus :: Lens' CreateGroupResponse Int
cgrrsResponseStatus = lens _cgrrsResponseStatus (\s a -> s {_cgrrsResponseStatus = a})

instance NFData CreateGroupResponse
