{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.DocumentMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.DocumentMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkDocs.Types.DocumentVersionMetadata
import Network.AWS.WorkDocs.Types.ResourceStateType

-- | Describes the document.
--
--
--
-- /See:/ 'documentMetadata' smart constructor.
data DocumentMetadata = DocumentMetadata'
  { _dmModifiedTimestamp ::
      !(Maybe POSIX),
    _dmParentFolderId :: !(Maybe Text),
    _dmCreatorId :: !(Maybe Text),
    _dmCreatedTimestamp :: !(Maybe POSIX),
    _dmId :: !(Maybe Text),
    _dmLabels :: !(Maybe [Text]),
    _dmLatestVersionMetadata ::
      !(Maybe DocumentVersionMetadata),
    _dmResourceState ::
      !(Maybe ResourceStateType)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmModifiedTimestamp' - The time when the document was updated.
--
-- * 'dmParentFolderId' - The ID of the parent folder.
--
-- * 'dmCreatorId' - The ID of the creator.
--
-- * 'dmCreatedTimestamp' - The time when the document was created.
--
-- * 'dmId' - The ID of the document.
--
-- * 'dmLabels' - List of labels on the document.
--
-- * 'dmLatestVersionMetadata' - The latest version of the document.
--
-- * 'dmResourceState' - The resource state.
documentMetadata ::
  DocumentMetadata
documentMetadata =
  DocumentMetadata'
    { _dmModifiedTimestamp = Nothing,
      _dmParentFolderId = Nothing,
      _dmCreatorId = Nothing,
      _dmCreatedTimestamp = Nothing,
      _dmId = Nothing,
      _dmLabels = Nothing,
      _dmLatestVersionMetadata = Nothing,
      _dmResourceState = Nothing
    }

-- | The time when the document was updated.
dmModifiedTimestamp :: Lens' DocumentMetadata (Maybe UTCTime)
dmModifiedTimestamp = lens _dmModifiedTimestamp (\s a -> s {_dmModifiedTimestamp = a}) . mapping _Time

-- | The ID of the parent folder.
dmParentFolderId :: Lens' DocumentMetadata (Maybe Text)
dmParentFolderId = lens _dmParentFolderId (\s a -> s {_dmParentFolderId = a})

-- | The ID of the creator.
dmCreatorId :: Lens' DocumentMetadata (Maybe Text)
dmCreatorId = lens _dmCreatorId (\s a -> s {_dmCreatorId = a})

-- | The time when the document was created.
dmCreatedTimestamp :: Lens' DocumentMetadata (Maybe UTCTime)
dmCreatedTimestamp = lens _dmCreatedTimestamp (\s a -> s {_dmCreatedTimestamp = a}) . mapping _Time

-- | The ID of the document.
dmId :: Lens' DocumentMetadata (Maybe Text)
dmId = lens _dmId (\s a -> s {_dmId = a})

-- | List of labels on the document.
dmLabels :: Lens' DocumentMetadata [Text]
dmLabels = lens _dmLabels (\s a -> s {_dmLabels = a}) . _Default . _Coerce

-- | The latest version of the document.
dmLatestVersionMetadata :: Lens' DocumentMetadata (Maybe DocumentVersionMetadata)
dmLatestVersionMetadata = lens _dmLatestVersionMetadata (\s a -> s {_dmLatestVersionMetadata = a})

-- | The resource state.
dmResourceState :: Lens' DocumentMetadata (Maybe ResourceStateType)
dmResourceState = lens _dmResourceState (\s a -> s {_dmResourceState = a})

instance FromJSON DocumentMetadata where
  parseJSON =
    withObject
      "DocumentMetadata"
      ( \x ->
          DocumentMetadata'
            <$> (x .:? "ModifiedTimestamp")
            <*> (x .:? "ParentFolderId")
            <*> (x .:? "CreatorId")
            <*> (x .:? "CreatedTimestamp")
            <*> (x .:? "Id")
            <*> (x .:? "Labels" .!= mempty)
            <*> (x .:? "LatestVersionMetadata")
            <*> (x .:? "ResourceState")
      )

instance Hashable DocumentMetadata

instance NFData DocumentMetadata
