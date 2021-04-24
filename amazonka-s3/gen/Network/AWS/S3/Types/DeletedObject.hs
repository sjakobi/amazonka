{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.DeletedObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.DeletedObject where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | Information about the deleted object.
--
--
--
-- /See:/ 'deletedObject' smart constructor.
data DeletedObject = DeletedObject'
  { _doKey ::
      !(Maybe ObjectKey),
    _doDeleteMarkerVersionId :: !(Maybe Text),
    _doDeleteMarker :: !(Maybe Bool),
    _doVersionId :: !(Maybe ObjectVersionId)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletedObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doKey' - The name of the deleted object.
--
-- * 'doDeleteMarkerVersionId' - The version ID of the delete marker created as a result of the DELETE operation. If you delete a specific object version, the value returned by this header is the version ID of the object version deleted.
--
-- * 'doDeleteMarker' - Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker. In a simple DELETE, this header indicates whether (true) or not (false) a delete marker was created.
--
-- * 'doVersionId' - The version ID of the deleted object.
deletedObject ::
  DeletedObject
deletedObject =
  DeletedObject'
    { _doKey = Nothing,
      _doDeleteMarkerVersionId = Nothing,
      _doDeleteMarker = Nothing,
      _doVersionId = Nothing
    }

-- | The name of the deleted object.
doKey :: Lens' DeletedObject (Maybe ObjectKey)
doKey = lens _doKey (\s a -> s {_doKey = a})

-- | The version ID of the delete marker created as a result of the DELETE operation. If you delete a specific object version, the value returned by this header is the version ID of the object version deleted.
doDeleteMarkerVersionId :: Lens' DeletedObject (Maybe Text)
doDeleteMarkerVersionId = lens _doDeleteMarkerVersionId (\s a -> s {_doDeleteMarkerVersionId = a})

-- | Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker. In a simple DELETE, this header indicates whether (true) or not (false) a delete marker was created.
doDeleteMarker :: Lens' DeletedObject (Maybe Bool)
doDeleteMarker = lens _doDeleteMarker (\s a -> s {_doDeleteMarker = a})

-- | The version ID of the deleted object.
doVersionId :: Lens' DeletedObject (Maybe ObjectVersionId)
doVersionId = lens _doVersionId (\s a -> s {_doVersionId = a})

instance FromXML DeletedObject where
  parseXML x =
    DeletedObject'
      <$> (x .@? "Key")
      <*> (x .@? "DeleteMarkerVersionId")
      <*> (x .@? "DeleteMarker")
      <*> (x .@? "VersionId")

instance Hashable DeletedObject

instance NFData DeletedObject
