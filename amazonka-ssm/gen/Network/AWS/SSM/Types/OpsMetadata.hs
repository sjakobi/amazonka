{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Operational metadata for an application in Application Manager.
--
--
--
-- /See:/ 'opsMetadata' smart constructor.
data OpsMetadata = OpsMetadata'
  { _omResourceId ::
      !(Maybe Text),
    _omLastModifiedDate :: !(Maybe POSIX),
    _omOpsMetadataARN :: !(Maybe Text),
    _omCreationDate :: !(Maybe POSIX),
    _omLastModifiedUser :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OpsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omResourceId' - The ID of the Application Manager application.
--
-- * 'omLastModifiedDate' - The date the OpsMetadata object was last updated.
--
-- * 'omOpsMetadataARN' - The Amazon Resource Name (ARN) of the OpsMetadata Object or blob.
--
-- * 'omCreationDate' - The date the OpsMetadata objects was created.
--
-- * 'omLastModifiedUser' - The user name who last updated the OpsMetadata object.
opsMetadata ::
  OpsMetadata
opsMetadata =
  OpsMetadata'
    { _omResourceId = Nothing,
      _omLastModifiedDate = Nothing,
      _omOpsMetadataARN = Nothing,
      _omCreationDate = Nothing,
      _omLastModifiedUser = Nothing
    }

-- | The ID of the Application Manager application.
omResourceId :: Lens' OpsMetadata (Maybe Text)
omResourceId = lens _omResourceId (\s a -> s {_omResourceId = a})

-- | The date the OpsMetadata object was last updated.
omLastModifiedDate :: Lens' OpsMetadata (Maybe UTCTime)
omLastModifiedDate = lens _omLastModifiedDate (\s a -> s {_omLastModifiedDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the OpsMetadata Object or blob.
omOpsMetadataARN :: Lens' OpsMetadata (Maybe Text)
omOpsMetadataARN = lens _omOpsMetadataARN (\s a -> s {_omOpsMetadataARN = a})

-- | The date the OpsMetadata objects was created.
omCreationDate :: Lens' OpsMetadata (Maybe UTCTime)
omCreationDate = lens _omCreationDate (\s a -> s {_omCreationDate = a}) . mapping _Time

-- | The user name who last updated the OpsMetadata object.
omLastModifiedUser :: Lens' OpsMetadata (Maybe Text)
omLastModifiedUser = lens _omLastModifiedUser (\s a -> s {_omLastModifiedUser = a})

instance FromJSON OpsMetadata where
  parseJSON =
    withObject
      "OpsMetadata"
      ( \x ->
          OpsMetadata'
            <$> (x .:? "ResourceId")
            <*> (x .:? "LastModifiedDate")
            <*> (x .:? "OpsMetadataArn")
            <*> (x .:? "CreationDate")
            <*> (x .:? "LastModifiedUser")
      )

instance Hashable OpsMetadata

instance NFData OpsMetadata
