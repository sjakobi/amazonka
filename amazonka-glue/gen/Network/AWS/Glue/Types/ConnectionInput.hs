{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ConnectionInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ConnectionInput where

import Network.AWS.Glue.Types.ConnectionPropertyKey
import Network.AWS.Glue.Types.ConnectionType
import Network.AWS.Glue.Types.PhysicalConnectionRequirements
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure that is used to specify a connection to create or update.
--
--
--
-- /See:/ 'connectionInput' smart constructor.
data ConnectionInput = ConnectionInput'
  { _ciPhysicalConnectionRequirements ::
      !(Maybe PhysicalConnectionRequirements),
    _ciDescription :: !(Maybe Text),
    _ciMatchCriteria :: !(Maybe [Text]),
    _ciName :: !Text,
    _ciConnectionType :: !ConnectionType,
    _ciConnectionProperties ::
      !(Map ConnectionPropertyKey Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConnectionInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciPhysicalConnectionRequirements' - A map of physical connection requirements, such as virtual private cloud (VPC) and @SecurityGroup@ , that are needed to successfully make this connection.
--
-- * 'ciDescription' - The description of the connection.
--
-- * 'ciMatchCriteria' - A list of criteria that can be used in selecting this connection.
--
-- * 'ciName' - The name of the connection.
--
-- * 'ciConnectionType' - The type of the connection. Currently, these types are supported:     * @JDBC@ - Designates a connection to a database through Java Database Connectivity (JDBC).     * @KAFKA@ - Designates a connection to an Apache Kafka streaming platform.     * @MONGODB@ - Designates a connection to a MongoDB document database.     * @NETWORK@ - Designates a network connection to a data source within an Amazon Virtual Private Cloud environment (Amazon VPC).     * @MARKETPLACE@ - Uses configuration settings contained in a connector purchased from AWS Marketplace to read from and write to data stores that are not natively supported by AWS Glue.     * @CUSTOM@ - Uses configuration settings contained in a custom connector to read from and write to data stores that are not natively supported by AWS Glue. SFTP is not supported.
--
-- * 'ciConnectionProperties' - These key-value pairs define parameters for the connection.
connectionInput ::
  -- | 'ciName'
  Text ->
  -- | 'ciConnectionType'
  ConnectionType ->
  ConnectionInput
connectionInput pName_ pConnectionType_ =
  ConnectionInput'
    { _ciPhysicalConnectionRequirements =
        Nothing,
      _ciDescription = Nothing,
      _ciMatchCriteria = Nothing,
      _ciName = pName_,
      _ciConnectionType = pConnectionType_,
      _ciConnectionProperties = mempty
    }

-- | A map of physical connection requirements, such as virtual private cloud (VPC) and @SecurityGroup@ , that are needed to successfully make this connection.
ciPhysicalConnectionRequirements :: Lens' ConnectionInput (Maybe PhysicalConnectionRequirements)
ciPhysicalConnectionRequirements = lens _ciPhysicalConnectionRequirements (\s a -> s {_ciPhysicalConnectionRequirements = a})

-- | The description of the connection.
ciDescription :: Lens' ConnectionInput (Maybe Text)
ciDescription = lens _ciDescription (\s a -> s {_ciDescription = a})

-- | A list of criteria that can be used in selecting this connection.
ciMatchCriteria :: Lens' ConnectionInput [Text]
ciMatchCriteria = lens _ciMatchCriteria (\s a -> s {_ciMatchCriteria = a}) . _Default . _Coerce

-- | The name of the connection.
ciName :: Lens' ConnectionInput Text
ciName = lens _ciName (\s a -> s {_ciName = a})

-- | The type of the connection. Currently, these types are supported:     * @JDBC@ - Designates a connection to a database through Java Database Connectivity (JDBC).     * @KAFKA@ - Designates a connection to an Apache Kafka streaming platform.     * @MONGODB@ - Designates a connection to a MongoDB document database.     * @NETWORK@ - Designates a network connection to a data source within an Amazon Virtual Private Cloud environment (Amazon VPC).     * @MARKETPLACE@ - Uses configuration settings contained in a connector purchased from AWS Marketplace to read from and write to data stores that are not natively supported by AWS Glue.     * @CUSTOM@ - Uses configuration settings contained in a custom connector to read from and write to data stores that are not natively supported by AWS Glue. SFTP is not supported.
ciConnectionType :: Lens' ConnectionInput ConnectionType
ciConnectionType = lens _ciConnectionType (\s a -> s {_ciConnectionType = a})

-- | These key-value pairs define parameters for the connection.
ciConnectionProperties :: Lens' ConnectionInput (HashMap ConnectionPropertyKey Text)
ciConnectionProperties = lens _ciConnectionProperties (\s a -> s {_ciConnectionProperties = a}) . _Map

instance Hashable ConnectionInput

instance NFData ConnectionInput

instance ToJSON ConnectionInput where
  toJSON ConnectionInput' {..} =
    object
      ( catMaybes
          [ ("PhysicalConnectionRequirements" .=)
              <$> _ciPhysicalConnectionRequirements,
            ("Description" .=) <$> _ciDescription,
            ("MatchCriteria" .=) <$> _ciMatchCriteria,
            Just ("Name" .= _ciName),
            Just ("ConnectionType" .= _ciConnectionType),
            Just
              ("ConnectionProperties" .= _ciConnectionProperties)
          ]
      )
