{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.SchemaExtensionInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SchemaExtensionInfo where

import Network.AWS.DirectoryService.Types.SchemaExtensionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a schema extension.
--
--
--
-- /See:/ 'schemaExtensionInfo' smart constructor.
data SchemaExtensionInfo = SchemaExtensionInfo'
  { _seiSchemaExtensionStatus ::
      !(Maybe SchemaExtensionStatus),
    _seiStartDateTime ::
      !(Maybe POSIX),
    _seiSchemaExtensionId ::
      !(Maybe Text),
    _seiDirectoryId ::
      !(Maybe Text),
    _seiEndDateTime ::
      !(Maybe POSIX),
    _seiDescription ::
      !(Maybe Text),
    _seiSchemaExtensionStatusReason ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SchemaExtensionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seiSchemaExtensionStatus' - The current status of the schema extension.
--
-- * 'seiStartDateTime' - The date and time that the schema extension started being applied to the directory.
--
-- * 'seiSchemaExtensionId' - The identifier of the schema extension.
--
-- * 'seiDirectoryId' - The identifier of the directory to which the schema extension is applied.
--
-- * 'seiEndDateTime' - The date and time that the schema extension was completed.
--
-- * 'seiDescription' - A description of the schema extension.
--
-- * 'seiSchemaExtensionStatusReason' - The reason for the @SchemaExtensionStatus@ .
schemaExtensionInfo ::
  SchemaExtensionInfo
schemaExtensionInfo =
  SchemaExtensionInfo'
    { _seiSchemaExtensionStatus =
        Nothing,
      _seiStartDateTime = Nothing,
      _seiSchemaExtensionId = Nothing,
      _seiDirectoryId = Nothing,
      _seiEndDateTime = Nothing,
      _seiDescription = Nothing,
      _seiSchemaExtensionStatusReason = Nothing
    }

-- | The current status of the schema extension.
seiSchemaExtensionStatus :: Lens' SchemaExtensionInfo (Maybe SchemaExtensionStatus)
seiSchemaExtensionStatus = lens _seiSchemaExtensionStatus (\s a -> s {_seiSchemaExtensionStatus = a})

-- | The date and time that the schema extension started being applied to the directory.
seiStartDateTime :: Lens' SchemaExtensionInfo (Maybe UTCTime)
seiStartDateTime = lens _seiStartDateTime (\s a -> s {_seiStartDateTime = a}) . mapping _Time

-- | The identifier of the schema extension.
seiSchemaExtensionId :: Lens' SchemaExtensionInfo (Maybe Text)
seiSchemaExtensionId = lens _seiSchemaExtensionId (\s a -> s {_seiSchemaExtensionId = a})

-- | The identifier of the directory to which the schema extension is applied.
seiDirectoryId :: Lens' SchemaExtensionInfo (Maybe Text)
seiDirectoryId = lens _seiDirectoryId (\s a -> s {_seiDirectoryId = a})

-- | The date and time that the schema extension was completed.
seiEndDateTime :: Lens' SchemaExtensionInfo (Maybe UTCTime)
seiEndDateTime = lens _seiEndDateTime (\s a -> s {_seiEndDateTime = a}) . mapping _Time

-- | A description of the schema extension.
seiDescription :: Lens' SchemaExtensionInfo (Maybe Text)
seiDescription = lens _seiDescription (\s a -> s {_seiDescription = a})

-- | The reason for the @SchemaExtensionStatus@ .
seiSchemaExtensionStatusReason :: Lens' SchemaExtensionInfo (Maybe Text)
seiSchemaExtensionStatusReason = lens _seiSchemaExtensionStatusReason (\s a -> s {_seiSchemaExtensionStatusReason = a})

instance FromJSON SchemaExtensionInfo where
  parseJSON =
    withObject
      "SchemaExtensionInfo"
      ( \x ->
          SchemaExtensionInfo'
            <$> (x .:? "SchemaExtensionStatus")
            <*> (x .:? "StartDateTime")
            <*> (x .:? "SchemaExtensionId")
            <*> (x .:? "DirectoryId")
            <*> (x .:? "EndDateTime")
            <*> (x .:? "Description")
            <*> (x .:? "SchemaExtensionStatusReason")
      )

instance Hashable SchemaExtensionInfo

instance NFData SchemaExtensionInfo
