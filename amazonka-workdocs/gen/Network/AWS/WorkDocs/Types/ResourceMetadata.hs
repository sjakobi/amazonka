{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.ResourceMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ResourceMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkDocs.Types.ResourceType
import Network.AWS.WorkDocs.Types.UserMetadata

-- | Describes the metadata of a resource.
--
--
--
-- /See:/ 'resourceMetadata' smart constructor.
data ResourceMetadata = ResourceMetadata'
  { _rmOriginalName ::
      !(Maybe Text),
    _rmId :: !(Maybe Text),
    _rmVersionId :: !(Maybe Text),
    _rmName :: !(Maybe Text),
    _rmParentId :: !(Maybe Text),
    _rmOwner :: !(Maybe UserMetadata),
    _rmType :: !(Maybe ResourceType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmOriginalName' - The original name of the resource before a rename operation.
--
-- * 'rmId' - The ID of the resource.
--
-- * 'rmVersionId' - The version ID of the resource. This is an optional field and is filled for action on document version.
--
-- * 'rmName' - The name of the resource.
--
-- * 'rmParentId' - The parent ID of the resource before a rename operation.
--
-- * 'rmOwner' - The owner of the resource.
--
-- * 'rmType' - The type of resource.
resourceMetadata ::
  ResourceMetadata
resourceMetadata =
  ResourceMetadata'
    { _rmOriginalName = Nothing,
      _rmId = Nothing,
      _rmVersionId = Nothing,
      _rmName = Nothing,
      _rmParentId = Nothing,
      _rmOwner = Nothing,
      _rmType = Nothing
    }

-- | The original name of the resource before a rename operation.
rmOriginalName :: Lens' ResourceMetadata (Maybe Text)
rmOriginalName = lens _rmOriginalName (\s a -> s {_rmOriginalName = a})

-- | The ID of the resource.
rmId :: Lens' ResourceMetadata (Maybe Text)
rmId = lens _rmId (\s a -> s {_rmId = a})

-- | The version ID of the resource. This is an optional field and is filled for action on document version.
rmVersionId :: Lens' ResourceMetadata (Maybe Text)
rmVersionId = lens _rmVersionId (\s a -> s {_rmVersionId = a})

-- | The name of the resource.
rmName :: Lens' ResourceMetadata (Maybe Text)
rmName = lens _rmName (\s a -> s {_rmName = a})

-- | The parent ID of the resource before a rename operation.
rmParentId :: Lens' ResourceMetadata (Maybe Text)
rmParentId = lens _rmParentId (\s a -> s {_rmParentId = a})

-- | The owner of the resource.
rmOwner :: Lens' ResourceMetadata (Maybe UserMetadata)
rmOwner = lens _rmOwner (\s a -> s {_rmOwner = a})

-- | The type of resource.
rmType :: Lens' ResourceMetadata (Maybe ResourceType)
rmType = lens _rmType (\s a -> s {_rmType = a})

instance FromJSON ResourceMetadata where
  parseJSON =
    withObject
      "ResourceMetadata"
      ( \x ->
          ResourceMetadata'
            <$> (x .:? "OriginalName")
            <*> (x .:? "Id")
            <*> (x .:? "VersionId")
            <*> (x .:? "Name")
            <*> (x .:? "ParentId")
            <*> (x .:? "Owner")
            <*> (x .:? "Type")
      )

instance Hashable ResourceMetadata

instance NFData ResourceMetadata
