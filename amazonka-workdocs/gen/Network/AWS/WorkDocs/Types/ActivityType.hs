{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.ActivityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ActivityType
  ( ActivityType
      ( ..,
        DocumentAnnotationAdded,
        DocumentAnnotationDeleted,
        DocumentCheckedIn,
        DocumentCheckedOut,
        DocumentCommentAdded,
        DocumentCommentDeleted,
        DocumentMoved,
        DocumentRecycled,
        DocumentRenamed,
        DocumentRestored,
        DocumentReverted,
        DocumentSharePermissionChanged,
        DocumentShareableLinkCreated,
        DocumentShareableLinkPermissionChanged,
        DocumentShareableLinkRemoved,
        DocumentShared,
        DocumentUnshared,
        DocumentVersionDeleted,
        DocumentVersionDownloaded,
        DocumentVersionUploaded,
        DocumentVersionViewed,
        FolderCreated,
        FolderDeleted,
        FolderMoved,
        FolderRecycled,
        FolderRenamed,
        FolderRestored,
        FolderSharePermissionChanged,
        FolderShareableLinkCreated,
        FolderShareableLinkPermissionChanged,
        FolderShareableLinkRemoved,
        FolderShared,
        FolderUnshared
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActivityType = ActivityType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DocumentAnnotationAdded :: ActivityType
pattern DocumentAnnotationAdded = ActivityType' "DOCUMENT_ANNOTATION_ADDED"

pattern DocumentAnnotationDeleted :: ActivityType
pattern DocumentAnnotationDeleted = ActivityType' "DOCUMENT_ANNOTATION_DELETED"

pattern DocumentCheckedIn :: ActivityType
pattern DocumentCheckedIn = ActivityType' "DOCUMENT_CHECKED_IN"

pattern DocumentCheckedOut :: ActivityType
pattern DocumentCheckedOut = ActivityType' "DOCUMENT_CHECKED_OUT"

pattern DocumentCommentAdded :: ActivityType
pattern DocumentCommentAdded = ActivityType' "DOCUMENT_COMMENT_ADDED"

pattern DocumentCommentDeleted :: ActivityType
pattern DocumentCommentDeleted = ActivityType' "DOCUMENT_COMMENT_DELETED"

pattern DocumentMoved :: ActivityType
pattern DocumentMoved = ActivityType' "DOCUMENT_MOVED"

pattern DocumentRecycled :: ActivityType
pattern DocumentRecycled = ActivityType' "DOCUMENT_RECYCLED"

pattern DocumentRenamed :: ActivityType
pattern DocumentRenamed = ActivityType' "DOCUMENT_RENAMED"

pattern DocumentRestored :: ActivityType
pattern DocumentRestored = ActivityType' "DOCUMENT_RESTORED"

pattern DocumentReverted :: ActivityType
pattern DocumentReverted = ActivityType' "DOCUMENT_REVERTED"

pattern DocumentSharePermissionChanged :: ActivityType
pattern DocumentSharePermissionChanged = ActivityType' "DOCUMENT_SHARE_PERMISSION_CHANGED"

pattern DocumentShareableLinkCreated :: ActivityType
pattern DocumentShareableLinkCreated = ActivityType' "DOCUMENT_SHAREABLE_LINK_CREATED"

pattern DocumentShareableLinkPermissionChanged :: ActivityType
pattern DocumentShareableLinkPermissionChanged = ActivityType' "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED"

pattern DocumentShareableLinkRemoved :: ActivityType
pattern DocumentShareableLinkRemoved = ActivityType' "DOCUMENT_SHAREABLE_LINK_REMOVED"

pattern DocumentShared :: ActivityType
pattern DocumentShared = ActivityType' "DOCUMENT_SHARED"

pattern DocumentUnshared :: ActivityType
pattern DocumentUnshared = ActivityType' "DOCUMENT_UNSHARED"

pattern DocumentVersionDeleted :: ActivityType
pattern DocumentVersionDeleted = ActivityType' "DOCUMENT_VERSION_DELETED"

pattern DocumentVersionDownloaded :: ActivityType
pattern DocumentVersionDownloaded = ActivityType' "DOCUMENT_VERSION_DOWNLOADED"

pattern DocumentVersionUploaded :: ActivityType
pattern DocumentVersionUploaded = ActivityType' "DOCUMENT_VERSION_UPLOADED"

pattern DocumentVersionViewed :: ActivityType
pattern DocumentVersionViewed = ActivityType' "DOCUMENT_VERSION_VIEWED"

pattern FolderCreated :: ActivityType
pattern FolderCreated = ActivityType' "FOLDER_CREATED"

pattern FolderDeleted :: ActivityType
pattern FolderDeleted = ActivityType' "FOLDER_DELETED"

pattern FolderMoved :: ActivityType
pattern FolderMoved = ActivityType' "FOLDER_MOVED"

pattern FolderRecycled :: ActivityType
pattern FolderRecycled = ActivityType' "FOLDER_RECYCLED"

pattern FolderRenamed :: ActivityType
pattern FolderRenamed = ActivityType' "FOLDER_RENAMED"

pattern FolderRestored :: ActivityType
pattern FolderRestored = ActivityType' "FOLDER_RESTORED"

pattern FolderSharePermissionChanged :: ActivityType
pattern FolderSharePermissionChanged = ActivityType' "FOLDER_SHARE_PERMISSION_CHANGED"

pattern FolderShareableLinkCreated :: ActivityType
pattern FolderShareableLinkCreated = ActivityType' "FOLDER_SHAREABLE_LINK_CREATED"

pattern FolderShareableLinkPermissionChanged :: ActivityType
pattern FolderShareableLinkPermissionChanged = ActivityType' "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED"

pattern FolderShareableLinkRemoved :: ActivityType
pattern FolderShareableLinkRemoved = ActivityType' "FOLDER_SHAREABLE_LINK_REMOVED"

pattern FolderShared :: ActivityType
pattern FolderShared = ActivityType' "FOLDER_SHARED"

pattern FolderUnshared :: ActivityType
pattern FolderUnshared = ActivityType' "FOLDER_UNSHARED"

{-# COMPLETE
  DocumentAnnotationAdded,
  DocumentAnnotationDeleted,
  DocumentCheckedIn,
  DocumentCheckedOut,
  DocumentCommentAdded,
  DocumentCommentDeleted,
  DocumentMoved,
  DocumentRecycled,
  DocumentRenamed,
  DocumentRestored,
  DocumentReverted,
  DocumentSharePermissionChanged,
  DocumentShareableLinkCreated,
  DocumentShareableLinkPermissionChanged,
  DocumentShareableLinkRemoved,
  DocumentShared,
  DocumentUnshared,
  DocumentVersionDeleted,
  DocumentVersionDownloaded,
  DocumentVersionUploaded,
  DocumentVersionViewed,
  FolderCreated,
  FolderDeleted,
  FolderMoved,
  FolderRecycled,
  FolderRenamed,
  FolderRestored,
  FolderSharePermissionChanged,
  FolderShareableLinkCreated,
  FolderShareableLinkPermissionChanged,
  FolderShareableLinkRemoved,
  FolderShared,
  FolderUnshared,
  ActivityType'
  #-}

instance FromText ActivityType where
  parser = (ActivityType' . mk) <$> takeText

instance ToText ActivityType where
  toText (ActivityType' ci) = original ci

instance Hashable ActivityType

instance NFData ActivityType

instance ToByteString ActivityType

instance ToQuery ActivityType

instance ToHeader ActivityType

instance FromJSON ActivityType where
  parseJSON = parseJSONText "ActivityType"
