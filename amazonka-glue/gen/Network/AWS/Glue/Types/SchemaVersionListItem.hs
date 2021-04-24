{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SchemaVersionListItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaVersionListItem where

import Network.AWS.Glue.Types.SchemaVersionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object containing the details about a schema version.
--
--
--
-- /See:/ 'schemaVersionListItem' smart constructor.
data SchemaVersionListItem = SchemaVersionListItem'
  { _svliSchemaARN ::
      !(Maybe Text),
    _svliStatus ::
      !( Maybe
           SchemaVersionStatus
       ),
    _svliSchemaVersionId ::
      !(Maybe Text),
    _svliCreatedTime ::
      !(Maybe Text),
    _svliVersionNumber ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SchemaVersionListItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svliSchemaARN' - The Amazon Resource Name (ARN) of the schema.
--
-- * 'svliStatus' - The status of the schema version.
--
-- * 'svliSchemaVersionId' - The unique identifier of the schema version.
--
-- * 'svliCreatedTime' - The date and time the schema version was created.
--
-- * 'svliVersionNumber' - The version number of the schema.
schemaVersionListItem ::
  SchemaVersionListItem
schemaVersionListItem =
  SchemaVersionListItem'
    { _svliSchemaARN = Nothing,
      _svliStatus = Nothing,
      _svliSchemaVersionId = Nothing,
      _svliCreatedTime = Nothing,
      _svliVersionNumber = Nothing
    }

-- | The Amazon Resource Name (ARN) of the schema.
svliSchemaARN :: Lens' SchemaVersionListItem (Maybe Text)
svliSchemaARN = lens _svliSchemaARN (\s a -> s {_svliSchemaARN = a})

-- | The status of the schema version.
svliStatus :: Lens' SchemaVersionListItem (Maybe SchemaVersionStatus)
svliStatus = lens _svliStatus (\s a -> s {_svliStatus = a})

-- | The unique identifier of the schema version.
svliSchemaVersionId :: Lens' SchemaVersionListItem (Maybe Text)
svliSchemaVersionId = lens _svliSchemaVersionId (\s a -> s {_svliSchemaVersionId = a})

-- | The date and time the schema version was created.
svliCreatedTime :: Lens' SchemaVersionListItem (Maybe Text)
svliCreatedTime = lens _svliCreatedTime (\s a -> s {_svliCreatedTime = a})

-- | The version number of the schema.
svliVersionNumber :: Lens' SchemaVersionListItem (Maybe Natural)
svliVersionNumber = lens _svliVersionNumber (\s a -> s {_svliVersionNumber = a}) . mapping _Nat

instance FromJSON SchemaVersionListItem where
  parseJSON =
    withObject
      "SchemaVersionListItem"
      ( \x ->
          SchemaVersionListItem'
            <$> (x .:? "SchemaArn")
            <*> (x .:? "Status")
            <*> (x .:? "SchemaVersionId")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "VersionNumber")
      )

instance Hashable SchemaVersionListItem

instance NFData SchemaVersionListItem
