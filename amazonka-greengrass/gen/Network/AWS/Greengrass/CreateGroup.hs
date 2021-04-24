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
-- Module      : Network.AWS.Greengrass.CreateGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups.
module Network.AWS.Greengrass.CreateGroup
  ( -- * Creating a Request
    createGroup,
    CreateGroup,

    -- * Request Lenses
    cgName,
    cgInitialVersion,
    cgTags,
    cgAmznClientToken,

    -- * Destructuring the Response
    createGroupResponse,
    CreateGroupResponse,

    -- * Response Lenses
    cgrrsCreationTimestamp,
    cgrrsLatestVersionARN,
    cgrrsLatestVersion,
    cgrrsARN,
    cgrrsId,
    cgrrsName,
    cgrrsLastUpdatedTimestamp,
    cgrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createGroup' smart constructor.
data CreateGroup = CreateGroup'
  { _cgName ::
      !(Maybe Text),
    _cgInitialVersion :: !(Maybe GroupVersion),
    _cgTags :: !(Maybe (Map Text Text)),
    _cgAmznClientToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgName' - The name of the group.
--
-- * 'cgInitialVersion' - Information about the initial version of the group.
--
-- * 'cgTags' - Tag(s) to add to the new resource.
--
-- * 'cgAmznClientToken' - A client token used to correlate requests and responses.
createGroup ::
  CreateGroup
createGroup =
  CreateGroup'
    { _cgName = Nothing,
      _cgInitialVersion = Nothing,
      _cgTags = Nothing,
      _cgAmznClientToken = Nothing
    }

-- | The name of the group.
cgName :: Lens' CreateGroup (Maybe Text)
cgName = lens _cgName (\s a -> s {_cgName = a})

-- | Information about the initial version of the group.
cgInitialVersion :: Lens' CreateGroup (Maybe GroupVersion)
cgInitialVersion = lens _cgInitialVersion (\s a -> s {_cgInitialVersion = a})

-- | Tag(s) to add to the new resource.
cgTags :: Lens' CreateGroup (HashMap Text Text)
cgTags = lens _cgTags (\s a -> s {_cgTags = a}) . _Default . _Map

-- | A client token used to correlate requests and responses.
cgAmznClientToken :: Lens' CreateGroup (Maybe Text)
cgAmznClientToken = lens _cgAmznClientToken (\s a -> s {_cgAmznClientToken = a})

instance AWSRequest CreateGroup where
  type Rs CreateGroup = CreateGroupResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateGroupResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "LatestVersionArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdatedTimestamp")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateGroup

instance NFData CreateGroup

instance ToHeaders CreateGroup where
  toHeaders CreateGroup' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _cgAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateGroup where
  toJSON CreateGroup' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _cgName,
            ("InitialVersion" .=) <$> _cgInitialVersion,
            ("tags" .=) <$> _cgTags
          ]
      )

instance ToPath CreateGroup where
  toPath = const "/greengrass/groups"

instance ToQuery CreateGroup where
  toQuery = const mempty

-- | /See:/ 'createGroupResponse' smart constructor.
data CreateGroupResponse = CreateGroupResponse'
  { _cgrrsCreationTimestamp ::
      !(Maybe Text),
    _cgrrsLatestVersionARN ::
      !(Maybe Text),
    _cgrrsLatestVersion ::
      !(Maybe Text),
    _cgrrsARN :: !(Maybe Text),
    _cgrrsId :: !(Maybe Text),
    _cgrrsName :: !(Maybe Text),
    _cgrrsLastUpdatedTimestamp ::
      !(Maybe Text),
    _cgrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'cgrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'cgrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'cgrrsARN' - The ARN of the definition.
--
-- * 'cgrrsId' - The ID of the definition.
--
-- * 'cgrrsName' - The name of the definition.
--
-- * 'cgrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'cgrrsResponseStatus' - -- | The response status code.
createGroupResponse ::
  -- | 'cgrrsResponseStatus'
  Int ->
  CreateGroupResponse
createGroupResponse pResponseStatus_ =
  CreateGroupResponse'
    { _cgrrsCreationTimestamp =
        Nothing,
      _cgrrsLatestVersionARN = Nothing,
      _cgrrsLatestVersion = Nothing,
      _cgrrsARN = Nothing,
      _cgrrsId = Nothing,
      _cgrrsName = Nothing,
      _cgrrsLastUpdatedTimestamp = Nothing,
      _cgrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
cgrrsCreationTimestamp :: Lens' CreateGroupResponse (Maybe Text)
cgrrsCreationTimestamp = lens _cgrrsCreationTimestamp (\s a -> s {_cgrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
cgrrsLatestVersionARN :: Lens' CreateGroupResponse (Maybe Text)
cgrrsLatestVersionARN = lens _cgrrsLatestVersionARN (\s a -> s {_cgrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
cgrrsLatestVersion :: Lens' CreateGroupResponse (Maybe Text)
cgrrsLatestVersion = lens _cgrrsLatestVersion (\s a -> s {_cgrrsLatestVersion = a})

-- | The ARN of the definition.
cgrrsARN :: Lens' CreateGroupResponse (Maybe Text)
cgrrsARN = lens _cgrrsARN (\s a -> s {_cgrrsARN = a})

-- | The ID of the definition.
cgrrsId :: Lens' CreateGroupResponse (Maybe Text)
cgrrsId = lens _cgrrsId (\s a -> s {_cgrrsId = a})

-- | The name of the definition.
cgrrsName :: Lens' CreateGroupResponse (Maybe Text)
cgrrsName = lens _cgrrsName (\s a -> s {_cgrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
cgrrsLastUpdatedTimestamp :: Lens' CreateGroupResponse (Maybe Text)
cgrrsLastUpdatedTimestamp = lens _cgrrsLastUpdatedTimestamp (\s a -> s {_cgrrsLastUpdatedTimestamp = a})

-- | -- | The response status code.
cgrrsResponseStatus :: Lens' CreateGroupResponse Int
cgrrsResponseStatus = lens _cgrrsResponseStatus (\s a -> s {_cgrrsResponseStatus = a})

instance NFData CreateGroupResponse
