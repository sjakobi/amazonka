{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.DeleteMarkerEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.DeleteMarkerEntry where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.Owner

-- | Information about the delete marker.
--
--
--
-- /See:/ 'deleteMarkerEntry' smart constructor.
data DeleteMarkerEntry = DeleteMarkerEntry'
  { _dmeKey ::
      !(Maybe ObjectKey),
    _dmeIsLatest :: !(Maybe Bool),
    _dmeVersionId ::
      !(Maybe ObjectVersionId),
    _dmeOwner :: !(Maybe Owner),
    _dmeLastModified ::
      !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteMarkerEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmeKey' - The object key.
--
-- * 'dmeIsLatest' - Specifies whether the object is (true) or is not (false) the latest version of an object.
--
-- * 'dmeVersionId' - Version ID of an object.
--
-- * 'dmeOwner' - The account that created the delete marker.>
--
-- * 'dmeLastModified' - Date and time the object was last modified.
deleteMarkerEntry ::
  DeleteMarkerEntry
deleteMarkerEntry =
  DeleteMarkerEntry'
    { _dmeKey = Nothing,
      _dmeIsLatest = Nothing,
      _dmeVersionId = Nothing,
      _dmeOwner = Nothing,
      _dmeLastModified = Nothing
    }

-- | The object key.
dmeKey :: Lens' DeleteMarkerEntry (Maybe ObjectKey)
dmeKey = lens _dmeKey (\s a -> s {_dmeKey = a})

-- | Specifies whether the object is (true) or is not (false) the latest version of an object.
dmeIsLatest :: Lens' DeleteMarkerEntry (Maybe Bool)
dmeIsLatest = lens _dmeIsLatest (\s a -> s {_dmeIsLatest = a})

-- | Version ID of an object.
dmeVersionId :: Lens' DeleteMarkerEntry (Maybe ObjectVersionId)
dmeVersionId = lens _dmeVersionId (\s a -> s {_dmeVersionId = a})

-- | The account that created the delete marker.>
dmeOwner :: Lens' DeleteMarkerEntry (Maybe Owner)
dmeOwner = lens _dmeOwner (\s a -> s {_dmeOwner = a})

-- | Date and time the object was last modified.
dmeLastModified :: Lens' DeleteMarkerEntry (Maybe UTCTime)
dmeLastModified = lens _dmeLastModified (\s a -> s {_dmeLastModified = a}) . mapping _Time

instance FromXML DeleteMarkerEntry where
  parseXML x =
    DeleteMarkerEntry'
      <$> (x .@? "Key")
      <*> (x .@? "IsLatest")
      <*> (x .@? "VersionId")
      <*> (x .@? "Owner")
      <*> (x .@? "LastModified")

instance Hashable DeleteMarkerEntry

instance NFData DeleteMarkerEntry
