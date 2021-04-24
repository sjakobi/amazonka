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
-- Module      : Network.AWS.Greengrass.GetGroupVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a group version.
module Network.AWS.Greengrass.GetGroupVersion
  ( -- * Creating a Request
    getGroupVersion,
    GetGroupVersion,

    -- * Request Lenses
    ggvGroupVersionId,
    ggvGroupId,

    -- * Destructuring the Response
    getGroupVersionResponse,
    GetGroupVersionResponse,

    -- * Response Lenses
    ggvrrsCreationTimestamp,
    ggvrrsARN,
    ggvrrsId,
    ggvrrsVersion,
    ggvrrsDefinition,
    ggvrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getGroupVersion' smart constructor.
data GetGroupVersion = GetGroupVersion'
  { _ggvGroupVersionId ::
      !Text,
    _ggvGroupId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroupVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggvGroupVersionId' - The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object.
--
-- * 'ggvGroupId' - The ID of the Greengrass group.
getGroupVersion ::
  -- | 'ggvGroupVersionId'
  Text ->
  -- | 'ggvGroupId'
  Text ->
  GetGroupVersion
getGroupVersion pGroupVersionId_ pGroupId_ =
  GetGroupVersion'
    { _ggvGroupVersionId =
        pGroupVersionId_,
      _ggvGroupId = pGroupId_
    }

-- | The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object.
ggvGroupVersionId :: Lens' GetGroupVersion Text
ggvGroupVersionId = lens _ggvGroupVersionId (\s a -> s {_ggvGroupVersionId = a})

-- | The ID of the Greengrass group.
ggvGroupId :: Lens' GetGroupVersion Text
ggvGroupId = lens _ggvGroupId (\s a -> s {_ggvGroupId = a})

instance AWSRequest GetGroupVersion where
  type Rs GetGroupVersion = GetGroupVersionResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetGroupVersionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Version")
            <*> (x .?> "Definition")
            <*> (pure (fromEnum s))
      )

instance Hashable GetGroupVersion

instance NFData GetGroupVersion

instance ToHeaders GetGroupVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetGroupVersion where
  toPath GetGroupVersion' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _ggvGroupId,
        "/versions/",
        toBS _ggvGroupVersionId
      ]

instance ToQuery GetGroupVersion where
  toQuery = const mempty

-- | /See:/ 'getGroupVersionResponse' smart constructor.
data GetGroupVersionResponse = GetGroupVersionResponse'
  { _ggvrrsCreationTimestamp ::
      !(Maybe Text),
    _ggvrrsARN ::
      !(Maybe Text),
    _ggvrrsId ::
      !(Maybe Text),
    _ggvrrsVersion ::
      !(Maybe Text),
    _ggvrrsDefinition ::
      !(Maybe GroupVersion),
    _ggvrrsResponseStatus ::
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

-- | Creates a value of 'GetGroupVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggvrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the group version was created.
--
-- * 'ggvrrsARN' - The ARN of the group version.
--
-- * 'ggvrrsId' - The ID of the group that the version is associated with.
--
-- * 'ggvrrsVersion' - The ID of the group version.
--
-- * 'ggvrrsDefinition' - Information about the group version definition.
--
-- * 'ggvrrsResponseStatus' - -- | The response status code.
getGroupVersionResponse ::
  -- | 'ggvrrsResponseStatus'
  Int ->
  GetGroupVersionResponse
getGroupVersionResponse pResponseStatus_ =
  GetGroupVersionResponse'
    { _ggvrrsCreationTimestamp =
        Nothing,
      _ggvrrsARN = Nothing,
      _ggvrrsId = Nothing,
      _ggvrrsVersion = Nothing,
      _ggvrrsDefinition = Nothing,
      _ggvrrsResponseStatus = pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the group version was created.
ggvrrsCreationTimestamp :: Lens' GetGroupVersionResponse (Maybe Text)
ggvrrsCreationTimestamp = lens _ggvrrsCreationTimestamp (\s a -> s {_ggvrrsCreationTimestamp = a})

-- | The ARN of the group version.
ggvrrsARN :: Lens' GetGroupVersionResponse (Maybe Text)
ggvrrsARN = lens _ggvrrsARN (\s a -> s {_ggvrrsARN = a})

-- | The ID of the group that the version is associated with.
ggvrrsId :: Lens' GetGroupVersionResponse (Maybe Text)
ggvrrsId = lens _ggvrrsId (\s a -> s {_ggvrrsId = a})

-- | The ID of the group version.
ggvrrsVersion :: Lens' GetGroupVersionResponse (Maybe Text)
ggvrrsVersion = lens _ggvrrsVersion (\s a -> s {_ggvrrsVersion = a})

-- | Information about the group version definition.
ggvrrsDefinition :: Lens' GetGroupVersionResponse (Maybe GroupVersion)
ggvrrsDefinition = lens _ggvrrsDefinition (\s a -> s {_ggvrrsDefinition = a})

-- | -- | The response status code.
ggvrrsResponseStatus :: Lens' GetGroupVersionResponse Int
ggvrrsResponseStatus = lens _ggvrrsResponseStatus (\s a -> s {_ggvrrsResponseStatus = a})

instance NFData GetGroupVersionResponse
