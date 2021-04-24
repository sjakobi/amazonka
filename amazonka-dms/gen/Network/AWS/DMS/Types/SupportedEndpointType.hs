{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.SupportedEndpointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.SupportedEndpointType where

import Network.AWS.DMS.Types.ReplicationEndpointTypeValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about types of supported endpoints in response to a request by the @DescribeEndpointTypes@ operation. This information includes the type of endpoint, the database engine name, and whether change data capture (CDC) is supported.
--
--
--
-- /See:/ 'supportedEndpointType' smart constructor.
data SupportedEndpointType = SupportedEndpointType'
  { _setReplicationInstanceEngineMinimumVersion ::
      !(Maybe Text),
    _setEngineName ::
      !(Maybe Text),
    _setEndpointType ::
      !( Maybe
           ReplicationEndpointTypeValue
       ),
    _setSupportsCDC ::
      !(Maybe Bool),
    _setEngineDisplayName ::
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

-- | Creates a value of 'SupportedEndpointType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setReplicationInstanceEngineMinimumVersion' - The earliest AWS DMS engine version that supports this endpoint engine. Note that endpoint engines released with AWS DMS versions earlier than 3.1.1 do not return a value for this parameter.
--
-- * 'setEngineName' - The database engine name. Valid values, depending on the EndpointType, include @"mysql"@ , @"oracle"@ , @"postgres"@ , @"mariadb"@ , @"aurora"@ , @"aurora-postgresql"@ , @"redshift"@ , @"s3"@ , @"db2"@ , @"azuredb"@ , @"sybase"@ , @"dynamodb"@ , @"mongodb"@ , @"kinesis"@ , @"kafka"@ , @"elasticsearch"@ , @"documentdb"@ , @"sqlserver"@ , and @"neptune"@ .
--
-- * 'setEndpointType' - The type of endpoint. Valid values are @source@ and @target@ .
--
-- * 'setSupportsCDC' - Indicates if Change Data Capture (CDC) is supported.
--
-- * 'setEngineDisplayName' - The expanded name for the engine name. For example, if the @EngineName@ parameter is "aurora," this value would be "Amazon Aurora MySQL."
supportedEndpointType ::
  SupportedEndpointType
supportedEndpointType =
  SupportedEndpointType'
    { _setReplicationInstanceEngineMinimumVersion =
        Nothing,
      _setEngineName = Nothing,
      _setEndpointType = Nothing,
      _setSupportsCDC = Nothing,
      _setEngineDisplayName = Nothing
    }

-- | The earliest AWS DMS engine version that supports this endpoint engine. Note that endpoint engines released with AWS DMS versions earlier than 3.1.1 do not return a value for this parameter.
setReplicationInstanceEngineMinimumVersion :: Lens' SupportedEndpointType (Maybe Text)
setReplicationInstanceEngineMinimumVersion = lens _setReplicationInstanceEngineMinimumVersion (\s a -> s {_setReplicationInstanceEngineMinimumVersion = a})

-- | The database engine name. Valid values, depending on the EndpointType, include @"mysql"@ , @"oracle"@ , @"postgres"@ , @"mariadb"@ , @"aurora"@ , @"aurora-postgresql"@ , @"redshift"@ , @"s3"@ , @"db2"@ , @"azuredb"@ , @"sybase"@ , @"dynamodb"@ , @"mongodb"@ , @"kinesis"@ , @"kafka"@ , @"elasticsearch"@ , @"documentdb"@ , @"sqlserver"@ , and @"neptune"@ .
setEngineName :: Lens' SupportedEndpointType (Maybe Text)
setEngineName = lens _setEngineName (\s a -> s {_setEngineName = a})

-- | The type of endpoint. Valid values are @source@ and @target@ .
setEndpointType :: Lens' SupportedEndpointType (Maybe ReplicationEndpointTypeValue)
setEndpointType = lens _setEndpointType (\s a -> s {_setEndpointType = a})

-- | Indicates if Change Data Capture (CDC) is supported.
setSupportsCDC :: Lens' SupportedEndpointType (Maybe Bool)
setSupportsCDC = lens _setSupportsCDC (\s a -> s {_setSupportsCDC = a})

-- | The expanded name for the engine name. For example, if the @EngineName@ parameter is "aurora," this value would be "Amazon Aurora MySQL."
setEngineDisplayName :: Lens' SupportedEndpointType (Maybe Text)
setEngineDisplayName = lens _setEngineDisplayName (\s a -> s {_setEngineDisplayName = a})

instance FromJSON SupportedEndpointType where
  parseJSON =
    withObject
      "SupportedEndpointType"
      ( \x ->
          SupportedEndpointType'
            <$> (x .:? "ReplicationInstanceEngineMinimumVersion")
            <*> (x .:? "EngineName")
            <*> (x .:? "EndpointType")
            <*> (x .:? "SupportsCDC")
            <*> (x .:? "EngineDisplayName")
      )

instance Hashable SupportedEndpointType

instance NFData SupportedEndpointType
