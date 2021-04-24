{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabaseSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabaseSnapshot where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Lightsail.Types.Tag
import Network.AWS.Prelude

-- | Describes a database snapshot.
--
--
--
-- /See:/ 'relationalDatabaseSnapshot' smart constructor.
data RelationalDatabaseSnapshot = RelationalDatabaseSnapshot'
  { _rdsFromRelationalDatabaseName ::
      !(Maybe Text),
    _rdsCreatedAt ::
      !(Maybe POSIX),
    _rdsArn ::
      !(Maybe Text),
    _rdsResourceType ::
      !( Maybe
           ResourceType
       ),
    _rdsSupportCode ::
      !(Maybe Text),
    _rdsSizeInGb ::
      !(Maybe Int),
    _rdsState ::
      !(Maybe Text),
    _rdsName ::
      !(Maybe Text),
    _rdsEngineVersion ::
      !(Maybe Text),
    _rdsFromRelationalDatabaseBundleId ::
      !(Maybe Text),
    _rdsTags ::
      !(Maybe [Tag]),
    _rdsEngine ::
      !(Maybe Text),
    _rdsFromRelationalDatabaseARN ::
      !(Maybe Text),
    _rdsLocation ::
      !( Maybe
           ResourceLocation
       ),
    _rdsFromRelationalDatabaseBlueprintId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RelationalDatabaseSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdsFromRelationalDatabaseName' - The name of the source database from which the database snapshot was created.
--
-- * 'rdsCreatedAt' - The timestamp when the database snapshot was created.
--
-- * 'rdsArn' - The Amazon Resource Name (ARN) of the database snapshot.
--
-- * 'rdsResourceType' - The Lightsail resource type.
--
-- * 'rdsSupportCode' - The support code for the database snapshot. Include this code in your email to support when you have questions about a database snapshot in Lightsail. This code enables our support team to look up your Lightsail information more easily.
--
-- * 'rdsSizeInGb' - The size of the disk in GB (for example, @32@ ) for the database snapshot.
--
-- * 'rdsState' - The state of the database snapshot.
--
-- * 'rdsName' - The name of the database snapshot.
--
-- * 'rdsEngineVersion' - The database engine version for the database snapshot (for example, @5.7.23@ ).
--
-- * 'rdsFromRelationalDatabaseBundleId' - The bundle ID of the database from which the database snapshot was created.
--
-- * 'rdsTags' - The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
--
-- * 'rdsEngine' - The software of the database snapshot (for example, @MySQL@ )
--
-- * 'rdsFromRelationalDatabaseARN' - The Amazon Resource Name (ARN) of the database from which the database snapshot was created.
--
-- * 'rdsLocation' - The Region name and Availability Zone where the database snapshot is located.
--
-- * 'rdsFromRelationalDatabaseBlueprintId' - The blueprint ID of the database from which the database snapshot was created. A blueprint describes the major engine version of a database.
relationalDatabaseSnapshot ::
  RelationalDatabaseSnapshot
relationalDatabaseSnapshot =
  RelationalDatabaseSnapshot'
    { _rdsFromRelationalDatabaseName =
        Nothing,
      _rdsCreatedAt = Nothing,
      _rdsArn = Nothing,
      _rdsResourceType = Nothing,
      _rdsSupportCode = Nothing,
      _rdsSizeInGb = Nothing,
      _rdsState = Nothing,
      _rdsName = Nothing,
      _rdsEngineVersion = Nothing,
      _rdsFromRelationalDatabaseBundleId = Nothing,
      _rdsTags = Nothing,
      _rdsEngine = Nothing,
      _rdsFromRelationalDatabaseARN = Nothing,
      _rdsLocation = Nothing,
      _rdsFromRelationalDatabaseBlueprintId = Nothing
    }

-- | The name of the source database from which the database snapshot was created.
rdsFromRelationalDatabaseName :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsFromRelationalDatabaseName = lens _rdsFromRelationalDatabaseName (\s a -> s {_rdsFromRelationalDatabaseName = a})

-- | The timestamp when the database snapshot was created.
rdsCreatedAt :: Lens' RelationalDatabaseSnapshot (Maybe UTCTime)
rdsCreatedAt = lens _rdsCreatedAt (\s a -> s {_rdsCreatedAt = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the database snapshot.
rdsArn :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsArn = lens _rdsArn (\s a -> s {_rdsArn = a})

-- | The Lightsail resource type.
rdsResourceType :: Lens' RelationalDatabaseSnapshot (Maybe ResourceType)
rdsResourceType = lens _rdsResourceType (\s a -> s {_rdsResourceType = a})

-- | The support code for the database snapshot. Include this code in your email to support when you have questions about a database snapshot in Lightsail. This code enables our support team to look up your Lightsail information more easily.
rdsSupportCode :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsSupportCode = lens _rdsSupportCode (\s a -> s {_rdsSupportCode = a})

-- | The size of the disk in GB (for example, @32@ ) for the database snapshot.
rdsSizeInGb :: Lens' RelationalDatabaseSnapshot (Maybe Int)
rdsSizeInGb = lens _rdsSizeInGb (\s a -> s {_rdsSizeInGb = a})

-- | The state of the database snapshot.
rdsState :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsState = lens _rdsState (\s a -> s {_rdsState = a})

-- | The name of the database snapshot.
rdsName :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsName = lens _rdsName (\s a -> s {_rdsName = a})

-- | The database engine version for the database snapshot (for example, @5.7.23@ ).
rdsEngineVersion :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsEngineVersion = lens _rdsEngineVersion (\s a -> s {_rdsEngineVersion = a})

-- | The bundle ID of the database from which the database snapshot was created.
rdsFromRelationalDatabaseBundleId :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsFromRelationalDatabaseBundleId = lens _rdsFromRelationalDatabaseBundleId (\s a -> s {_rdsFromRelationalDatabaseBundleId = a})

-- | The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
rdsTags :: Lens' RelationalDatabaseSnapshot [Tag]
rdsTags = lens _rdsTags (\s a -> s {_rdsTags = a}) . _Default . _Coerce

-- | The software of the database snapshot (for example, @MySQL@ )
rdsEngine :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsEngine = lens _rdsEngine (\s a -> s {_rdsEngine = a})

-- | The Amazon Resource Name (ARN) of the database from which the database snapshot was created.
rdsFromRelationalDatabaseARN :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsFromRelationalDatabaseARN = lens _rdsFromRelationalDatabaseARN (\s a -> s {_rdsFromRelationalDatabaseARN = a})

-- | The Region name and Availability Zone where the database snapshot is located.
rdsLocation :: Lens' RelationalDatabaseSnapshot (Maybe ResourceLocation)
rdsLocation = lens _rdsLocation (\s a -> s {_rdsLocation = a})

-- | The blueprint ID of the database from which the database snapshot was created. A blueprint describes the major engine version of a database.
rdsFromRelationalDatabaseBlueprintId :: Lens' RelationalDatabaseSnapshot (Maybe Text)
rdsFromRelationalDatabaseBlueprintId = lens _rdsFromRelationalDatabaseBlueprintId (\s a -> s {_rdsFromRelationalDatabaseBlueprintId = a})

instance FromJSON RelationalDatabaseSnapshot where
  parseJSON =
    withObject
      "RelationalDatabaseSnapshot"
      ( \x ->
          RelationalDatabaseSnapshot'
            <$> (x .:? "fromRelationalDatabaseName")
            <*> (x .:? "createdAt")
            <*> (x .:? "arn")
            <*> (x .:? "resourceType")
            <*> (x .:? "supportCode")
            <*> (x .:? "sizeInGb")
            <*> (x .:? "state")
            <*> (x .:? "name")
            <*> (x .:? "engineVersion")
            <*> (x .:? "fromRelationalDatabaseBundleId")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "engine")
            <*> (x .:? "fromRelationalDatabaseArn")
            <*> (x .:? "location")
            <*> (x .:? "fromRelationalDatabaseBlueprintId")
      )

instance Hashable RelationalDatabaseSnapshot

instance NFData RelationalDatabaseSnapshot
